; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_new_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_new_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32 }
%struct.v4l2_framebuffer = type { i32 }
%struct.v4l2_window = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_vout_new_window(%struct.v4l2_rect* %0, %struct.v4l2_window* %1, %struct.v4l2_framebuffer* %2, %struct.v4l2_window* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_rect*, align 8
  %7 = alloca %struct.v4l2_window*, align 8
  %8 = alloca %struct.v4l2_framebuffer*, align 8
  %9 = alloca %struct.v4l2_window*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %6, align 8
  store %struct.v4l2_window* %1, %struct.v4l2_window** %7, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %8, align 8
  store %struct.v4l2_window* %3, %struct.v4l2_window** %9, align 8
  %11 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %8, align 8
  %12 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %13 = call i32 @omap_vout_try_window(%struct.v4l2_framebuffer* %11, %struct.v4l2_window* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %134

18:                                               ; preds = %4
  %19 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %19, i32 0, i32 0
  %21 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %22 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_2__* %20 to i8*
  %24 = bitcast %struct.TYPE_2__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %25 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %26 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.v4l2_window*, %struct.v4l2_window** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i64 (...) @omap_vout_dss_omap24xx()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %18
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %40, %44
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %37
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %58, %62
  %64 = icmp sge i32 %63, 2
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %55
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 768
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %80 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %88, i32 0, i32 1
  store i32 768, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %78
  br label %91

91:                                               ; preds = %90, %73
  br label %133

92:                                               ; preds = %18
  %93 = call i64 (...) @omap_vout_dss_omap34xx()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %98, %102
  %104 = icmp sge i32 %103, 4
  br i1 %104, label %105, label %113

105:                                              ; preds = %95
  %106 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 4
  %111 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %112 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %95
  %114 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %116, %120
  %122 = icmp sge i32 %121, 4
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 4
  %129 = load %struct.v4l2_rect*, %struct.v4l2_rect** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %123, %113
  br label %132

132:                                              ; preds = %131, %92
  br label %133

133:                                              ; preds = %132, %91
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %16
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @omap_vout_try_window(%struct.v4l2_framebuffer*, %struct.v4l2_window*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @omap_vout_dss_omap24xx(...) #1

declare dso_local i64 @omap_vout_dss_omap34xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
