; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i32 }

@TVP5150_BRIGHT_CTL = common dso_local global i32 0, align 4
@TVP5150_CONTRAST_CTL = common dso_local global i32 0, align 4
@TVP5150_SATURATION_CTL = common dso_local global i32 0, align 4
@TVP5150_HUE_CTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @tvp5150_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.tvp5150*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %8)
  store %struct.tvp5150* %9, %struct.tvp5150** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %60 [
    i32 132, label %13
    i32 131, label %22
    i32 129, label %31
    i32 130, label %40
    i32 128, label %49
  ]

13:                                               ; preds = %1
  %14 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %15 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TVP5150_BRIGHT_CTL, align 4
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_write(i32 %16, i32 %17, i32 %20)
  store i32 0, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %24 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TVP5150_CONTRAST_CTL, align 4
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_write(i32 %25, i32 %26, i32 %29)
  store i32 0, i32* %2, align 4
  br label %63

31:                                               ; preds = %1
  %32 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %33 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TVP5150_SATURATION_CTL, align 4
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_write(i32 %34, i32 %35, i32 %38)
  store i32 0, i32* %2, align 4
  br label %63

40:                                               ; preds = %1
  %41 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %42 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TVP5150_HUE_CTL, align 4
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regmap_write(i32 %43, i32 %44, i32 %47)
  store i32 0, i32* %2, align 4
  br label %63

49:                                               ; preds = %1
  %50 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 1
  %56 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %57 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %59 = call i32 @tvp5150_selmux(%struct.v4l2_subdev* %58)
  store i32 0, i32* %2, align 4
  br label %63

60:                                               ; preds = %1
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %49, %40, %31, %22, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @tvp5150_selmux(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
