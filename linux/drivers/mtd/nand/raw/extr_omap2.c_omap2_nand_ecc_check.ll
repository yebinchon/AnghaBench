; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap2_nand_ecc_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap2_nand_ecc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_nand_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CONFIG_MTD_NAND_ECC_SW_BCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CONFIG_MTD_NAND_ECC_SW_BCH not enabled\0A\00", align 1
@CONFIG_MTD_NAND_OMAP_BCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CONFIG_MTD_NAND_OMAP_BCH not enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ELM not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_nand_info*)* @omap2_nand_ecc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_nand_ecc_check(%struct.omap_nand_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_nand_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_nand_info* %0, %struct.omap_nand_info** %3, align 8
  %7 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %8 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %12 [
    i32 130, label %10
    i32 128, label %10
    i32 131, label %11
    i32 129, label %11
    i32 132, label %11
  ]

10:                                               ; preds = %1, %1
  store i32 0, i32* %5, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %13

11:                                               ; preds = %1, %1, %1
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* @CONFIG_MTD_NAND_ECC_SW_BCH, align 4
  %18 = call i32 @IS_ENABLED(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %22 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* @CONFIG_MTD_NAND_OMAP_BCH, align 4
  %31 = call i32 @IS_ENABLED(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %35 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %44 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %45 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @is_elm_present(%struct.omap_nand_info* %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %51 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

55:                                               ; preds = %42, %39
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %49, %33, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @is_elm_present(%struct.omap_nand_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
