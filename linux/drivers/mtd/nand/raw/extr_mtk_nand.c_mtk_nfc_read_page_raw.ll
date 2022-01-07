; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_page_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_page_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mtd_info = type { i64, i64 }
%struct.mtk_nfc_nand_chip = type { %struct.TYPE_3__, %struct.mtk_nfc_fdm }
%struct.TYPE_3__ = type { i32, i32 (%struct.mtd_info.0*, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtk_nfc_fdm = type { i32 }
%struct.mtk_nfc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @mtk_nfc_read_page_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_read_page_raw(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %12 = alloca %struct.mtk_nfc*, align 8
  %13 = alloca %struct.mtk_nfc_fdm*, align 8
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
  %19 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %18)
  store %struct.mtk_nfc_nand_chip* %19, %struct.mtk_nfc_nand_chip** %11, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %20)
  store %struct.mtk_nfc* %21, %struct.mtk_nfc** %12, align 8
  %22 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %11, align 8
  %23 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %22, i32 0, i32 1
  store %struct.mtk_nfc_fdm* %23, %struct.mtk_nfc_fdm** %13, align 8
  %24 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %25 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @memset(i32 %26, i32 255, i64 %33)
  %35 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %41 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mtk_nfc_read_subpage(%struct.mtd_info* %35, %struct.nand_chip* %36, i32 0, i64 %39, i32 %42, i32 %43, i32 1)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %5, align 4
  br label %107

49:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %102, %49
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %50
  %58 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @oob_ptr(%struct.nand_chip* %58, i32 %59)
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @mtk_oob_ptr(%struct.nand_chip* %61, i32 %62)
  %64 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %13, align 8
  %65 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %11, align 8
  %70 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %68, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %57
  %75 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %11, align 8
  %76 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32 (%struct.mtd_info.0*, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32)** %77, align 8
  %79 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %80 = bitcast %struct.mtd_info* %79 to %struct.mtd_info.0*
  %81 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %82 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %78(%struct.mtd_info.0* %80, i32 %83, i32 1)
  br label %85

85:                                               ; preds = %74, %57
  %86 = load i32*, i32** %7, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @data_ptr(%struct.nand_chip* %89, i32* %90, i32 %91)
  %93 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @mtk_data_ptr(%struct.nand_chip* %93, i32 %94)
  %96 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i32 %92, i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %88, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %50

105:                                              ; preds = %50
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %47
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @mtk_nfc_read_subpage(%struct.mtd_info*, %struct.nand_chip*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @oob_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtk_oob_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @data_ptr(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @mtk_data_ptr(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
