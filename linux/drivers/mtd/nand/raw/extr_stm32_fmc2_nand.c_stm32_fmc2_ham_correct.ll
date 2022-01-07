; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_ham_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_stm32_fmc2_nand.c_stm32_fmc2_ham_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @stm32_fmc2_ham_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_fmc2_ham_correct(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %17, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %34, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %39, %41
  %43 = load i32, i32* %13, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %42, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

53:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %73, %53
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = srem i32 %58, 4
  switch i32 %59, label %65 [
    i32 2, label %60
    i32 1, label %64
  ]

60:                                               ; preds = %57
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %57, %60
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EBADMSG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %108

68:                                               ; preds = %64
  %69 = load i32, i32* %17, align 4
  %70 = shl i32 %69, 1
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %15, align 4
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %54

76:                                               ; preds = %54
  store i32 1, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %96, %76
  %78 = load i32, i32* %16, align 4
  %79 = icmp slt i32 %78, 9
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load i32, i32* %15, align 4
  %82 = srem i32 %81, 4
  switch i32 %82, label %88 [
    i32 2, label %83
    i32 1, label %87
  ]

83:                                               ; preds = %80
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %80, %83
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @EBADMSG, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %108

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  %93 = shl i32 %92, 1
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %15, align 4
  %95 = ashr i32 %94, 2
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 1, %100
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %106, %101
  store i32 %107, i32* %105, align 4
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %99, %88, %65, %52
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
