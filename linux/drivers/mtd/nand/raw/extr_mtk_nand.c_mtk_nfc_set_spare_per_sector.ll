; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_set_spare_per_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_set_spare_per_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_nfc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }

@MTK_NFC_MIN_SPARE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.mtd_info*)* @mtk_nfc_set_spare_per_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_set_spare_per_sector(i32* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.mtk_nfc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %5, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %12)
  store %struct.nand_chip* %13, %struct.nand_chip** %6, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %15 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %14)
  store %struct.mtk_nfc* %15, %struct.mtk_nfc** %7, align 8
  %16 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %17 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %23, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1024
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %40, %2
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MTK_NFC_MIN_SPARE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %115

52:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %95, %52
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %56 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %53
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %63, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %61
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %75, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %70
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %85, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %98

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %70, %61
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %53

98:                                               ; preds = %92, %53
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %4, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 1024
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %110, %98
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %49
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
