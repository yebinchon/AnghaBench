; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_irq_misc_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_interrupt.c_wil6210_irq_misc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@.str = private unnamed_addr constant [24 x i8] c"Thread ISR MISC 0x%08x\0A\00", align 1
@ISR_MISC_FW_ERROR = common dso_local global i32 0, align 4
@fw_recovery_pending = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"notify platform driver about FW crash\00", align 1
@WIL_PLATFORM_EVT_FW_CRASH = common dso_local global i32 0, align 4
@ISR_MISC_MBOX_EVT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"MBOX event\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"un-handled MISC ISR bits 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"set suspend_resp_comp to true\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wil6210_irq_misc_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil6210_irq_misc_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.wil6210_priv*
  store %struct.wil6210_priv* %8, %struct.wil6210_priv** %5, align 8
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %10 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @trace_wil6210_irq_misc_thread(i32 %12)
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_irq(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ISR_MISC_FW_ERROR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %2
  %22 = load i32, i32* @fw_recovery_pending, align 4
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %24 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %26 = call i32 @wil_fw_core_dump(%struct.wil6210_priv* %25)
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %28 = call i32 @wil_notify_fw_error(%struct.wil6210_priv* %27)
  %29 = load i32, i32* @ISR_MISC_FW_ERROR, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %34 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = icmp ne i32 (i32, i32)* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %21
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %40 = call i32 @wil_err(%struct.wil6210_priv* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %42 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %46 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WIL_PLATFORM_EVT_FW_CRASH, align 4
  %49 = call i32 %44(i32 %47, i32 %48)
  br label %53

50:                                               ; preds = %21
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %52 = call i32 @wil_fw_error_recovery(%struct.wil6210_priv* %51)
  br label %53

53:                                               ; preds = %50, %38
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ISR_MISC_MBOX_EVT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %61 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_irq(%struct.wil6210_priv* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %63 = call i32 @wmi_recv_cmd(%struct.wil6210_priv* %62)
  %64 = load i32, i32* @ISR_MISC_MBOX_EVT, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_irq(%struct.wil6210_priv* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %77 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %79 = call i32 @wil6210_unmask_irq_misc(%struct.wil6210_priv* %78, i32 0)
  %80 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %81 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %86 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %91 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_irq(%struct.wil6210_priv* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %93 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %95 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %94, i32 0, i32 3
  %96 = call i32 @wake_up_interruptible(i32* %95)
  br label %97

97:                                               ; preds = %89, %84, %75
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %98
}

declare dso_local i32 @trace_wil6210_irq_misc_thread(i32) #1

declare dso_local i32 @wil_dbg_irq(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_fw_core_dump(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_notify_fw_error(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_fw_error_recovery(%struct.wil6210_priv*) #1

declare dso_local i32 @wmi_recv_cmd(%struct.wil6210_priv*) #1

declare dso_local i32 @wil6210_unmask_irq_misc(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
