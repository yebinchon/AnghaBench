; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_calculate_4bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_calculate_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.davinci_nand_info = type { i64 }

@NAND_4BIT_ECC1_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @nand_davinci_calculate_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_davinci_calculate_4bit(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.davinci_nand_info*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call i32 @nand_to_mtd(%struct.nand_chip* %12)
  %14 = call %struct.davinci_nand_info* @to_davinci_nand(i32 %13)
  store %struct.davinci_nand_info* %14, %struct.davinci_nand_info** %8, align 8
  %15 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %8, align 8
  %16 = getelementptr inbounds %struct.davinci_nand_info, %struct.davinci_nand_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %8, align 8
  %21 = load i32, i32* @NAND_4BIT_ECC1_OFFSET, align 4
  %22 = call i32 @davinci_nand_readl(%struct.davinci_nand_info* %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %90

23:                                               ; preds = %3
  %24 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %8, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %26 = call i32 @nand_davinci_readecc_4bit(%struct.davinci_nand_info* %24, i32* %25)
  store i32 0, i32* %11, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %27, i32** %10, align 8
  br label %28

28:                                               ; preds = %84, %23
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %89

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 3
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 14
  %47 = and i32 %46, 252
  %48 = or i32 %42, %47
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 22
  %55 = and i32 %54, 15
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 4
  %60 = and i32 %59, 240
  %61 = or i32 %55, %60
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = and i32 %67, 63
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 10
  %73 = and i32 %72, 192
  %74 = or i32 %68, %73
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 18
  %81 = and i32 %80, 255
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %84

84:                                               ; preds = %31
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32* %88, i32** %10, align 8
  br label %28

89:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @davinci_nand_readl(%struct.davinci_nand_info*, i32) #1

declare dso_local i32 @nand_davinci_readecc_4bit(%struct.davinci_nand_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
