; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_init_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_init_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { %struct.bch_geometry, %struct.nand_chip }
%struct.bch_geometry = type { i32, i32, i32 }
%struct.nand_chip = type { i32, %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_info = type { i32 }

@gpmi_ecc_read_page = common dso_local global i32 0, align 4
@gpmi_ecc_write_page = common dso_local global i32 0, align 4
@gpmi_ecc_read_oob = common dso_local global i32 0, align 4
@gpmi_ecc_write_oob = common dso_local global i32 0, align 4
@gpmi_ecc_read_page_raw = common dso_local global i32 0, align 4
@gpmi_ecc_write_page_raw = common dso_local global i32 0, align 4
@gpmi_ecc_read_oob_raw = common dso_local global i32 0, align 4
@gpmi_ecc_write_oob_raw = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@gpmi_ooblayout_ops = common dso_local global i32 0, align 4
@gpmi_ecc_read_subpage = common dso_local global i32 0, align 4
@NAND_SUBPAGE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @gpmi_init_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_init_last(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_ecc_ctrl*, align 8
  %7 = alloca %struct.bch_geometry*, align 8
  %8 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %9 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %10 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %9, i32 0, i32 1
  store %struct.nand_chip* %10, %struct.nand_chip** %4, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 1
  store %struct.nand_ecc_ctrl* %14, %struct.nand_ecc_ctrl** %6, align 8
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %16 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %15, i32 0, i32 0
  store %struct.bch_geometry* %16, %struct.bch_geometry** %7, align 8
  %17 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %18 = call i32 @gpmi_set_geometry(%struct.gpmi_nand_data* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %86

23:                                               ; preds = %1
  %24 = load i32, i32* @gpmi_ecc_read_page, align 4
  %25 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %26 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @gpmi_ecc_write_page, align 4
  %28 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %29 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @gpmi_ecc_read_oob, align 4
  %31 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %32 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @gpmi_ecc_write_oob, align 4
  %34 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %35 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @gpmi_ecc_read_page_raw, align 4
  %37 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %38 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @gpmi_ecc_write_page_raw, align 4
  %40 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %41 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @gpmi_ecc_read_oob_raw, align 4
  %43 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %44 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @gpmi_ecc_write_oob_raw, align 4
  %46 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %47 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @NAND_ECC_HW, align 4
  %49 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %50 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bch_geometry*, %struct.bch_geometry** %7, align 8
  %52 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bch_geometry*, %struct.bch_geometry** %7, align 8
  %57 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %60 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %62 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %61, i32* @gpmi_ooblayout_ops)
  %63 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %64 = call i64 @GPMI_IS_MX6(%struct.gpmi_nand_data* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %23
  %67 = load %struct.bch_geometry*, %struct.bch_geometry** %7, align 8
  %68 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bch_geometry*, %struct.bch_geometry** %7, align 8
  %71 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = srem i32 %73, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i32, i32* @gpmi_ecc_read_subpage, align 4
  %78 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %79 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @NAND_SUBPAGE_READ, align 4
  %81 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %76, %66, %23
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %21
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @gpmi_set_geometry(%struct.gpmi_nand_data*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i64 @GPMI_IS_MX6(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
