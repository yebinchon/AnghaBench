; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.meson_nfc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.meson_nfc_nand_chip = type { i32* }
%struct.mtd_info = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s:nand%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@NAND_BBT_NO_OOB = common dso_local global i32 0, align 4
@NAND_NO_SUBPAGE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to ECC init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@meson_ooblayout_ops = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@meson_nfc_write_page_raw = common dso_local global i32 0, align 4
@meson_nfc_write_page_hwecc = common dso_local global i32 0, align 4
@nand_write_oob_std = common dso_local global i8* null, align 8
@meson_nfc_read_page_raw = common dso_local global i32 0, align 4
@meson_nfc_read_page_hwecc = common dso_local global i32 0, align 4
@meson_nfc_read_oob_raw = common dso_local global i32 0, align 4
@meson_nfc_read_oob = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"16bits bus width not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @meson_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.meson_nfc*, align 8
  %5 = alloca %struct.meson_nfc_nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.meson_nfc* %10, %struct.meson_nfc** %4, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = call %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip* %11)
  store %struct.meson_nfc_nand_chip* %12, %struct.meson_nfc_nand_chip** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %6, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 1024
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %1
  %24 = load %struct.meson_nfc*, %struct.meson_nfc** %4, align 8
  %25 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load %struct.meson_nfc*, %struct.meson_nfc** %4, align 8
  %29 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_name(i32 %30)
  %32 = load %struct.meson_nfc_nand_chip*, %struct.meson_nfc_nand_chip** %5, align 8
  %33 = getelementptr inbounds %struct.meson_nfc_nand_chip, %struct.meson_nfc_nand_chip* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @devm_kasprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  %38 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %23
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %160

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @NAND_BBT_NO_OOB, align 4
  %57 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i32, i32* @NAND_NO_SUBPAGE_WRITE, align 4
  %63 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %68 = load %struct.meson_nfc*, %struct.meson_nfc** %4, align 8
  %69 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %75, %78
  %80 = call i32 @nand_ecc_choose_conf(%struct.nand_chip* %67, i32 %72, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %61
  %84 = load %struct.meson_nfc*, %struct.meson_nfc** %4, align 8
  %85 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %160

90:                                               ; preds = %61
  %91 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %92 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %91, i32* @meson_ooblayout_ops)
  %93 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %94 = call i32 @meson_nand_bch_mode(%struct.nand_chip* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %160

100:                                              ; preds = %90
  %101 = load i32, i32* @NAND_ECC_HW, align 4
  %102 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 8
  store i32 %101, i32* %104, align 8
  %105 = load i32, i32* @meson_nfc_write_page_raw, align 4
  %106 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 7
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @meson_nfc_write_page_hwecc, align 4
  %110 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  store i32 %109, i32* %112, align 8
  %113 = load i8*, i8** @nand_write_oob_std, align 8
  %114 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  store i8* %113, i8** %116, align 8
  %117 = load i8*, i8** @nand_write_oob_std, align 8
  %118 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* @meson_nfc_read_page_raw, align 4
  %122 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %123 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @meson_nfc_read_page_hwecc, align 4
  %126 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %127 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 8
  %129 = load i32, i32* @meson_nfc_read_oob_raw, align 4
  %130 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %131 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @meson_nfc_read_oob, align 4
  %134 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %135 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %138 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %100
  %144 = load %struct.meson_nfc*, %struct.meson_nfc** %4, align 8
  %145 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dev_err(i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %160

150:                                              ; preds = %100
  %151 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %152 = call i32 @meson_chip_buffer_init(%struct.nand_chip* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %160

158:                                              ; preds = %150
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %155, %143, %97, %83, %44
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.meson_nfc_nand_chip* @to_meson_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @devm_kasprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @nand_ecc_choose_conf(%struct.nand_chip*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @meson_nand_bch_mode(%struct.nand_chip*) #1

declare dso_local i32 @meson_chip_buffer_init(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
