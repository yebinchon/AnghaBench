; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_disp_check_window_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_disp_check_window_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_display = type { %struct.vpbe_device* }
%struct.vpbe_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.v4l2_rect = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpbe_display*, %struct.v4l2_rect*)* @vpbe_disp_check_window_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpbe_disp_check_window_params(%struct.vpbe_display* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.vpbe_display*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.vpbe_device*, align 8
  store %struct.vpbe_display* %0, %struct.vpbe_display** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %6 = load %struct.vpbe_display*, %struct.vpbe_display** %3, align 8
  %7 = getelementptr inbounds %struct.vpbe_display, %struct.vpbe_display* %6, i32 0, i32 0
  %8 = load %struct.vpbe_device*, %struct.vpbe_device** %7, align 8
  store %struct.vpbe_device* %8, %struct.vpbe_device** %5, align 8
  %9 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %22 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %13, %2
  %27 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %28 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %26, %13
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %51 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %42, %37
  %56 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %57 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %42
  %67 = load %struct.vpbe_device*, %struct.vpbe_device** %5, align 8
  %68 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = and i64 %75, -2
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
