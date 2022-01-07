; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_sequencer_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_sequencer_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i32*, i32*, i32*)*, i32, i32*, i32* }
%struct.nand_chip.0 = type opaque
%struct.mtd_info = type { i32, i32 }
%struct.stm32_fmc2_nfc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @stm32_fmc2_sequencer_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_sequencer_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.stm32_fmc2_nfc*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %16)
  store %struct.mtd_info* %17, %struct.mtd_info** %10, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32 %20)
  store %struct.stm32_fmc2_nfc* %21, %struct.stm32_fmc2_nfc** %11, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %27 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @stm32_fmc2_select_chip(%struct.nand_chip* %30, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %5, align 4
  br label %117

39:                                               ; preds = %4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @stm32_fmc2_rw_page_init(%struct.nand_chip* %40, i32 %41, i32 0, i32 0)
  %43 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @stm32_fmc2_xfer(%struct.nand_chip* %43, i32* %44, i32 0, i32 0)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %5, align 4
  br label %117

50:                                               ; preds = %39
  %51 = load %struct.stm32_fmc2_nfc*, %struct.stm32_fmc2_nfc** %11, align 8
  %52 = call i32 @stm32_fmc2_get_mapping_status(%struct.stm32_fmc2_nfc* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %64 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nand_change_read_column_op(%struct.nand_chip* %63, i32 %66, i32 %69, i32 %72, i32 0)
  store i32 %73, i32* %5, align 4
  br label %117

74:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %117

75:                                               ; preds = %50
  %76 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %77 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %78 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %84 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nand_change_read_column_op(%struct.nand_chip* %76, i32 %79, i32 %82, i32 %85, i32 0)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %5, align 4
  br label %117

91:                                               ; preds = %75
  %92 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @mtd_ooblayout_get_eccbytes(%struct.mtd_info* %92, i32* %93, i32 %96, i32 0, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %5, align 4
  br label %117

106:                                              ; preds = %91
  %107 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %108 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (%struct.nand_chip.0*, i32*, i32*, i32*)*, i32 (%struct.nand_chip.0*, i32*, i32*, i32*)** %109, align 8
  %111 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %112 = bitcast %struct.nand_chip* %111 to %struct.nand_chip.0*
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 %110(%struct.nand_chip.0* %112, i32* %113, i32* %114, i32* %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %106, %104, %89, %74, %62, %48, %37
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.stm32_fmc2_nfc* @to_stm32_nfc(i32) #1

declare dso_local i32 @stm32_fmc2_select_chip(%struct.nand_chip*, i32) #1

declare dso_local i32 @stm32_fmc2_rw_page_init(%struct.nand_chip*, i32, i32, i32) #1

declare dso_local i32 @stm32_fmc2_xfer(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @stm32_fmc2_get_mapping_status(%struct.stm32_fmc2_nfc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @mtd_ooblayout_get_eccbytes(%struct.mtd_info*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
