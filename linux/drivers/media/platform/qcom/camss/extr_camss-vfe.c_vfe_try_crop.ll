; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_line = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_rect = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_rect*, i32)* @vfe_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_try_crop(%struct.vfe_line* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_rect* %2, i32 %3) #0 {
  %5 = alloca %struct.vfe_line*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_rect*, align 8
  store %struct.vfe_line* %0, %struct.vfe_line** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.vfe_line*, %struct.vfe_line** %5, align 8
  %11 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.v4l2_rect* @__vfe_get_compose(%struct.vfe_line* %10, %struct.v4l2_subdev_pad_config* %11, i32 %12)
  store %struct.v4l2_rect* %13, %struct.v4l2_rect** %9, align 8
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %4
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %39, %27
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %49
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %63
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %9, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %75, %63
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %88, 15
  %90 = ashr i64 %89, 1
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = and i64 %97, -16
  store i64 %98, i64* %96, align 8
  %99 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %101, 16
  br i1 %102, label %103, label %108

103:                                              ; preds = %85
  %104 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %106, i32 0, i32 0
  store i64 16, i64* %107, align 8
  br label %108

108:                                              ; preds = %103, %85
  %109 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %116, i32 0, i32 2
  store i64 4, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %108
  ret void
}

declare dso_local %struct.v4l2_rect* @__vfe_get_compose(%struct.vfe_line*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
