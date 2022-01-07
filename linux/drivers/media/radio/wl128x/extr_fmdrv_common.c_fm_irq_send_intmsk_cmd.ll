; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_send_intmsk_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_send_intmsk_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INT_MASK_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@FM_HANDLE_INTMSK_CMD_RESP_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmdev*)* @fm_irq_send_intmsk_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm_irq_send_intmsk_cmd(%struct.fmdev* %0) #0 {
  %2 = alloca %struct.fmdev*, align 8
  %3 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %2, align 8
  %4 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %5 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %9 = load i32, i32* @INT_MASK_SET, align 4
  %10 = load i32, i32* @REG_WR, align 4
  %11 = call i32 @fm_send_cmd(%struct.fmdev* %8, i32 %9, i32 %10, i32* %3, i32 4, i32* null)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %15 = load i32, i32* @FM_HANDLE_INTMSK_CMD_RESP_IDX, align 4
  %16 = call i32 @fm_irq_timeout_stage(%struct.fmdev* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @fm_send_cmd(%struct.fmdev*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @fm_irq_timeout_stage(%struct.fmdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
