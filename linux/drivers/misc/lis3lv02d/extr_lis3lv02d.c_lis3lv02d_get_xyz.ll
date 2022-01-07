; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_get_xyz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_get_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i64, i32 (%struct.lis3lv02d*, i32)*, i32, %struct.TYPE_2__, i32 (%struct.lis3lv02d*, i32, i32, i64*)* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@WAI_12B = common dso_local global i64 0, align 8
@OUTX_L = common dso_local global i32 0, align 4
@OUTX = common dso_local global i32 0, align 4
@OUTY = common dso_local global i32 0, align 4
@OUTZ = common dso_local global i32 0, align 4
@LIS3_ACCURACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lis3lv02d*, i32*, i32*, i32*)* @lis3lv02d_get_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lis3lv02d_get_xyz(%struct.lis3lv02d* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.lis3lv02d*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [5 x i64], align 16
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %14 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %13, i32 0, i32 4
  %15 = load i32 (%struct.lis3lv02d*, i32, i32, i64*)*, i32 (%struct.lis3lv02d*, i32, i32, i64*)** %14, align 8
  %16 = icmp ne i32 (%struct.lis3lv02d*, i32, i32, i64*)* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %4
  %18 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %19 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WAI_12B, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %25 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %24, i32 0, i32 4
  %26 = load i32 (%struct.lis3lv02d*, i32, i32, i64*)*, i32 (%struct.lis3lv02d*, i32, i32, i64*)** %25, align 8
  %27 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %28 = load i32, i32* @OUTX_L, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %30 = bitcast i32* %29 to i64*
  %31 = call i32 %26(%struct.lis3lv02d* %27, i32 %28, i32 6, i64* %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %45, %23
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %32

48:                                               ; preds = %32
  br label %74

49:                                               ; preds = %17
  %50 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %51 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %50, i32 0, i32 4
  %52 = load i32 (%struct.lis3lv02d*, i32, i32, i64*)*, i32 (%struct.lis3lv02d*, i32, i32, i64*)** %51, align 8
  %53 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %54 = load i32, i32* @OUTX, align 4
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 0
  %56 = call i32 %52(%struct.lis3lv02d* %53, i32 %54, i32 5, i64* %55)
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %70, %49
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [5 x i64], [5 x i64]* %12, i64 0, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %57

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %48
  br label %97

75:                                               ; preds = %4
  %76 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %77 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %76, i32 0, i32 1
  %78 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %77, align 8
  %79 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %80 = load i32, i32* @OUTX, align 4
  %81 = call i32 %78(%struct.lis3lv02d* %79, i32 %80)
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %81, i32* %82, align 4
  %83 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %84 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %83, i32 0, i32 1
  %85 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %84, align 8
  %86 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %87 = load i32, i32* @OUTY, align 4
  %88 = call i32 %85(%struct.lis3lv02d* %86, i32 %87)
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %91 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %90, i32 0, i32 1
  %92 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %91, align 8
  %93 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %94 = load i32, i32* @OUTZ, align 4
  %95 = call i32 %92(%struct.lis3lv02d* %93, i32 %94)
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %75, %74
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %115, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %107 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %105, %108
  %110 = load i32, i32* @LIS3_ACCURACY, align 4
  %111 = sdiv i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %98

118:                                              ; preds = %98
  %119 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %120 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %124 = call i32 @lis3lv02d_get_axis(i32 %122, i32* %123)
  %125 = load i32*, i32** %6, align 8
  store i32 %124, i32* %125, align 4
  %126 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %127 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %131 = call i32 @lis3lv02d_get_axis(i32 %129, i32* %130)
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  %133 = load %struct.lis3lv02d*, %struct.lis3lv02d** %5, align 8
  %134 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %138 = call i32 @lis3lv02d_get_axis(i32 %136, i32* %137)
  %139 = load i32*, i32** %8, align 8
  store i32 %138, i32* %139, align 4
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @lis3lv02d_get_axis(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
