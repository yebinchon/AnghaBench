; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_ch_ext_16up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_ch_ext_16up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i32)* @solo_v4l2_ch_ext_16up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_v4l2_ch_ext_16up(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %20 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %23 = call i32 @solo_vlines(%struct.solo_dev* %22)
  %24 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %25 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %28 = call i32 @solo_vlines(%struct.solo_dev* %27)
  %29 = call i32 @solo_win_setup(%struct.solo_dev* %17, i32 %18, i32 %21, i32 %23, i32 %26, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %13

33:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %101

34:                                               ; preds = %2
  %35 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %36 = call i32 @solo_vlines(%struct.solo_dev* %35)
  %37 = sdiv i32 %36, 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %39 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %94, %34
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %100

45:                                               ; preds = %42
  %46 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @solo_win_setup(%struct.solo_dev* %46, i32 %48, i32 0, i32 %49, i32 %50, i32 %53, i32 5)
  %55 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 2
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @solo_win_setup(%struct.solo_dev* %55, i32 %58, i32 %59, i32 %60, i32 %62, i32 %65, i32 5)
  %67 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 %69, 2
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %71, 2
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %74, 3
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @solo_win_setup(%struct.solo_dev* %67, i32 %70, i32 %72, i32 %73, i32 %75, i32 %78, i32 5)
  %80 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 4
  %83 = add nsw i32 %82, 3
  %84 = load i32, i32* %8, align 4
  %85 = mul nsw i32 %84, 3
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %88 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @solo_win_setup(%struct.solo_dev* %80, i32 %83, i32 %85, i32 %86, i32 %89, i32 %92, i32 5)
  br label %94

94:                                               ; preds = %45
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %42

100:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %33
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @solo_win_setup(%struct.solo_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @solo_vlines(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
