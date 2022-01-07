; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_cafe_nand.c_cafe_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.cafe_priv = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAND_DMA_ADDR0 = common dso_local global i32 0, align 4
@NAND_DMA_ADDR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Set DMA address to %x (virt %p)\0A\00", align 1
@usedma = common dso_local global i32 0, align 4
@cafe_ooblayout_ops = common dso_local global i32 0, align 4
@cafe_bbt_main_descr_2048 = common dso_local global i32 0, align 4
@cafe_bbt_mirror_descr_2048 = common dso_local global i32 0, align 4
@cafe_bbt_main_descr_512 = common dso_local global i32 0, align 4
@cafe_bbt_mirror_descr_512 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unexpected NAND flash writesize %d. Aborting\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@NAND_ECC_HW_SYNDROME = common dso_local global i32 0, align 4
@cafe_nand_write_page_lowlevel = common dso_local global i32 0, align 4
@cafe_nand_write_oob = common dso_local global i32 0, align 4
@cafe_nand_read_page = common dso_local global i32 0, align 4
@cafe_nand_read_oob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @cafe_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.cafe_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.cafe_priv* %10, %struct.cafe_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %12 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %16 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @dma_alloc_coherent(i32* %14, i32 2112, i32* %16, i32 %17)
  %19 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %20 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %22 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %162

28:                                               ; preds = %1
  %29 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %30 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %31 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = load i32, i32* @NAND_DMA_ADDR0, align 4
  %35 = call i32 @cafe_writel(%struct.cafe_priv* %29, i32 %33, i32 %34)
  %36 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %37 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %38 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = load i32, i32* @NAND_DMA_ADDR1, align 4
  %42 = call i32 @cafe_writel(%struct.cafe_priv* %36, i32 %40, i32 %41)
  %43 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %44 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %48 = load i32, i32* @NAND_DMA_ADDR0, align 4
  %49 = call i32 @cafe_readl(%struct.cafe_priv* %47, i32 %48)
  %50 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %51 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cafe_dev_dbg(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @usedma, align 4
  %55 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %56 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = call i32 @BIT(i32 27)
  %58 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %59 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2048
  br i1 %63, label %64, label %70

64:                                               ; preds = %28
  %65 = call i32 @BIT(i32 29)
  %66 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %67 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %28
  %71 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %72 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %71, i32* @cafe_ooblayout_ops)
  %73 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 2048
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %79 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32* @cafe_bbt_main_descr_2048, i32** %80, align 8
  %81 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %82 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32* @cafe_bbt_mirror_descr_2048, i32** %83, align 8
  br label %108

84:                                               ; preds = %70
  %85 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 512
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %91 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32* @cafe_bbt_main_descr_512, i32** %92, align 8
  %93 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %94 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32* @cafe_bbt_mirror_descr_512, i32** %95, align 8
  br label %107

96:                                               ; preds = %84
  %97 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %98 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_warn(i32* %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ENOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %149

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i32, i32* @NAND_ECC_HW_SYNDROME, align 4
  %110 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %111 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 7
  store i32 %109, i32* %113, align 4
  %114 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %115 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %118 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  %121 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %122 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 14, i32* %124, align 4
  %125 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %126 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 4, i32* %128, align 8
  %129 = load i32, i32* @cafe_nand_write_page_lowlevel, align 4
  %130 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %131 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 6
  store i32 %129, i32* %133, align 8
  %134 = load i32, i32* @cafe_nand_write_oob, align 4
  %135 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %136 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 5
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* @cafe_nand_read_page, align 4
  %140 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %141 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  store i32 %139, i32* %143, align 8
  %144 = load i32, i32* @cafe_nand_read_oob, align 4
  %145 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %146 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  store i32 %144, i32* %148, align 4
  store i32 0, i32* %2, align 4
  br label %162

149:                                              ; preds = %96
  %150 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %151 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %155 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.cafe_priv*, %struct.cafe_priv** %5, align 8
  %158 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @dma_free_coherent(i32* %153, i32 2112, i32 %156, i32 %159)
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %149, %108, %25
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.cafe_priv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
