; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_on_die_8_ooblayout_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_micron.c_micron_nand_on_die_8_ooblayout_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_region = type { i64, i64 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @micron_nand_on_die_8_ooblayout_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micron_nand_on_die_8_ooblayout_ecc(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %19, %23
  %25 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %26 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %32 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %16, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
