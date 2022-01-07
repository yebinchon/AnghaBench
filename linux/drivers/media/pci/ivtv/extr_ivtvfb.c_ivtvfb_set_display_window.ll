; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_set_display_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_set_display_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@IVTV_OSD_MAX_WIDTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"ivtv_ioctl_fb_set_display_window - Invalid height setting (%d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"ivtv_ioctl_fb_set_display_window - Invalid width setting (%d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.v4l2_rect*)* @ivtvfb_set_display_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_set_display_window(%struct.ivtv* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %7 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 576, i32 480
  store i32 %12, i32* %6, align 4
  %13 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IVTV_OSD_MAX_WIDTH, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %128

27:                                               ; preds = %18
  %28 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %27
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %37, %27
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load i32, i32* @IVTV_OSD_MAX_WIDTH, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %52
  %63 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IVTVFB_DEBUG_WARN(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* @IVTV_OSD_MAX_WIDTH, align 4
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %62, %52
  %78 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 16
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %81, %84
  %86 = call i32 @write_reg(i32 %85, i32 10756)
  %87 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = shl i32 %93, 16
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = or i32 %94, %101
  %103 = call i32 @write_reg(i32 %102, i32 10760)
  %104 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %105 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %108 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %114 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %117 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %120 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  %122 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %123 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %126 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 4
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %77, %24
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @IVTVFB_DEBUG_WARN(i8*, i32, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
