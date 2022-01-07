; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_align_erase_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_align_erase_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32*, i32*, i32)* @mmc_align_erase_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_align_erase_size(%struct.mmc_card* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_power_of_2(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @round_up(i32 %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sub i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %40

39:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %97

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @round_down(i32 %41, i32 %44)
  store i32 %45, i32* %11, align 4
  br label %85

46:                                               ; preds = %4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %49 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = urem i32 %47, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %56 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %71

70:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %97

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %75 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = urem i32 %73, %76
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %80, %72
  br label %85

85:                                               ; preds = %84, %40
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %97

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %90, %91
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %89, %88, %70, %39
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
