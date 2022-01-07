; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i8*, i8*, i32 }
%struct.bnxt = type { i32, i64 }

@BNXT_FLAG_WOL_CAP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @bnxt_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.bnxt*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnxt* @netdev_priv(%struct.net_device* %6)
  store %struct.bnxt* %7, %struct.bnxt** %5, align 8
  %8 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i8* null, i8** %9, align 8
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 2
  %14 = call i32 @memset(i32* %13, i32 0, i32 4)
  %15 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BNXT_FLAG_WOL_CAP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i8*, i8** @WAKE_MAGIC, align 8
  %23 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i8*, i8** @WAKE_MAGIC, align 8
  %31 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %21
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
