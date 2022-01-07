; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_sig_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_sig_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@NIC_SRAM_FIRMWARE_MBOX = common dso_local global i32 0, align 4
@NIC_SRAM_FIRMWARE_MBOX_MAGIC1 = common dso_local global i32 0, align 4
@ASF_NEW_HANDSHAKE = common dso_local global i32 0, align 4
@NIC_SRAM_FW_DRV_STATE_MBOX = common dso_local global i32 0, align 4
@DRV_STATE_START = common dso_local global i32 0, align 4
@DRV_STATE_UNLOAD = common dso_local global i32 0, align 4
@DRV_STATE_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_write_sig_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_write_sig_pre_reset(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tg3*, %struct.tg3** %3, align 8
  %6 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX, align 4
  %7 = load i32, i32* @NIC_SRAM_FIRMWARE_MBOX_MAGIC1, align 4
  %8 = call i32 @tg3_write_mem(%struct.tg3* %5, i32 %6, i32 %7)
  %9 = load %struct.tg3*, %struct.tg3** %3, align 8
  %10 = load i32, i32* @ASF_NEW_HANDSHAKE, align 4
  %11 = call i64 @tg3_flag(%struct.tg3* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %30 [
    i32 130, label %15
    i32 129, label %20
    i32 128, label %25
  ]

15:                                               ; preds = %13
  %16 = load %struct.tg3*, %struct.tg3** %3, align 8
  %17 = load i32, i32* @NIC_SRAM_FW_DRV_STATE_MBOX, align 4
  %18 = load i32, i32* @DRV_STATE_START, align 4
  %19 = call i32 @tg3_write_mem(%struct.tg3* %16, i32 %17, i32 %18)
  br label %31

20:                                               ; preds = %13
  %21 = load %struct.tg3*, %struct.tg3** %3, align 8
  %22 = load i32, i32* @NIC_SRAM_FW_DRV_STATE_MBOX, align 4
  %23 = load i32, i32* @DRV_STATE_UNLOAD, align 4
  %24 = call i32 @tg3_write_mem(%struct.tg3* %21, i32 %22, i32 %23)
  br label %31

25:                                               ; preds = %13
  %26 = load %struct.tg3*, %struct.tg3** %3, align 8
  %27 = load i32, i32* @NIC_SRAM_FW_DRV_STATE_MBOX, align 4
  %28 = load i32, i32* @DRV_STATE_SUSPEND, align 4
  %29 = call i32 @tg3_write_mem(%struct.tg3* %26, i32 %27, i32 %28)
  br label %31

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %25, %20, %15
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @tg3_write_mem(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
