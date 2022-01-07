; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_preset_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_preset_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32 }
%struct.nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mxc_nand_host = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NFC_V2_CONFIG1_FP_INT = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG1_INT_MSK = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i64 0, align 8
@NFC_V1_V2_CONFIG1_ECC_EN = common dso_local global i32 0, align 4
@NFC_V2_CONFIG1_ECC_MODE_4 = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG1 = common dso_local global i32 0, align 4
@NFC_V21_RSLTSPARE_AREA = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKSTART_BLKADDR0 = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKSTART_BLKADDR1 = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKSTART_BLKADDR2 = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKSTART_BLKADDR3 = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKEND_BLKADDR0 = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKEND_BLKADDR1 = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKEND_BLKADDR2 = common dso_local global i32 0, align 4
@NFC_V21_UNLOCKEND_BLKADDR3 = common dso_local global i32 0, align 4
@NFC_V1_V2_WRPROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @preset_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preset_v2(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mxc_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %7)
  store %struct.nand_chip* %8, %struct.nand_chip** %3, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.mxc_nand_host* %10, %struct.mxc_nand_host** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @NFC_V2_CONFIG1_FP_INT, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %15 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @NFC_V1_V2_CONFIG1_INT_MSK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NAND_ECC_HW, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load i32, i32* @NFC_V1_V2_CONFIG1_ECC_EN, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %29
  %48 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %49 = call i32 @get_eccsize(%struct.mtd_info* %48)
  %50 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %51 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %53 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @NFC_V2_CONFIG1_ECC_MODE_4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @ffs(i32 %61)
  %63 = sub nsw i64 %62, 6
  %64 = call i32 @NFC_V2_CONFIG1_PPB(i64 %63)
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %24
  %68 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %69 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @NFC_V1_V2_CONFIG1, align 4
  %73 = call i32 @writew(i32 %71, i32 %72)
  %74 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 2
  %78 = load i32, i32* @NFC_V21_RSLTSPARE_AREA, align 4
  %79 = call i32 @writew(i32 %77, i32 %78)
  %80 = load i32, i32* @NFC_V1_V2_CONFIG, align 4
  %81 = call i32 @writew(i32 2, i32 %80)
  %82 = load i32, i32* @NFC_V21_UNLOCKSTART_BLKADDR0, align 4
  %83 = call i32 @writew(i32 0, i32 %82)
  %84 = load i32, i32* @NFC_V21_UNLOCKSTART_BLKADDR1, align 4
  %85 = call i32 @writew(i32 0, i32 %84)
  %86 = load i32, i32* @NFC_V21_UNLOCKSTART_BLKADDR2, align 4
  %87 = call i32 @writew(i32 0, i32 %86)
  %88 = load i32, i32* @NFC_V21_UNLOCKSTART_BLKADDR3, align 4
  %89 = call i32 @writew(i32 0, i32 %88)
  %90 = load i32, i32* @NFC_V21_UNLOCKEND_BLKADDR0, align 4
  %91 = call i32 @writew(i32 65535, i32 %90)
  %92 = load i32, i32* @NFC_V21_UNLOCKEND_BLKADDR1, align 4
  %93 = call i32 @writew(i32 65535, i32 %92)
  %94 = load i32, i32* @NFC_V21_UNLOCKEND_BLKADDR2, align 4
  %95 = call i32 @writew(i32 65535, i32 %94)
  %96 = load i32, i32* @NFC_V21_UNLOCKEND_BLKADDR3, align 4
  %97 = call i32 @writew(i32 65535, i32 %96)
  %98 = load i32, i32* @NFC_V1_V2_WRPROT, align 4
  %99 = call i32 @writew(i32 4, i32 %98)
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @get_eccsize(%struct.mtd_info*) #1

declare dso_local i32 @NFC_V2_CONFIG1_PPB(i64) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
