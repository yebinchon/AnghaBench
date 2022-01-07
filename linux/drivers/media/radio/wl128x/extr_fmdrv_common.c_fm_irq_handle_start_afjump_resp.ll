; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_handle_start_afjump_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_irq_handle_start_afjump_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@FM_SEND_FLAG_GETCMD_IDX = common dso_local global i32 0, align 4
@FM_AF_SWITCH_INPROGRESS = common dso_local global i32 0, align 4
@FM_INTTASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmdev*)* @fm_irq_handle_start_afjump_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm_irq_handle_start_afjump_resp(%struct.fmdev* %0) #0 {
  %2 = alloca %struct.fmdev*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.fmdev* %0, %struct.fmdev** %2, align 8
  %4 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %5 = call i64 @check_cmdresp_status(%struct.fmdev* %4, %struct.sk_buff** %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load i32, i32* @FM_SEND_FLAG_GETCMD_IDX, align 4
  %10 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %11 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @FM_AF_SWITCH_INPROGRESS, align 4
  %14 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %15 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @FM_INTTASK_RUNNING, align 4
  %18 = load %struct.fmdev*, %struct.fmdev** %2, align 8
  %19 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @check_cmdresp_status(%struct.fmdev*, %struct.sk_buff**) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
