; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_ts_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_ts_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.dpaa_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }
%struct.hwtstamp_config = type { i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i64 0, align 8
@HWTSTAMP_FILTER_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @dpaa_ts_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_ts_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpaa_priv*, align 8
  %9 = alloca %struct.hwtstamp_config, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dpaa_priv* %11, %struct.dpaa_priv** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @copy_from_user(%struct.hwtstamp_config* %9, i32 %14, i32 16)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %40 [
    i32 129, label %23
    i32 128, label %26
  ]

23:                                               ; preds = %20
  %24 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %25 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %43

26:                                               ; preds = %20
  %27 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %28 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %33 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %31(i32 %36, i32 1)
  %38 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %39 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %43

40:                                               ; preds = %20
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %79

43:                                               ; preds = %26, %23
  %44 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HWTSTAMP_FILTER_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %50 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %67

51:                                               ; preds = %43
  %52 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %53 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %58 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %56(i32 %61, i32 1)
  %63 = load %struct.dpaa_priv*, %struct.dpaa_priv** %8, align 8
  %64 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load i64, i64* @HWTSTAMP_FILTER_ALL, align 8
  %66 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %51, %48
  %68 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %69 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @copy_to_user(i32 %70, %struct.hwtstamp_config* %9, i32 16)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 0, %76 ]
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %40, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
