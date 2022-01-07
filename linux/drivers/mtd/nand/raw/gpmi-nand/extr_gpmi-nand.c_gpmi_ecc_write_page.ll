; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.mtd_info = type { i32 }
%struct.gpmi_nand_data = type { i32, i32*, i32*, i64, i32, %struct.bch_geometry }
%struct.bch_geometry = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"ecc write page.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @gpmi_ecc_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ecc_write_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.gpmi_nand_data*, align 8
  %11 = alloca %struct.bch_geometry*, align 8
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.gpmi_nand_data* %16, %struct.gpmi_nand_data** %10, align 8
  %17 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %18 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %17, i32 0, i32 5
  store %struct.bch_geometry* %18, %struct.bch_geometry** %11, align 8
  %19 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %20 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %24 = call i32 @gpmi_bch_layout_std(%struct.gpmi_nand_data* %23)
  %25 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %26 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %28 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %34 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32* %29, i32* %32, i32 %35)
  %37 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %38 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %4
  %42 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %43 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32* %44, i32* %45, i32 %48)
  %50 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %51 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %6, align 8
  %53 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %54 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %55 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %58 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @block_mark_swapping(%struct.gpmi_nand_data* %53, i32* %56, i32* %59)
  br label %61

61:                                               ; preds = %41, %4
  %62 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.bch_geometry*, %struct.bch_geometry** %11, align 8
  %66 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @nand_prog_page_op(%struct.nand_chip* %62, i32 %63, i32 0, i32* %64, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  ret i32 %69
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @gpmi_bch_layout_std(%struct.gpmi_nand_data*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @block_mark_swapping(%struct.gpmi_nand_data*, i32*, i32*) #1

declare dso_local i32 @nand_prog_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
