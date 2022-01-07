; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_region = type { i64, i64 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.denali_controller = type { i64 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @denali_ooblayout_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.denali_controller*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %13 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %12)
  store %struct.denali_controller* %13, %struct.denali_controller** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ERANGE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.denali_controller*, %struct.denali_controller** %9, align 8
  %25 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %29 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %34 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %19, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
