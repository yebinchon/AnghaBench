; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_get_bbt_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_bbt.c_get_bbt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32 }
%struct.nand_bbt_descr = type { i32*, i32, i32 }

@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@NAND_BBT_LASTBLOCK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, i32)* @get_bbt_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bbt_block(%struct.nand_chip* %0, %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.nand_bbt_descr*, align 8
  %8 = alloca %struct.nand_bbt_descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store %struct.nand_bbt_descr* %1, %struct.nand_bbt_descr** %7, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 2
  %19 = call i32 @nanddev_target_size(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %21 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %44

28:                                               ; preds = %4
  %29 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %30 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = ashr i32 %35, %42
  store i32 %43, i32* %5, align 4
  br label %127

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %47 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %45, %48
  store i32 %49, i32* %14, align 4
  %50 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %51 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 2
  %59 = call i32 @nanddev_ntargets(i32* %58)
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %56, %44
  %63 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %64 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @NAND_BBT_LASTBLOCK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 %70, %72
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %75, %69
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %121, %79
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %83 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %16, align 4
  %92 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @bbt_get_entry(%struct.nand_chip* %92, i32 %93)
  switch i32 %94, label %96 [
    i32 128, label %95
    i32 129, label %95
  ]

95:                                               ; preds = %86, %86
  br label %121

96:                                               ; preds = %86
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %99 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %102 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %100, %103
  %105 = shl i32 %97, %104
  store i32 %105, i32* %13, align 4
  %106 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %107 = icmp ne %struct.nand_bbt_descr* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %96
  %109 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %8, align 8
  %110 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %108, %96
  %119 = load i32, i32* %16, align 4
  store i32 %119, i32* %5, align 4
  br label %127

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %95
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %80

124:                                              ; preds = %80
  %125 = load i32, i32* @ENOSPC, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %124, %118, %28
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @nanddev_target_size(i32*) #1

declare dso_local i32 @nanddev_ntargets(i32*) #1

declare dso_local i32 @bbt_get_entry(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
