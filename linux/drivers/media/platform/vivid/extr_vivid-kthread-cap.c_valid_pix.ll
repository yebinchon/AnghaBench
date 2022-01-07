; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_valid_pix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_valid_pix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vivid_dev*, i32, i32, i32, i32)* @valid_pix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_pix(%struct.vivid_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vivid_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.v4l2_rect*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %5
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %25 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 7
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = sdiv i32 %34, 8
  %36 = add i32 %33, %35
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 7
  %42 = shl i32 1, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %99

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %5
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %95, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %48
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %7, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.v4l2_rect* %61, %struct.v4l2_rect** %15, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %64 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %54
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %70 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = icmp slt i32 %68, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = icmp slt i32 %84, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %99

94:                                               ; preds = %83, %77, %67, %54
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %48

98:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %93, %45
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
