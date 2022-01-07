; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_v2_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_v2_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @mxc_v2_ooblayout_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_v2_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 9
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 16, i32 26
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %34, 512
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %40 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %39, i32 0, i32 1
  store i32 5, i32* %40, align 4
  br label %46

41:                                               ; preds = %31
  %42 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %43 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %42, i32 0, i32 0
  store i32 2, i32* %43, align 4
  %44 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %45 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %44, i32 0, i32 1
  store i32 4, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %55

47:                                               ; preds = %28
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %54 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %53, i32 0, i32 1
  store i32 7, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %46
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
