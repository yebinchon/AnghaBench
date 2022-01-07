; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i64 }
%struct.mtd_info = type { i64 }
%struct.mtd_oob_region = type { i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @gpmi_ecc_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ecc_write_oob(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.mtd_oob_region, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %6, align 8
  %10 = bitcast %struct.mtd_oob_region* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %12 = call i32 @mtd_ooblayout_free(%struct.mtd_info* %11, i32 0, %struct.mtd_oob_region* %7)
  %13 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = call i32 @nand_is_slc(%struct.nand_chip* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %19
  %27 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %31, %33
  %35 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %37, %39
  %41 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @nand_prog_page_op(%struct.nand_chip* %27, i32 %28, i64 %34, i64 %40, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %26, %23, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mtd_ooblayout_free(%struct.mtd_info*, i32, %struct.mtd_oob_region*) #1

declare dso_local i32 @nand_is_slc(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_op(%struct.nand_chip*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
