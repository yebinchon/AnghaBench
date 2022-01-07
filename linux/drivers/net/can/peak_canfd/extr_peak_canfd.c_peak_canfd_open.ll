; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_peak_canfd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.peak_canfd_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"open_candev() failed, error %d\0A\00", align 1
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@PUCAN_OPTION_CANDFDISO = common dso_local global i32 0, align 4
@PUCAN_OPTION_ERROR = common dso_local global i32 0, align 4
@PUCAN_FLTSTD_ROW_IDX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @peak_canfd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peak_canfd_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.peak_canfd_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.peak_canfd_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.peak_canfd_priv* %7, %struct.peak_canfd_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @open_candev(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %18 = call i32 @pucan_set_reset_mode(%struct.peak_canfd_priv* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %83

22:                                               ; preds = %16
  %23 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %24 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %22
  %31 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %32 = getelementptr inbounds %struct.peak_canfd_priv, %struct.peak_canfd_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %40 = load i32, i32* @PUCAN_OPTION_CANDFDISO, align 4
  %41 = call i32 @pucan_clr_options(%struct.peak_canfd_priv* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %46

42:                                               ; preds = %30
  %43 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %44 = load i32, i32* @PUCAN_OPTION_CANDFDISO, align 4
  %45 = call i32 @pucan_set_options(%struct.peak_canfd_priv* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %83

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %53 = load i32, i32* @PUCAN_OPTION_ERROR, align 4
  %54 = call i32 @pucan_set_options(%struct.peak_canfd_priv* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %83

58:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %67, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PUCAN_FLTSTD_ROW_IDX_MAX, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @pucan_set_std_filter(%struct.peak_canfd_priv* %64, i32 %65, i32 -1)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %59

70:                                               ; preds = %59
  %71 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %72 = call i32 @peak_canfd_start(%struct.peak_canfd_priv* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %83

76:                                               ; preds = %70
  %77 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %78 = call i32 @pucan_setup_rx_barrier(%struct.peak_canfd_priv* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %86

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %75, %57, %49, %21
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = call i32 @close_candev(%struct.net_device* %84)
  br label %86

86:                                               ; preds = %83, %81, %12
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.peak_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @pucan_set_reset_mode(%struct.peak_canfd_priv*) #1

declare dso_local i32 @pucan_clr_options(%struct.peak_canfd_priv*, i32) #1

declare dso_local i32 @pucan_set_options(%struct.peak_canfd_priv*, i32) #1

declare dso_local i32 @pucan_set_std_filter(%struct.peak_canfd_priv*, i32, i32) #1

declare dso_local i32 @peak_canfd_start(%struct.peak_canfd_priv*) #1

declare dso_local i32 @pucan_setup_rx_barrier(%struct.peak_canfd_priv*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
