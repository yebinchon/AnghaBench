; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_sig_post_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_sig_post_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@ASF_NEW_HANDSHAKE = common dso_local global i32 0, align 4
@NIC_SRAM_FW_DRV_STATE_MBOX = common dso_local global i32 0, align 4
@DRV_STATE_START_DONE = common dso_local global i32 0, align 4
@DRV_STATE_UNLOAD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_write_sig_post_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_write_sig_post_reset(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tg3*, %struct.tg3** %3, align 8
  %6 = load i32, i32* @ASF_NEW_HANDSHAKE, align 4
  %7 = call i64 @tg3_flag(%struct.tg3* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %16
  ]

11:                                               ; preds = %9
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = load i32, i32* @NIC_SRAM_FW_DRV_STATE_MBOX, align 4
  %14 = load i32, i32* @DRV_STATE_START_DONE, align 4
  %15 = call i32 @tg3_write_mem(%struct.tg3* %12, i32 %13, i32 %14)
  br label %22

16:                                               ; preds = %9
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = load i32, i32* @NIC_SRAM_FW_DRV_STATE_MBOX, align 4
  %19 = load i32, i32* @DRV_STATE_UNLOAD_DONE, align 4
  %20 = call i32 @tg3_write_mem(%struct.tg3* %17, i32 %18, i32 %19)
  br label %22

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %16, %11
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write_mem(%struct.tg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
