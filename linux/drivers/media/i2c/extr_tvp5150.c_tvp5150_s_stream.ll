; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i32, i64, i32, i64 }

@TVP5150_MISC_CTL_YCBCR_OE = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL_SYNC_OE = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL_CLOCK_OE = common dso_local global i32 0, align 4
@TVP5150_INT_A_LOCK = common dso_local global i32 0, align 4
@tvp5150_ev_fmt = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL = common dso_local global i32 0, align 4
@TVP5150_INT_ENABLE_REG_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tvp5150_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tvp5150*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %9)
  store %struct.tvp5150* %10, %struct.tvp5150** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @TVP5150_MISC_CTL_YCBCR_OE, align 4
  %12 = load i32, i32* @TVP5150_MISC_CTL_SYNC_OE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @TVP5150_MISC_CTL_CLOCK_OE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = call i32 @tvp5150_enable(%struct.v4l2_subdev* %19)
  %21 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %22 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %27 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %32 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %39 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* @TVP5150_INT_A_LOCK, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %44 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %43, i32 0, i32 3
  %45 = call i32 @v4l2_subdev_notify_event(i32* %44, i32* @tvp5150_ev_fmt)
  br label %46

46:                                               ; preds = %41, %2
  %47 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %48 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TVP5150_MISC_CTL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %55 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %60 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TVP5150_INT_ENABLE_REG_A, align 4
  %63 = load i32, i32* @TVP5150_INT_A_LOCK, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %58, %46
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp5150_enable(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_subdev_notify_event(i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
