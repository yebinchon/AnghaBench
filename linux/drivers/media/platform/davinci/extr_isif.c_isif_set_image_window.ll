; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_image_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_image_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@isif_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@VPFE_RAW_BAYER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_rect*)* @isif_set_image_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isif_set_image_window(%struct.v4l2_rect* %0) #0 {
  %2 = alloca %struct.v4l2_rect*, align 8
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 0), align 8
  %4 = load i64, i64* @VPFE_RAW_BAYER, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %8 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0, i32 3), align 4
  %10 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %11 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0, i32 2), align 8
  %13 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %14 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0, i32 1), align 4
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 2, i32 0, i32 0), align 8
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %21 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1, i32 0, i32 3), align 4
  %23 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %24 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1, i32 0, i32 2), align 8
  %26 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %27 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1, i32 0, i32 1), align 4
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %2, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @isif_cfg, i32 0, i32 1, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %19, %6
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
