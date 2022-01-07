; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_pix_to_mbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_pix_to_mbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_fmt = type { i32 }
%struct.vpfe_device = type { i32 }
%struct.v4l2_pix_format = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Invalid pixel code: %x, default used instead\0A\00", align 1
@formats = common dso_local global %struct.vpfe_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_device*, %struct.v4l2_pix_format*, %struct.v4l2_mbus_framefmt*)* @pix_to_mbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pix_to_mbus(%struct.vpfe_device* %0, %struct.v4l2_pix_format* %1, %struct.v4l2_mbus_framefmt* %2) #0 {
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %7 = alloca %struct.vpfe_fmt*, align 8
  store %struct.vpfe_device* %0, %struct.vpfe_device** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %6, align 8
  %8 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vpfe_fmt* @find_format_by_pix(i32 %10)
  store %struct.vpfe_fmt* %11, %struct.vpfe_fmt** %7, align 8
  %12 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %7, align 8
  %13 = icmp ne %struct.vpfe_fmt* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** @formats, align 8
  %21 = getelementptr inbounds %struct.vpfe_fmt, %struct.vpfe_fmt* %20, i64 0
  store %struct.vpfe_fmt* %21, %struct.vpfe_fmt** %7, align 8
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %24 = call i32 @memset(%struct.v4l2_mbus_framefmt* %23, i32 0, i32 4)
  %25 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %6, align 8
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %27 = load %struct.vpfe_fmt*, %struct.vpfe_fmt** %7, align 8
  %28 = getelementptr inbounds %struct.vpfe_fmt, %struct.vpfe_fmt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt* %25, %struct.v4l2_pix_format* %26, i32 %29)
  ret void
}

declare dso_local %struct.vpfe_fmt* @find_format_by_pix(i32) #1

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*, i32) #1

declare dso_local i32 @memset(%struct.v4l2_mbus_framefmt*, i32, i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(%struct.v4l2_mbus_framefmt*, %struct.v4l2_pix_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
