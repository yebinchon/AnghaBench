; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.stm32_fmc2_nfc = type { i64, i32, i32, i64, i32, i64, i64, i32* }
%struct.stm32_fmc2_nand = type { i64* }
%struct.dma_slave_config = type { i32, i32, i8*, i32, i8*, i32 }

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"tx DMA engine slave config failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"rx DMA engine slave config failed\0A\00", align 1
@FMC2_ECC_HAM = common dso_local global i64 0, align 8
@FMC2_HECCR = common dso_local global i64 0, align 8
@FMC2_BCHDSR0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"ECC DMA engine slave config failed\0A\00", align 1
@FMC2_HECCR_LEN = common dso_local global i32 0, align 4
@FMC2_BCHDSRS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @stm32_fmc2_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_fmc2_nfc*, align 8
  %7 = alloca %struct.stm32_fmc2_nand*, align 8
  %8 = alloca %struct.dma_slave_config, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %12)
  store %struct.stm32_fmc2_nfc* %13, %struct.stm32_fmc2_nfc** %6, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = call %struct.stm32_fmc2_nand* @to_fmc2_nand(%struct.nand_chip* %14)
  store %struct.stm32_fmc2_nand* %15, %struct.stm32_fmc2_nand** %7, align 8
  %16 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %7, align 8
  %17 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %24 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %161

28:                                               ; preds = %2
  %29 = load %struct.stm32_fmc2_nand*, %struct.stm32_fmc2_nand** %7, align 8
  %30 = getelementptr inbounds %struct.stm32_fmc2_nand, %struct.stm32_fmc2_nand* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %37 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %39 = call i32 @stm32_fmc2_setup(%struct.nand_chip* %38)
  %40 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %41 = call i32 @stm32_fmc2_timings_init(%struct.nand_chip* %40)
  %42 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %43 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %28
  %47 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %48 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %46
  %52 = call i32 @memset(%struct.dma_slave_config* %8, i32 0, i32 40)
  %53 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %54 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %57 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %63 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %66 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 5
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %72 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %74 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 4
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 0
  store i32 32, i32* %75, align 8
  %76 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 1
  store i32 32, i32* %76, align 4
  %77 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %78 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dmaengine_slave_config(i64 %79, %struct.dma_slave_config* %8)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %51
  %84 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %85 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %161

89:                                               ; preds = %51
  %90 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %91 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dmaengine_slave_config(i64 %92, %struct.dma_slave_config* %8)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %98 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %161

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %46, %28
  %104 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %105 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %160

108:                                              ; preds = %103
  %109 = call i32 @memset(%struct.dma_slave_config* %8, i32 0, i32 40)
  %110 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %111 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  %114 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @FMC2_ECC_HAM, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %108
  %121 = load i64, i64* @FMC2_HECCR, align 8
  br label %124

122:                                              ; preds = %108
  %123 = load i64, i64* @FMC2_BCHDSR0, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i64 [ %121, %120 ], [ %123, %122 ]
  %126 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %125
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 8
  %131 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %132 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %8, i32 0, i32 2
  store i8* %131, i8** %132, align 8
  %133 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %134 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @dmaengine_slave_config(i64 %135, %struct.dma_slave_config* %8)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %124
  %140 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %141 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %161

145:                                              ; preds = %124
  %146 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %147 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @FMC2_ECC_HAM, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @FMC2_HECCR_LEN, align 4
  br label %156

154:                                              ; preds = %145
  %155 = load i32, i32* @FMC2_BCHDSRS_LEN, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %6, align 8
  %159 = getelementptr inbounds %struct.stm32_fmc2_nfc, %struct.stm32_fmc2_nfc* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %103
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %139, %96, %83, %27
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local %struct.stm32_fmc2_nand* @to_fmc2_nand(%struct.nand_chip*) #1

declare dso_local i32 @stm32_fmc2_setup(%struct.nand_chip*) #1

declare dso_local i32 @stm32_fmc2_timings_init(%struct.nand_chip*) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i64, %struct.dma_slave_config*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
