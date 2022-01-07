; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@V4L2_PIX_FMT_SBGGR8 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_STEPWISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_frmsizeenum*)* @stk1135_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1135_enum_framesizes(%struct.gspca_dev* %0, %struct.v4l2_frmsizeenum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.v4l2_frmsizeenum*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.v4l2_frmsizeenum* %1, %struct.v4l2_frmsizeenum** %5, align 8
  %6 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_PIX_FMT_SBGGR8, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %10
  %20 = load i32, i32* @V4L2_FRMSIZE_TYPE_STEPWISE, align 4
  %21 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 8
  %26 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 32, i32* %28, align 4
  %29 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 1280, i32* %31, align 8
  %32 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 1024, i32* %34, align 4
  %35 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 2, i32* %37, align 8
  %38 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  store i32 2, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %19, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
