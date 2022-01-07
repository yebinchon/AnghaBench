; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_interrupt_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_interrupt_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@REG_PORT = common dso_local global i32 0, align 4
@MWIFIEX_SDIO_BYTE_MODE_MASK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"read mp_regs failed\0A\00", align 1
@INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"int: sdio_ireg = %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_adapter*)* @mwifiex_interrupt_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_interrupt_status(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.sdio_mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 2
  %8 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  store %struct.sdio_mmc_card* %8, %struct.sdio_mmc_card** %3, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %11 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %14 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @REG_PORT, align 4
  %19 = load i32, i32* @MWIFIEX_SDIO_BYTE_MODE_MASK, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @mwifiex_read_data_sync(%struct.mwifiex_adapter* %9, i32* %12, i32 %17, i32 %20, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %58

27:                                               ; preds = %1
  %28 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %29 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %32 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %27
  %41 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %42 = load i32, i32* @INTR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %41, i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %45, i32 0, i32 1
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %23, %40, %27
  ret void
}

declare dso_local i64 @mwifiex_read_data_sync(%struct.mwifiex_adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
