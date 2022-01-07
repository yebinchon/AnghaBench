; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.noon010_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @noon010_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noon010_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.noon010_info*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.noon010_info* @to_noon010(%struct.v4l2_subdev* %7)
  store %struct.noon010_info* %8, %struct.noon010_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %10 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %13 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %17, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @noon010_power_ctrl(%struct.v4l2_subdev* %24, i32 0, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %35 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %23
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %45 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = call i32 @noon010_set_params(%struct.v4l2_subdev* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %55 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %43, %40, %37
  %58 = load %struct.noon010_info*, %struct.noon010_info** %5, align 8
  %59 = getelementptr inbounds %struct.noon010_info, %struct.noon010_info* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.noon010_info* @to_noon010(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @noon010_power_ctrl(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @noon010_set_params(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
