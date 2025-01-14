; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_int_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_int_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.fmdev = type { %struct.fm_irq }
%struct.fm_irq = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"irq: timeout,trying to re-enable fm interrupts\0A\00", align 1
@irq_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FM_IRQ_TIMEOUT_RETRY_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Recovery action failed duringirq processing, max retry reached\0A\00", align 1
@FM_SEND_INTMSK_CMD_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @int_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_timeout_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.fmdev*, align 8
  %4 = alloca %struct.fm_irq*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = call i32 @fmdbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irq_info, i32 0, i32 0), align 4
  %9 = call %struct.fmdev* @from_timer(%struct.fmdev* %6, %struct.timer_list* %7, i32 %8)
  store %struct.fmdev* %9, %struct.fmdev** %3, align 8
  %10 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %11 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %10, i32 0, i32 0
  store %struct.fm_irq* %11, %struct.fm_irq** %4, align 8
  %12 = load %struct.fm_irq*, %struct.fm_irq** %4, align 8
  %13 = getelementptr inbounds %struct.fm_irq, %struct.fm_irq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.fm_irq*, %struct.fm_irq** %4, align 8
  %17 = getelementptr inbounds %struct.fm_irq, %struct.fm_irq* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FM_IRQ_TIMEOUT_RETRY_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.fm_irq*, %struct.fm_irq** %4, align 8
  %23 = getelementptr inbounds %struct.fm_irq, %struct.fm_irq* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.fm_irq*, %struct.fm_irq** %4, align 8
  %25 = getelementptr inbounds %struct.fm_irq, %struct.fm_irq* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = call i32 @fmerr(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.fmdev*, %struct.fmdev** %3, align 8
  %29 = load i32, i32* @FM_SEND_INTMSK_CMD_IDX, align 4
  %30 = call i32 @fm_irq_call_stage(%struct.fmdev* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  ret void
}

declare dso_local i32 @fmdbg(i8*) #1

declare dso_local %struct.fmdev* @from_timer(%struct.fmdev*, %struct.timer_list*, i32) #1

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fm_irq_call_stage(%struct.fmdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
