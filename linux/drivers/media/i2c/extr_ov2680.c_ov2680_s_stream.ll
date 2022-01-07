; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov2680_dev = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov2680_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov2680_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev* %7)
  store %struct.ov2680_dev* %8, %struct.ov2680_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %10 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %54

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %27 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %32 = call i32 @ov2680_mode_set(%struct.ov2680_dev* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %54

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %25, %22
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %42 = call i32 @ov2680_stream_enable(%struct.ov2680_dev* %41)
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %45 = call i32 @ov2680_stream_disable(%struct.ov2680_dev* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %53 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %35, %21
  %55 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %56 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov2680_mode_set(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_stream_enable(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_stream_disable(%struct.ov2680_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
