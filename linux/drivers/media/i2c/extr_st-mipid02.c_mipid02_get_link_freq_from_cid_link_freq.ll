; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_get_link_freq_from_cid_link_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_get_link_freq_from_cid_link_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_querymenu = type { i32, i32, i32 }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*, %struct.v4l2_subdev*)* @mipid02_get_link_freq_from_cid_link_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_get_link_freq_from_cid_link_freq(%struct.mipid02_dev* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipid02_dev*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_querymenu, align 4
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %6, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %6, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %6, i32 0, i32 2
  %12 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %17 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %15, i32 %16)
  store %struct.v4l2_ctrl* %17, %struct.v4l2_ctrl** %7, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %19 = icmp ne %struct.v4l2_ctrl* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %23 = call i32 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl* %22)
  %24 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l2_querymenu(i32 %27, %struct.v4l2_querymenu* %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %35

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %31, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(%struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_querymenu(i32, %struct.v4l2_querymenu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
