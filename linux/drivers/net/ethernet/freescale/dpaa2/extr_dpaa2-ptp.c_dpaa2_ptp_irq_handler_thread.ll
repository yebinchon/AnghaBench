; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ptp.c_dpaa2_ptp_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ptp.c_dpaa2_ptp_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_qoriq = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.ptp_clock_event = type { i32 }
%struct.fsl_mc_device = type { i32, i32 }

@DPRTC_IRQ_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"dprtc_get_irq_status err %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@DPRTC_EVENT_PPS = common dso_local global i32 0, align 4
@PTP_CLOCK_PPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"dprtc_clear_irq_status err %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dpaa2_ptp_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_ptp_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ptp_qoriq*, align 8
  %7 = alloca %struct.ptp_clock_event, align 4
  %8 = alloca %struct.fsl_mc_device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ptp_qoriq*
  store %struct.ptp_qoriq* %13, %struct.ptp_qoriq** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %15 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = call %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device* %17)
  store %struct.fsl_mc_device* %18, %struct.fsl_mc_device** %8, align 8
  %19 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %8, align 8
  %20 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %8, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DPRTC_IRQ_INDEX, align 4
  %26 = call i32 @dprtc_get_irq_status(i32 %21, i32 0, i32 %24, i32 %25, i32* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %67

35:                                               ; preds = %2
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @DPRTC_EVENT_PPS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @PTP_CLOCK_PPS, align 4
  %42 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %6, align 8
  %44 = getelementptr inbounds %struct.ptp_qoriq, %struct.ptp_qoriq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ptp_clock_event(i32 %45, %struct.ptp_clock_event* %7)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %8, align 8
  %49 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %8, align 8
  %52 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DPRTC_IRQ_INDEX, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dprtc_clear_irq_status(i32 %50, i32 0, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.device*, %struct.device** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @IRQ_NONE, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %47
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %60, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device*) #1

declare dso_local i32 @dprtc_get_irq_status(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ptp_clock_event(i32, %struct.ptp_clock_event*) #1

declare dso_local i32 @dprtc_clear_irq_status(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
