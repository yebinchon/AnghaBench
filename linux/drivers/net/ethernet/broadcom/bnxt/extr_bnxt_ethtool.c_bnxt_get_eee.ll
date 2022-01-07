; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i32, i64, i64, i32 }
%struct.bnxt = type { i32, %struct.ethtool_eee }

@BNXT_FLAG_EEE_CAP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @bnxt_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.bnxt*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnxt* @netdev_priv(%struct.net_device* %7)
  store %struct.bnxt* %8, %struct.bnxt** %6, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BNXT_FLAG_EEE_CAP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %20 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 1
  %22 = bitcast %struct.ethtool_eee* %19 to i8*
  %23 = bitcast %struct.ethtool_eee* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 40, i1 false)
  %24 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %34
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
