; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_dumpregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"============ SDHCI REGISTER DUMP ===========\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Sys addr:  0x%08x | Version:  0x%08x\0A\00", align 1
@SDHCI_DMA_ADDRESS = common dso_local global i64 0, align 8
@SDHCI_HOST_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Blk size:  0x%08x | Blk cnt:  0x%08x\0A\00", align 1
@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_BLOCK_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Argument:  0x%08x | Trn mode: 0x%08x\0A\00", align 1
@SDHCI_ARGUMENT = common dso_local global i64 0, align 8
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Present:   0x%08x | Host ctl: 0x%08x\0A\00", align 1
@SDHCI_PRESENT_STATE = common dso_local global i64 0, align 8
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Power:     0x%08x | Blk gap:  0x%08x\0A\00", align 1
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_BLOCK_GAP_CONTROL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Wake-up:   0x%08x | Clock:    0x%08x\0A\00", align 1
@SDHCI_WAKE_UP_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Timeout:   0x%08x | Int stat: 0x%08x\0A\00", align 1
@SDHCI_TIMEOUT_CONTROL = common dso_local global i32 0, align 4
@SDHCI_INT_STATUS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Int enab:  0x%08x | Sig enab: 0x%08x\0A\00", align 1
@SDHCI_INT_ENABLE = common dso_local global i64 0, align 8
@SDHCI_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"ACmd stat: 0x%08x | Slot int: 0x%08x\0A\00", align 1
@SDHCI_AUTO_CMD_STATUS = common dso_local global i32 0, align 4
@SDHCI_SLOT_INT_STATUS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Caps:      0x%08x | Caps_1:   0x%08x\0A\00", align 1
@SDHCI_CAPABILITIES = common dso_local global i64 0, align 8
@SDHCI_CAPABILITIES_1 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"Cmd:       0x%08x | Max curr: 0x%08x\0A\00", align 1
@SDHCI_COMMAND = common dso_local global i32 0, align 4
@SDHCI_MAX_CURRENT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"Resp[0]:   0x%08x | Resp[1]:  0x%08x\0A\00", align 1
@SDHCI_RESPONSE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [38 x i8] c"Resp[2]:   0x%08x | Resp[3]:  0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Host ctl2: 0x%08x\0A\00", align 1
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_USE_ADMA = common dso_local global i32 0, align 4
@SDHCI_USE_64_BIT_DMA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"ADMA Err:  0x%08x | ADMA Ptr: 0x%08x%08x\0A\00", align 1
@SDHCI_ADMA_ERROR = common dso_local global i64 0, align 8
@SDHCI_ADMA_ADDRESS_HI = common dso_local global i64 0, align 8
@SDHCI_ADMA_ADDRESS = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [38 x i8] c"ADMA Err:  0x%08x | ADMA Ptr: 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"============================================\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_dumpregs(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %3 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = load i64, i64* @SDHCI_DMA_ADDRESS, align 8
  %6 = call i32 @sdhci_readl(%struct.sdhci_host* %4, i64 %5)
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %8 = load i32, i32* @SDHCI_HOST_VERSION, align 4
  %9 = call i32 @sdhci_readw(%struct.sdhci_host* %7, i32 %8)
  %10 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %12 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %13 = call i32 @sdhci_readw(%struct.sdhci_host* %11, i32 %12)
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %15 = load i32, i32* @SDHCI_BLOCK_COUNT, align 4
  %16 = call i32 @sdhci_readw(%struct.sdhci_host* %14, i32 %15)
  %17 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %19 = load i64, i64* @SDHCI_ARGUMENT, align 8
  %20 = call i32 @sdhci_readl(%struct.sdhci_host* %18, i64 %19)
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %22 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %23 = call i32 @sdhci_readw(%struct.sdhci_host* %21, i32 %22)
  %24 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %26 = load i64, i64* @SDHCI_PRESENT_STATE, align 8
  %27 = call i32 @sdhci_readl(%struct.sdhci_host* %25, i64 %26)
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %29 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %30 = call i32 @sdhci_readb(%struct.sdhci_host* %28, i32 %29)
  %31 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %33 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %34 = call i32 @sdhci_readb(%struct.sdhci_host* %32, i32 %33)
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %36 = load i32, i32* @SDHCI_BLOCK_GAP_CONTROL, align 4
  %37 = call i32 @sdhci_readb(%struct.sdhci_host* %35, i32 %36)
  %38 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %40 = load i32, i32* @SDHCI_WAKE_UP_CONTROL, align 4
  %41 = call i32 @sdhci_readb(%struct.sdhci_host* %39, i32 %40)
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %43 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %44 = call i32 @sdhci_readw(%struct.sdhci_host* %42, i32 %43)
  %45 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %47 = load i32, i32* @SDHCI_TIMEOUT_CONTROL, align 4
  %48 = call i32 @sdhci_readb(%struct.sdhci_host* %46, i32 %47)
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %50 = load i64, i64* @SDHCI_INT_STATUS, align 8
  %51 = call i32 @sdhci_readl(%struct.sdhci_host* %49, i64 %50)
  %52 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %54 = load i64, i64* @SDHCI_INT_ENABLE, align 8
  %55 = call i32 @sdhci_readl(%struct.sdhci_host* %53, i64 %54)
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %57 = load i64, i64* @SDHCI_SIGNAL_ENABLE, align 8
  %58 = call i32 @sdhci_readl(%struct.sdhci_host* %56, i64 %57)
  %59 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %61 = load i32, i32* @SDHCI_AUTO_CMD_STATUS, align 4
  %62 = call i32 @sdhci_readw(%struct.sdhci_host* %60, i32 %61)
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %64 = load i32, i32* @SDHCI_SLOT_INT_STATUS, align 4
  %65 = call i32 @sdhci_readw(%struct.sdhci_host* %63, i32 %64)
  %66 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %68 = load i64, i64* @SDHCI_CAPABILITIES, align 8
  %69 = call i32 @sdhci_readl(%struct.sdhci_host* %67, i64 %68)
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %71 = load i64, i64* @SDHCI_CAPABILITIES_1, align 8
  %72 = call i32 @sdhci_readl(%struct.sdhci_host* %70, i64 %71)
  %73 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %75 = load i32, i32* @SDHCI_COMMAND, align 4
  %76 = call i32 @sdhci_readw(%struct.sdhci_host* %74, i32 %75)
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %78 = load i64, i64* @SDHCI_MAX_CURRENT, align 8
  %79 = call i32 @sdhci_readl(%struct.sdhci_host* %77, i64 %78)
  %80 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %82 = load i64, i64* @SDHCI_RESPONSE, align 8
  %83 = call i32 @sdhci_readl(%struct.sdhci_host* %81, i64 %82)
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %85 = load i64, i64* @SDHCI_RESPONSE, align 8
  %86 = add nsw i64 %85, 4
  %87 = call i32 @sdhci_readl(%struct.sdhci_host* %84, i64 %86)
  %88 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32 %83, i32 %87)
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %90 = load i64, i64* @SDHCI_RESPONSE, align 8
  %91 = add nsw i64 %90, 8
  %92 = call i32 @sdhci_readl(%struct.sdhci_host* %89, i64 %91)
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %94 = load i64, i64* @SDHCI_RESPONSE, align 8
  %95 = add nsw i64 %94, 12
  %96 = call i32 @sdhci_readl(%struct.sdhci_host* %93, i64 %95)
  %97 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %92, i32 %96)
  %98 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %99 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %100 = call i32 @sdhci_readw(%struct.sdhci_host* %98, i32 %99)
  %101 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %100)
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %103 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SDHCI_USE_ADMA, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %1
  %109 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %110 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SDHCI_USE_64_BIT_DMA, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %117 = load i64, i64* @SDHCI_ADMA_ERROR, align 8
  %118 = call i32 @sdhci_readl(%struct.sdhci_host* %116, i64 %117)
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %120 = load i64, i64* @SDHCI_ADMA_ADDRESS_HI, align 8
  %121 = call i32 @sdhci_readl(%struct.sdhci_host* %119, i64 %120)
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %123 = load i64, i64* @SDHCI_ADMA_ADDRESS, align 8
  %124 = call i32 @sdhci_readl(%struct.sdhci_host* %122, i64 %123)
  %125 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %118, i32 %121, i32 %124)
  br label %134

126:                                              ; preds = %108
  %127 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %128 = load i64, i64* @SDHCI_ADMA_ERROR, align 8
  %129 = call i32 @sdhci_readl(%struct.sdhci_host* %127, i64 %128)
  %130 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %131 = load i64, i64* @SDHCI_ADMA_ADDRESS, align 8
  %132 = call i32 @sdhci_readl(%struct.sdhci_host* %130, i64 %131)
  %133 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %126, %115
  br label %135

135:                                              ; preds = %134, %1
  %136 = call i32 (i8*, ...) @SDHCI_DUMP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SDHCI_DUMP(i8*, ...) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i64) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
