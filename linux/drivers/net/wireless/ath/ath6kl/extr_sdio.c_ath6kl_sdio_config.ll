; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_sdio = type { %struct.TYPE_2__*, %struct.sdio_func* }
%struct.TYPE_2__ = type { i32 }
%struct.sdio_func = type { i32, i32 }

@MANUFACTURER_ID_ATH6KL_BASE_MASK = common dso_local global i32 0, align 4
@MANUFACTURER_ID_AR6003_BASE = common dso_local global i32 0, align 4
@CCCR_SDIO_IRQ_MODE_REG = common dso_local global i32 0, align 4
@SDIO_IRQ_MODE_ASYNC_4BIT_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to enable 4-bit async irq mode %d\0A\00", align 1
@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"4-bit async irq mode enabled\0A\00", align 1
@HIF_MBOX_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Set sdio block size %d failed: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_sdio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_config(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca %struct.ath6kl_sdio*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %7 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %6)
  store %struct.ath6kl_sdio* %7, %struct.ath6kl_sdio** %3, align 8
  %8 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %9 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %8, i32 0, i32 1
  %10 = load %struct.sdio_func*, %struct.sdio_func** %9, align 8
  store %struct.sdio_func* %10, %struct.sdio_func** %4, align 8
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = call i32 @sdio_claim_host(%struct.sdio_func* %11)
  %13 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %14 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MANUFACTURER_ID_ATH6KL_BASE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @MANUFACTURER_ID_AR6003_BASE, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CCCR_SDIO_IRQ_MODE_REG, align 4
  %27 = load i32, i32* @SDIO_IRQ_MODE_ASYNC_4BIT_IRQ, align 4
  %28 = call i32 @ath6kl_sdio_func0_cmd52_wr_byte(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, ...) @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %50

34:                                               ; preds = %22
  %35 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %36 = call i32 @ath6kl_dbg(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 0
  store i32 100, i32* %39, align 4
  %40 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %41 = load i32, i32* @HIF_MBOX_BLOCK_SIZE, align 4
  %42 = call i32 @sdio_set_block_size(%struct.sdio_func* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @HIF_MBOX_BLOCK_SIZE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i8*, i32, ...) @ath6kl_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %45, %31
  %51 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %52 = call i32 @sdio_release_host(%struct.sdio_func* %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @ath6kl_sdio_func0_cmd52_wr_byte(i32, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32, ...) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
