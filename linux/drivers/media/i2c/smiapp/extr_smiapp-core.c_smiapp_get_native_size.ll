; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_native_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_get_native_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.v4l2_rect = type { i64, i64, i64, i64 }

@SMIAPP_LIMIT_X_ADDR_MAX = common dso_local global i64 0, align 8
@SMIAPP_LIMIT_Y_ADDR_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smiapp_subdev*, %struct.v4l2_rect*)* @smiapp_get_native_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smiapp_get_native_size(%struct.smiapp_subdev* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.smiapp_subdev*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  store %struct.smiapp_subdev* %0, %struct.smiapp_subdev** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %5 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %3, align 8
  %10 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @SMIAPP_LIMIT_X_ADDR_MAX, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.smiapp_subdev*, %struct.smiapp_subdev** %3, align 8
  %21 = getelementptr inbounds %struct.smiapp_subdev, %struct.smiapp_subdev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @SMIAPP_LIMIT_Y_ADDR_MAX, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
