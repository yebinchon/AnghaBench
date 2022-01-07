; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_calculate_ecc_bch_multi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_calculate_ecc_bch_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*)* @omap_calculate_ecc_bch_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_calculate_ecc_bch_multi(%struct.mtd_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.omap_nand_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %13)
  store %struct.omap_nand_info* %14, %struct.omap_nand_info** %8, align 8
  %15 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %16 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %21 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @readl(i32 %23)
  %25 = ashr i32 %24, 4
  %26 = and i32 %25, 7
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %49, %3
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @_omap_calculate_ecc_bch(%struct.mtd_info* %35, i32* %36, i32* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %29

52:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_omap_calculate_ecc_bch(%struct.mtd_info*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
