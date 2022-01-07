; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_calc_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_calc_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_veu_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_veu_dev*, i32, i32, i32, i32*, i32*, i32*)* @sh_veu_calc_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_veu_calc_scale(%struct.sh_veu_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.sh_veu_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sh_veu_dev* %0, %struct.sh_veu_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %13, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %14, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32*, i32** %12, align 8
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  br label %104

30:                                               ; preds = %7
  %31 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %8, align 8
  %32 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 4096, %40
  %42 = load i32, i32* %10, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sdiv i32 %44, 4096
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 4096
  %51 = sub nsw i32 %47, %50
  %52 = and i32 %51, -8
  %53 = load i32*, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %62 [
    i32 2048, label %56
    i32 1024, label %58
    i32 512, label %60
  ]

56:                                               ; preds = %39
  %57 = load i32*, i32** %14, align 8
  store i32 1, i32* %57, align 4
  br label %62

58:                                               ; preds = %39
  %59 = load i32*, i32** %14, align 8
  store i32 3, i32* %59, align 4
  br label %62

60:                                               ; preds = %39
  %61 = load i32*, i32** %14, align 8
  store i32 7, i32* %61, align 4
  br label %62

62:                                               ; preds = %39, %60, %58, %56
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %104

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %35, %30
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 1
  %71 = mul nsw i32 4096, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = sdiv i32 %71, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sdiv i32 %75, 4096
  %77 = load i32*, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 4096
  %82 = sub nsw i32 %78, %81
  %83 = load i32*, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 7
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %68
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, -8
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 8
  store i32 %98, i32* %96, align 4
  br label %103

99:                                               ; preds = %88
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 8
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %29, %66, %103, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
