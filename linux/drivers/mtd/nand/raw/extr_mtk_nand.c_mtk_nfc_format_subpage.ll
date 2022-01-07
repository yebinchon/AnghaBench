; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_format_subpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_format_subpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }
%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtk_nfc_nand_chip = type { %struct.TYPE_4__, %struct.mtk_nfc_fdm }
%struct.TYPE_4__ = type { i32, i32 (%struct.mtd_info.0*, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtk_nfc_fdm = type { i32 }
%struct.mtk_nfc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32, i32*)* @mtk_nfc_format_subpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_format_subpage(%struct.mtd_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %12 = alloca %struct.mtk_nfc*, align 8
  %13 = alloca %struct.mtk_nfc_fdm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %19 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %18)
  store %struct.nand_chip* %19, %struct.nand_chip** %10, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %21 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %20)
  store %struct.mtk_nfc_nand_chip* %21, %struct.mtk_nfc_nand_chip** %11, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %23 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %22)
  store %struct.mtk_nfc* %23, %struct.mtk_nfc** %12, align 8
  %24 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %11, align 8
  %25 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %24, i32 0, i32 1
  store %struct.mtk_nfc_fdm* %25, %struct.mtk_nfc_fdm** %13, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %26, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %34, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %41 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @memset(i32 %42, i32 255, i64 %49)
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %118, %4
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %121

58:                                               ; preds = %51
  %59 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @mtk_data_ptr(%struct.nand_chip* %59, i32 %60)
  %62 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @data_ptr(%struct.nand_chip* %62, i32* %63, i32 %64)
  %66 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %61, i32 %65, i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %58
  br label %118

79:                                               ; preds = %74
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %11, align 8
  %82 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %11, align 8
  %88 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32 (%struct.mtd_info.0*, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32)** %89, align 8
  %91 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %92 = bitcast %struct.mtd_info* %91 to %struct.mtd_info.0*
  %93 = load %struct.mtk_nfc*, %struct.mtk_nfc** %12, align 8
  %94 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 %90(%struct.mtd_info.0* %92, i32 %95, i32 1)
  br label %97

97:                                               ; preds = %86, %79
  %98 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @mtk_oob_ptr(%struct.nand_chip* %98, i32 %99)
  %101 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @oob_ptr(%struct.nand_chip* %101, i32 %102)
  %104 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %13, align 8
  %105 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32 %100, i32 %103, i32 %106)
  %108 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %109 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @mtk_data_ptr(%struct.nand_chip* %109, i32 %110)
  %112 = call i32 @mtk_nfc_sector_encode(%struct.nand_chip* %108, i32 %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %97
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %5, align 4
  br label %122

117:                                              ; preds = %97
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %51

121:                                              ; preds = %51
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %115
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mtk_data_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @data_ptr(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @mtk_oob_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @oob_ptr(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtk_nfc_sector_encode(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
