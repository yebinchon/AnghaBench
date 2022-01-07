; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_preset_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_preset_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.nand_chip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mxc_nand_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NAND_ECC_HW = common dso_local global i64 0, align 8
@NFC_V1_V2_CONFIG1_ECC_EN = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG1_INT_MSK = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG1 = common dso_local global i32 0, align 4
@NFC_V1_V2_CONFIG = common dso_local global i32 0, align 4
@NFC_V1_UNLOCKSTART_BLKADDR = common dso_local global i32 0, align 4
@NFC_V1_UNLOCKEND_BLKADDR = common dso_local global i32 0, align 4
@NFC_V1_V2_WRPROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @preset_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preset_v1(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mxc_nand_host*, align 8
  %5 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %7 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %6)
  store %struct.nand_chip* %7, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %8)
  store %struct.mxc_nand_host* %9, %struct.mxc_nand_host** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NAND_ECC_HW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @NFC_V1_V2_CONFIG1_ECC_EN, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %16, %1
  %26 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %27 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @NFC_V1_V2_CONFIG1_INT_MSK, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %38 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @NFC_V1_V2_CONFIG1, align 4
  %41 = call i32 @writew(i32 %39, i32 %40)
  %42 = load i32, i32* @NFC_V1_V2_CONFIG, align 4
  %43 = call i32 @writew(i32 2, i32 %42)
  %44 = load i32, i32* @NFC_V1_UNLOCKSTART_BLKADDR, align 4
  %45 = call i32 @writew(i32 0, i32 %44)
  %46 = load i32, i32* @NFC_V1_UNLOCKEND_BLKADDR, align 4
  %47 = call i32 @writew(i32 65535, i32 %46)
  %48 = load i32, i32* @NFC_V1_V2_WRPROT, align 4
  %49 = call i32 @writew(i32 4, i32 %48)
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
