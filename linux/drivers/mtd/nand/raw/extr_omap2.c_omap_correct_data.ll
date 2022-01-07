; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_correct_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_correct_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.omap_nand_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@NAND_ECC_HW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @omap_correct_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_correct_data(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.omap_nand_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call i32 @nand_to_mtd(%struct.nand_chip* %15)
  %17 = call %struct.omap_nand_info* @mtd_to_omap(i32 %16)
  store %struct.omap_nand_info* %17, %struct.omap_nand_info** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %19 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NAND_ECC_HW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %27 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 2048
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 4, i32* %11, align 4
  br label %34

33:                                               ; preds = %25, %4
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %32
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i64 @memcmp(i32* %40, i32* %41, i32 3)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @omap_compare_ecc(i32* %45, i32* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %5, align 4
  br label %69

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %53, %39
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32* %59, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 512
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %35

67:                                               ; preds = %35
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %51
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.omap_nand_info* @mtd_to_omap(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @omap_compare_ecc(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
