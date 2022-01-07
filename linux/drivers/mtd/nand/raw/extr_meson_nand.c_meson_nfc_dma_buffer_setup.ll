; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_dma_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_dma_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.meson_nfc = type { i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@NFC_CMD_ADL = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NFC_CMD_ADH = common dso_local global i32 0, align 4
@NFC_CMD_AIL = common dso_local global i32 0, align 4
@NFC_CMD_AIH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i8*, i32, i8*, i32, i32)* @meson_nfc_dma_buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_dma_buffer_setup(%struct.nand_chip* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.meson_nfc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %18 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %17)
  store %struct.meson_nfc* %18, %struct.meson_nfc** %14, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %20 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i8* @dma_map_single(i32 %21, i8* %22, i32 %23, i32 %24)
  %26 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %27 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %29 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %32 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @dma_mapping_error(i32 %30, i8* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %6
  %38 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %39 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %7, align 4
  br label %131

43:                                               ; preds = %6
  %44 = load i32, i32* @NFC_CMD_ADL, align 4
  %45 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %46 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @GENCMDDADDRL(i32 %44, i8* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %51 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NFC_REG_CMD, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load i32, i32* @NFC_CMD_ADH, align 4
  %57 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %58 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @GENCMDDADDRH(i32 %56, i8* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %63 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NFC_REG_CMD, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %129

70:                                               ; preds = %43
  %71 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %72 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i8* @dma_map_single(i32 %73, i8* %74, i32 %75, i32 %76)
  %78 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %79 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %81 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %84 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @dma_mapping_error(i32 %82, i8* %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %70
  %90 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %91 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %95 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %98 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @dma_unmap_single(i32 %96, i8* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %7, align 4
  br label %131

104:                                              ; preds = %70
  %105 = load i32, i32* @NFC_CMD_AIL, align 4
  %106 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %107 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @GENCMDIADDRL(i32 %105, i8* %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %112 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NFC_REG_CMD, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load i32, i32* @NFC_CMD_AIH, align 4
  %118 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %119 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @GENCMDIADDRH(i32 %117, i8* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.meson_nfc*, %struct.meson_nfc** %14, align 8
  %124 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NFC_REG_CMD, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  br label %129

129:                                              ; preds = %104, %43
  %130 = load i32, i32* %16, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %129, %89, %37
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i8* @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @GENCMDDADDRL(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @GENCMDDADDRH(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @GENCMDIADDRL(i32, i8*) #1

declare dso_local i32 @GENCMDIADDRH(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
