; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32, i32 }
%struct.vf610_nfc = type { i32, i32 }

@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@PAGE_2K = common dso_local global i32 0, align 4
@OOB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported flash page size\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported flash with hwecc\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Step size needs to be page size\0A\00", align 1
@nand_ooblayout_lp_ops = common dso_local global i32 0, align 4
@ECC_60_BYTE = common dso_local global i32 0, align 4
@ECC_45_BYTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupported ECC strength\0A\00", align 1
@vf610_nfc_read_page = common dso_local global i32 0, align 4
@vf610_nfc_write_page = common dso_local global i32 0, align 4
@vf610_nfc_read_page_raw = common dso_local global i32 0, align 4
@vf610_nfc_write_page_raw = common dso_local global i32 0, align 4
@vf610_nfc_read_oob = common dso_local global i32 0, align 4
@vf610_nfc_write_oob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @vf610_nfc_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf610_nfc_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.vf610_nfc*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %4, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip* %8)
  store %struct.vf610_nfc* %9, %struct.vf610_nfc** %5, align 8
  %10 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %11 = call i32 @vf610_nfc_init_controller(%struct.vf610_nfc* %10)
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* @PAGE_2K, align 4
  %33 = load i32, i32* @OOB_MAX, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 8
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %39 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %159

44:                                               ; preds = %24
  %45 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NAND_ECC_HW, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %159

52:                                               ; preds = %44
  %53 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_2K, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %65 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %159

70:                                               ; preds = %58, %52
  %71 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %81 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ENXIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %159

86:                                               ; preds = %70
  %87 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 64
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %93 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %92, i32 0, i32 1
  store i32 64, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %96 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %95, i32* @nand_ooblayout_lp_ops)
  %97 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 32
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load i32, i32* @ECC_60_BYTE, align 4
  %104 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %105 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i32 60, i32* %108, align 8
  br label %130

109:                                              ; preds = %94
  %110 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 24
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i32, i32* @ECC_45_BYTE, align 4
  %117 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %118 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %120 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  store i32 45, i32* %121, align 8
  br label %129

122:                                              ; preds = %109
  %123 = load %struct.vf610_nfc*, %struct.vf610_nfc** %5, align 8
  %124 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @ENXIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %159

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %102
  %131 = load i32, i32* @vf610_nfc_read_page, align 4
  %132 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %133 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 9
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @vf610_nfc_write_page, align 4
  %136 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %137 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 8
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @vf610_nfc_read_page_raw, align 4
  %140 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %141 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 7
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @vf610_nfc_write_page_raw, align 4
  %144 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %145 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 6
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @vf610_nfc_read_oob, align 4
  %148 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %149 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 5
  store i32 %147, i32* %150, align 8
  %151 = load i32, i32* @vf610_nfc_write_oob, align 4
  %152 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %153 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @PAGE_2K, align 4
  %156 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %157 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 8
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %130, %122, %79, %63, %51, %37
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.vf610_nfc* @chip_to_nfc(%struct.nand_chip*) #1

declare dso_local i32 @vf610_nfc_init_controller(%struct.vf610_nfc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
