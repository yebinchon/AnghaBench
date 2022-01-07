; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_init_sdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_init_sdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@hi_mbox_io_block_sz = common dso_local global i32 0, align 4
@hi_mbox_isr_yield_limit = common dso_local global i32 0, align 4
@hi_acs_flags = common dso_local global i32 0, align 4
@HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET = common dso_local global i32 0, align 4
@HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE = common dso_local global i32 0, align 4
@ATH10K_FIRMWARE_MODE_UTF = common dso_local global i32 0, align 4
@HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_SET = common dso_local global i32 0, align 4
@hi_option_flag = common dso_local global i32 0, align 4
@HI_OPTION_DISABLE_DBGLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i32)* @ath10k_init_sdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_init_sdio(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = load i32, i32* @hi_mbox_io_block_sz, align 4
  %8 = call i32 @ath10k_bmi_write32(%struct.ath10k* %6, i32 %7, i32 256)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load i32, i32* @hi_mbox_isr_yield_limit, align 4
  %11 = call i32 @ath10k_bmi_write32(%struct.ath10k* %9, i32 %10, i32 99)
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = load i32, i32* @hi_acs_flags, align 4
  %14 = call i32 @ath10k_bmi_read32(%struct.ath10k* %12, i32 %13, i32* %5)
  %15 = load i32, i32* @HI_ACS_FLAGS_SDIO_REDUCE_TX_COMPL_SET, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @HI_ACS_FLAGS_ALT_DATA_CREDIT_SIZE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ATH10K_FIRMWARE_MODE_UTF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_SET, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_SET, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = load i32, i32* @hi_acs_flags, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ath10k_bmi_write32(%struct.ath10k* %36, i32 %37, i32 %38)
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* @hi_option_flag, align 4
  %42 = call i32 @ath10k_bmi_read32(%struct.ath10k* %40, i32 %41, i32* %5)
  %43 = load i32, i32* @HI_OPTION_DISABLE_DBGLOG, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %47 = load i32, i32* @hi_option_flag, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ath10k_bmi_write32(%struct.ath10k* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @ath10k_bmi_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_bmi_read32(%struct.ath10k*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
