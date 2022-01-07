; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_bch_layout_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_bch_layout_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32, i32, %struct.bch_geometry }
%struct.bch_geometry = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpmi_nand_data*)* @gpmi_bch_layout_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpmi_bch_layout_std(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca %struct.gpmi_nand_data*, align 8
  %3 = alloca %struct.bch_geometry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %2, align 8
  %7 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %8 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %7, i32 0, i32 2
  store %struct.bch_geometry* %8, %struct.bch_geometry** %3, align 8
  %9 = load %struct.bch_geometry*, %struct.bch_geometry** %3, align 8
  %10 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load %struct.bch_geometry*, %struct.bch_geometry** %3, align 8
  %14 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bch_geometry*, %struct.bch_geometry** %3, align 8
  %17 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bch_geometry*, %struct.bch_geometry** %3, align 8
  %20 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @BF_BCH_FLASH0LAYOUT0_NBLOCKS(i64 %22)
  %24 = load %struct.bch_geometry*, %struct.bch_geometry** %3, align 8
  %25 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BF_BCH_FLASH0LAYOUT0_META_SIZE(i32 %26)
  %28 = or i32 %23, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %31 = call i32 @BF_BCH_FLASH0LAYOUT0_ECC0(i32 %29, %struct.gpmi_nand_data* %30)
  %32 = or i32 %28, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %35 = call i32 @BF_BCH_FLASH0LAYOUT0_GF(i32 %33, %struct.gpmi_nand_data* %34)
  %36 = or i32 %32, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %39 = call i32 @BF_BCH_FLASH0LAYOUT0_DATA0_SIZE(i32 %37, %struct.gpmi_nand_data* %38)
  %40 = or i32 %36, %39
  %41 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %42 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bch_geometry*, %struct.bch_geometry** %3, align 8
  %44 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BF_BCH_FLASH0LAYOUT1_PAGE_SIZE(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %49 = call i32 @BF_BCH_FLASH0LAYOUT1_ECCN(i32 %47, %struct.gpmi_nand_data* %48)
  %50 = or i32 %46, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %53 = call i32 @BF_BCH_FLASH0LAYOUT1_GF(i32 %51, %struct.gpmi_nand_data* %52)
  %54 = or i32 %50, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %57 = call i32 @BF_BCH_FLASH0LAYOUT1_DATAN_SIZE(i32 %55, %struct.gpmi_nand_data* %56)
  %58 = or i32 %54, %57
  %59 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %60 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_NBLOCKS(i64) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_META_SIZE(i32) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_ECC0(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_GF(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT0_DATA0_SIZE(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_PAGE_SIZE(i32) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_ECCN(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_GF(i32, %struct.gpmi_nand_data*) #1

declare dso_local i32 @BF_BCH_FLASH0LAYOUT1_DATAN_SIZE(i32, %struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
