; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_try_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_try_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.v4l2_window = type { i32*, i64, i32*, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_vout_try_window(%struct.v4l2_framebuffer* %0, %struct.v4l2_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_framebuffer*, align 8
  %5 = alloca %struct.v4l2_window*, align 8
  %6 = alloca %struct.v4l2_rect, align 8
  store %struct.v4l2_framebuffer* %0, %struct.v4l2_framebuffer** %4, align 8
  store %struct.v4l2_window* %1, %struct.v4l2_window** %5, align 8
  %7 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %7, i32 0, i32 4
  %9 = bitcast %struct.v4l2_rect* %6 to i8*
  %10 = bitcast %struct.v4l2_rect* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %16
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %27
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 2
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %25, %21
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i64 [ %44, %42 ], [ %49, %45 ]
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %56 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  br label %68

63:                                               ; preds = %50
  %64 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi i32 [ %62, %60 ], [ %67, %63 ]
  %70 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %72, %74
  %76 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %77 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %75, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %68
  %82 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %83 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %85, %87
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %81, %68
  %91 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %92, %95
  %97 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %98 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp sgt i64 %96, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %90
  %104 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %4, align 8
  %105 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %108, %110
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  br label %114

114:                                              ; preds = %103, %90
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = and i64 %116, -2
  store i64 %117, i64* %115, align 8
  %118 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, -2
  store i32 %120, i32* %118, align 8
  %121 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp sle i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124, %114
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %145

131:                                              ; preds = %124
  %132 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %133 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %132, i32 0, i32 4
  %134 = bitcast %struct.v4l2_rect* %133 to i8*
  %135 = bitcast %struct.v4l2_rect* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %135, i64 32, i1 false)
  %136 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %137 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  %139 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %140 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %139, i32 0, i32 2
  store i32* null, i32** %140, align 8
  %141 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load %struct.v4l2_window*, %struct.v4l2_window** %5, align 8
  %144 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %131, %128
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
