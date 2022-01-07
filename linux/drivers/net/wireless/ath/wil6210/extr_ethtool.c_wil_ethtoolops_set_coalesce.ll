; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_ethtool.c_wil_ethtoolops_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_ethtool.c_wil_ethtoolops_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.wil6210_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wil6210_priv.0*)* }
%struct.wil6210_priv.0 = type opaque

@.str = private unnamed_addr constant [49 x i8] c"ethtoolops_set_coalesce: rx %d usec, tx %d usec\0A\00", align 1
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"No IRQ coalescing in monitor mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WIL6210_ITR_TRSH_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Unsupported coalescing params. Raw command:\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DBG[MISC] coal \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @wil_ethtoolops_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_ethtoolops_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.wil6210_priv* @ndev_to_wil(%struct.net_device* %9)
  store %struct.wil6210_priv* %10, %struct.wil6210_priv** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %7, align 8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %15 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %29 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %2
  %33 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WIL6210_ITR_TRSH_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WIL6210_ITR_TRSH_MAX, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32
  br label %72

45:                                               ; preds = %38
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %50 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %55 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %57 = call i32 @wil_pm_runtime_get(%struct.wil6210_priv* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %45
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %80

62:                                               ; preds = %45
  %63 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %64 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.wil6210_priv.0*)*, i32 (%struct.wil6210_priv.0*)** %65, align 8
  %67 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %68 = bitcast %struct.wil6210_priv* %67 to %struct.wil6210_priv.0*
  %69 = call i32 %66(%struct.wil6210_priv.0* %68)
  %70 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %71 = call i32 @wil_pm_runtime_put(%struct.wil6210_priv* %70)
  store i32 0, i32* %3, align 4
  br label %80

72:                                               ; preds = %44
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %74 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %75, i32 16, i32 4, %struct.ethtool_coalesce* %76, i32 8, i32 0)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %62, %60, %27
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.wil6210_priv* @ndev_to_wil(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_pm_runtime_get(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_pm_runtime_put(%struct.wil6210_priv*) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, %struct.ethtool_coalesce*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
