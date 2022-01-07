; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_correct_1bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_davinci_nand.c_nand_davinci_correct_1bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @nand_davinci_correct_1bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_davinci_correct_1bit(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %15, %19
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %20, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %28, %32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %33, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %4
  %45 = load i32, i32* %12, align 4
  %46 = ashr i32 %45, 12
  %47 = load i32, i32* %12, align 4
  %48 = xor i32 %46, %47
  %49 = and i32 %48, 4095
  %50 = icmp eq i32 %49, 4095
  br i1 %50, label %51, label %74

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, 15
  %54 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %12, align 4
  %61 = ashr i32 %60, 12
  %62 = and i32 %61, 7
  %63 = call i32 @BIT(i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = ashr i32 %65, 15
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %69, %63
  store i32 %70, i32* %68, align 4
  store i32 1, i32* %5, align 4
  br label %85

71:                                               ; preds = %51
  %72 = load i32, i32* @EBADMSG, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %85

74:                                               ; preds = %44
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  store i32 1, i32* %5, align 4
  br label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @EBADMSG, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %81, %80, %71, %59
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
