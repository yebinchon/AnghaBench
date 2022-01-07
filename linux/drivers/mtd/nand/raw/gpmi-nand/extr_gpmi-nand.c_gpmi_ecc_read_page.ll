; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ecc_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.gpmi_nand_data = type { i32, i64, %struct.bch_geometry }
%struct.bch_geometry = type { i32, i32, i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @gpmi_ecc_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ecc_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpmi_nand_data*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca %struct.bch_geometry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.gpmi_nand_data* %16, %struct.gpmi_nand_data** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %11, align 8
  %19 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %20 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %19, i32 0, i32 2
  store %struct.bch_geometry* %20, %struct.bch_geometry** %12, align 8
  %21 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %22 = call i32 @gpmi_bch_layout_std(%struct.gpmi_nand_data* %21)
  %23 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %24 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %29 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nand_read_page_op(%struct.nand_chip* %25, i32 %26, i32 0, i32* %27, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %74

36:                                               ; preds = %4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %40 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bch_geometry*, %struct.bch_geometry** %12, align 8
  %43 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gpmi_count_bitflips(%struct.nand_chip* %37, i32* %38, i32 0, i32 %41, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %49 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @block_mark_swapping(%struct.gpmi_nand_data* %46, i32* %47, i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %36
  %55 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i32* %57, i32 -1, i32 %60)
  %62 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %10, align 8
  %63 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %69 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %54, %36
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %34
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @gpmi_bch_layout_std(%struct.gpmi_nand_data*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @gpmi_count_bitflips(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @block_mark_swapping(%struct.gpmi_nand_data*, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
