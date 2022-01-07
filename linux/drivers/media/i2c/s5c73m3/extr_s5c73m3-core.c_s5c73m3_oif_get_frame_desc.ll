; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_get_frame_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_oif_get_frame_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_frame_desc = type { i32, i32* }
%struct.s5c73m3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@OIF_SOURCE_PAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)* @s5c73m3_oif_get_frame_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_oif_get_frame_desc(%struct.v4l2_subdev* %0, i32 %1, %struct.v4l2_mbus_frame_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_mbus_frame_desc*, align 8
  %8 = alloca %struct.s5c73m3*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_mbus_frame_desc* %2, %struct.v4l2_mbus_frame_desc** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev* %10)
  store %struct.s5c73m3* %11, %struct.s5c73m3** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @OIF_SOURCE_PAD, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %17 = icmp eq %struct.v4l2_mbus_frame_desc* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %23 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %25, i32 0, i32 0
  store i32 2, i32* %26, align 8
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %48, %21
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %35 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load %struct.s5c73m3*, %struct.s5c73m3** %8, align 8
  %53 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.s5c73m3* @oif_sd_to_s5c73m3(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
