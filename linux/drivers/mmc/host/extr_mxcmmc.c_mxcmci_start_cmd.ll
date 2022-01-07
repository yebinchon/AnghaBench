; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_start_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_start_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i64, i32, i64, %struct.TYPE_2__*, i32, %struct.mmc_command*, i32 }
%struct.TYPE_2__ = type { %struct.mxcmci_host*, i32 }
%struct.mmc_command = type { i32, i32, i32 }

@CMD_DAT_CONT_RESPONSE_48BIT_CRC = common dso_local global i32 0, align 4
@CMD_DAT_CONT_RESPONSE_136BIT = common dso_local global i32 0, align 4
@CMD_DAT_CONT_RESPONSE_48BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unhandled response type 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@INT_END_CMD_RES_EN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@mxcmci_dma_callback = common dso_local global i32 0, align 4
@INT_WRITE_OP_DONE_EN = common dso_local global i32 0, align 4
@INT_SDIO_IRQ_EN = common dso_local global i32 0, align 4
@MMC_REG_INT_CNTR = common dso_local global i32 0, align 4
@MMC_REG_CMD = common dso_local global i32 0, align 4
@MMC_REG_ARG = common dso_local global i32 0, align 4
@MMC_REG_CMD_DAT_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxcmci_host*, %struct.mmc_command*, i32)* @mxcmci_start_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_start_cmd(%struct.mxcmci_host* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %11 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %14 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %13, i32 0, i32 5
  %15 = load %struct.mmc_command*, %struct.mmc_command** %14, align 8
  %16 = icmp ne %struct.mmc_command* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %20 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %21 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %20, i32 0, i32 5
  store %struct.mmc_command* %19, %struct.mmc_command** %21, align 8
  %22 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %23 = call i32 @mmc_resp_type(%struct.mmc_command* %22)
  switch i32 %23, label %37 [
    i32 131, label %24
    i32 130, label %24
    i32 129, label %28
    i32 128, label %32
    i32 132, label %36
  ]

24:                                               ; preds = %3, %3
  %25 = load i32, i32* @CMD_DAT_CONT_RESPONSE_48BIT_CRC, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %51

28:                                               ; preds = %3
  %29 = load i32, i32* @CMD_DAT_CONT_RESPONSE_136BIT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %51

32:                                               ; preds = %3
  %33 = load i32, i32* @CMD_DAT_CONT_RESPONSE_48BIT, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %51

36:                                               ; preds = %3
  br label %51

37:                                               ; preds = %3
  %38 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %39 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mmc_dev(i32 %40)
  %42 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %43 = call i32 @mmc_resp_type(%struct.mmc_command* %42)
  %44 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %116

51:                                               ; preds = %36, %32, %28, %24
  %52 = load i32, i32* @INT_END_CMD_RES_EN, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %54 = call i64 @mxcmci_use_dma(%struct.mxcmci_host* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %58 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* @mxcmci_dma_callback, align 4
  %64 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %65 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 8
  %68 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %69 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %70 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.mxcmci_host* %68, %struct.mxcmci_host** %72, align 8
  br label %77

73:                                               ; preds = %56
  %74 = load i32, i32* @INT_WRITE_OP_DONE_EN, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %62
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %80 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %79, i32 0, i32 1
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %84 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32, i32* @INT_SDIO_IRQ_EN, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MMC_REG_INT_CNTR, align 4
  %95 = call i32 @mxcmci_writel(%struct.mxcmci_host* %92, i32 %93, i32 %94)
  %96 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %97 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %96, i32 0, i32 1
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %101 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %102 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MMC_REG_CMD, align 4
  %105 = call i32 @mxcmci_writew(%struct.mxcmci_host* %100, i32 %103, i32 %104)
  %106 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %107 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %108 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MMC_REG_ARG, align 4
  %111 = call i32 @mxcmci_writel(%struct.mxcmci_host* %106, i32 %109, i32 %110)
  %112 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MMC_REG_CMD_DAT_CONT, align 4
  %115 = call i32 @mxcmci_writew(%struct.mxcmci_host* %112, i32 %113, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %91, %37
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @mxcmci_use_dma(%struct.mxcmci_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mxcmci_writel(%struct.mxcmci_host*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mxcmci_writew(%struct.mxcmci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
