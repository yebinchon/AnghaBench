; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_set_hwtst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_set_hwtst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }
%struct.macb = type { i32, %struct.hwtstamp_config }

@TSTAMP_DISABLED = common dso_local global i32 0, align 4
@HW_DMA_CAP_PTP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@TSTAMP_ALL_FRAMES = common dso_local global i32 0, align 4
@TSTAMP_ALL_PTP_FRAMES = common dso_local global i32 0, align 4
@NCR = common dso_local global i32 0, align 4
@SRTSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gem_set_hwtst(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hwtstamp_config*, align 8
  %11 = alloca %struct.macb*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @TSTAMP_DISABLED, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @TSTAMP_DISABLED, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.macb* @netdev_priv(%struct.net_device* %15)
  store %struct.macb* %16, %struct.macb** %11, align 8
  %17 = load %struct.macb*, %struct.macb** %11, align 8
  %18 = getelementptr inbounds %struct.macb, %struct.macb* %17, i32 0, i32 1
  store %struct.hwtstamp_config* %18, %struct.hwtstamp_config** %10, align 8
  %19 = load %struct.macb*, %struct.macb** %11, align 8
  %20 = getelementptr inbounds %struct.macb, %struct.macb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HW_DMA_CAP_PTP, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %114

28:                                               ; preds = %3
  %29 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %30 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @copy_from_user(%struct.hwtstamp_config* %29, i32 %32, i32 16)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %114

38:                                               ; preds = %28
  %39 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %40 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %114

46:                                               ; preds = %38
  %47 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %48 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %61 [
    i32 130, label %50
    i32 128, label %51
    i32 129, label %59
  ]

50:                                               ; preds = %46
  br label %64

51:                                               ; preds = %46
  %52 = load %struct.macb*, %struct.macb** %11, align 8
  %53 = call i32 @gem_ptp_set_one_step_sync(%struct.macb* %52, i32 1)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %114

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %46, %58
  %60 = load i32, i32* @TSTAMP_ALL_FRAMES, align 4
  store i32 %60, i32* %8, align 4
  br label %64

61:                                               ; preds = %46
  %62 = load i32, i32* @ERANGE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %114

64:                                               ; preds = %59, %50
  %65 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %66 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %89 [
    i32 143, label %68
    i32 140, label %69
    i32 142, label %70
    i32 138, label %71
    i32 136, label %71
    i32 133, label %71
    i32 131, label %71
    i32 135, label %71
    i32 132, label %71
    i32 139, label %71
    i32 137, label %71
    i32 134, label %71
    i32 141, label %85
    i32 144, label %85
  ]

68:                                               ; preds = %64
  br label %94

69:                                               ; preds = %64
  br label %94

70:                                               ; preds = %64
  br label %94

71:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64
  %72 = load i32, i32* @TSTAMP_ALL_PTP_FRAMES, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %74 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %73, i32 0, i32 1
  store i32 138, i32* %74, align 4
  %75 = load %struct.macb*, %struct.macb** %11, align 8
  %76 = load i32, i32* @NCR, align 4
  %77 = call i32 @macb_readl(%struct.macb* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.macb*, %struct.macb** %11, align 8
  %79 = load i32, i32* @NCR, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @SRTSM, align 4
  %82 = call i32 @MACB_BIT(i32 %81)
  %83 = or i32 %80, %82
  %84 = call i32 @macb_writel(%struct.macb* %78, i32 %79, i32 %83)
  br label %94

85:                                               ; preds = %64, %64
  %86 = load i32, i32* @TSTAMP_ALL_FRAMES, align 4
  store i32 %86, i32* %9, align 4
  %87 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %88 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %87, i32 0, i32 1
  store i32 144, i32* %88, align 4
  br label %94

89:                                               ; preds = %64
  %90 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %91 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %90, i32 0, i32 1
  store i32 143, i32* %91, align 4
  %92 = load i32, i32* @ERANGE, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %114

94:                                               ; preds = %85, %71, %70, %69, %68
  %95 = load %struct.macb*, %struct.macb** %11, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @gem_ptp_set_ts_mode(%struct.macb* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @ERANGE, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %114

103:                                              ; preds = %94
  %104 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %105 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %108 = call i64 @copy_to_user(i32 %106, %struct.hwtstamp_config* %107, i32 16)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* @EFAULT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %114

113:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %110, %100, %89, %61, %55, %43, %35, %25
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @gem_ptp_set_one_step_sync(%struct.macb*, i32) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i64 @gem_ptp_set_ts_mode(%struct.macb*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
