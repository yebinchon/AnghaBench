; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_swap_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_swap_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32 }

@hi_acs_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to read hi_acs_flags : %d\0A\00", align 1
@HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_FW_ACK = common dso_local global i32 0, align 4
@ATH10K_DBG_SDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"sdio mailbox swap service enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"sdio mailbox swap service disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_hif_swap_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_hif_swap_mailbox(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_sdio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %8)
  store %struct.ath10k_sdio* %9, %struct.ath10k_sdio** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @hi_acs_flags, align 4
  %11 = call i32 @HI_ITEM(i32 %10)
  %12 = call i32 @host_interest_item_address(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ath10k_sdio_hif_diag_read32(%struct.ath10k* %13, i32 %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ath10k_warn(%struct.ath10k* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HI_ACS_FLAGS_SDIO_SWAP_MAILBOX_FW_ACK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %30 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %31 = call i32 @ath10k_dbg(%struct.ath10k* %29, i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %40

34:                                               ; preds = %23
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %37 = call i32 @ath10k_dbg(%struct.ath10k* %35, i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %39 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %28
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @host_interest_item_address(i32) #1

declare dso_local i32 @HI_ITEM(i32) #1

declare dso_local i32 @ath10k_sdio_hif_diag_read32(%struct.ath10k*, i32, i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
