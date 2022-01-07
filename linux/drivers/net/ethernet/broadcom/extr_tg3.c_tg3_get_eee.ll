; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32 }
%struct.tg3 = type { i32, %struct.ethtool_eee, i32 }

@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Board does not support EEE!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @tg3_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.tg3*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.tg3* @netdev_priv(%struct.net_device* %7)
  store %struct.tg3* %8, %struct.tg3** %6, align 8
  %9 = load %struct.tg3*, %struct.tg3** %6, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.tg3*, %struct.tg3** %6, align 8
  %17 = getelementptr inbounds %struct.tg3, %struct.tg3* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netdev_warn(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %24 = load %struct.tg3*, %struct.tg3** %6, align 8
  %25 = getelementptr inbounds %struct.tg3, %struct.tg3* %24, i32 0, i32 1
  %26 = bitcast %struct.ethtool_eee* %23 to i8*
  %27 = bitcast %struct.ethtool_eee* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
