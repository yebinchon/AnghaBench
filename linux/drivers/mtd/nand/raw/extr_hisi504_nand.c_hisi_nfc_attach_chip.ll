; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_hisi_nfc_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mtd_info = type { i32, i64 }
%struct.hinfc_host = type { i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HINFC504_CON = common dso_local global i32 0, align 4
@HINFC504_CON_PAGESIZE_MASK = common dso_local global i32 0, align 4
@HINFC504_CON_PAGEISZE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"NON-2KB page size nand flash\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @hisi_nfc_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_nfc_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.hinfc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip* %9)
  store %struct.hinfc_host* %10, %struct.hinfc_host** %5, align 8
  %11 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %12 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %23 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %22, i32 0, i32 2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @dmam_alloc_coherent(i32 %13, i64 %21, i64* %23, i32 %24)
  %26 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %27 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %29 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %97

35:                                               ; preds = %1
  %36 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %37 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %45 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %47 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i32 @memset(i32 %48, i32 255, i64 %56)
  %58 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %59 = load i32, i32* @HINFC504_CON, align 4
  %60 = call i32 @hinfc_read(%struct.hinfc_host* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @HINFC504_CON_PAGESIZE_MASK, align 4
  %62 = load i32, i32* @HINFC504_CON_PAGEISZE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %75 [
    i32 2048, label %70
  ]

70:                                               ; preds = %35
  %71 = load i32, i32* @HINFC504_CON_PAGEISZE_SHIFT, align 4
  %72 = shl i32 1, %71
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %82

75:                                               ; preds = %35
  %76 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %77 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %97

82:                                               ; preds = %70
  %83 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @HINFC504_CON, align 4
  %86 = call i32 @hinfc_write(%struct.hinfc_host* %83, i32 %84, i32 %85)
  %87 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NAND_ECC_HW, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load %struct.hinfc_host*, %struct.hinfc_host** %5, align 8
  %95 = call i32 @hisi_nfc_ecc_probe(%struct.hinfc_host* %94)
  br label %96

96:                                               ; preds = %93, %82
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %75, %32
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dmam_alloc_coherent(i32, i64, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @hinfc_read(%struct.hinfc_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hinfc_write(%struct.hinfc_host*, i32, i32) #1

declare dso_local i32 @hisi_nfc_ecc_probe(%struct.hinfc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
