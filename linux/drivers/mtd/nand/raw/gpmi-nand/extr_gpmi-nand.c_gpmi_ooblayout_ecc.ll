; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ooblayout_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_ooblayout_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_region = type { i64, i64 }
%struct.nand_chip = type { i32 }
%struct.gpmi_nand_data = type { %struct.bch_geometry }
%struct.bch_geometry = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @gpmi_ooblayout_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_ooblayout_ecc(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.gpmi_nand_data*, align 8
  %10 = alloca %struct.bch_geometry*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %11)
  store %struct.nand_chip* %12, %struct.nand_chip** %8, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %14 = call %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip* %13)
  store %struct.gpmi_nand_data* %14, %struct.gpmi_nand_data** %9, align 8
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %9, align 8
  %16 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %15, i32 0, i32 0
  store %struct.bch_geometry* %16, %struct.bch_geometry** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %24 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.bch_geometry*, %struct.bch_geometry** %10, align 8
  %26 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.gpmi_nand_data* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
