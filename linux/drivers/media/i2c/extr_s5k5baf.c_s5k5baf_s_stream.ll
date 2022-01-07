; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k5baf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @s5k5baf_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5k5baf*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %7)
  store %struct.s5k5baf* %8, %struct.s5k5baf** %5, align 8
  %9 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %10 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %13 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %27 = call i32 @s5k5baf_hw_set_config(%struct.s5k5baf* %26)
  %28 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %29 = call i32 @s5k5baf_hw_set_crop_rects(%struct.s5k5baf* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %35 = call i32 @s5k5baf_hw_set_stream(%struct.s5k5baf* %34, i32 1)
  %36 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %37 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %36, i32 45260, i32 11)
  br label %41

38:                                               ; preds = %22
  %39 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %40 = call i32 @s5k5baf_hw_set_stream(%struct.s5k5baf* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %43 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %48 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %54 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %41
  br label %56

56:                                               ; preds = %55, %32, %21
  %57 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %58 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5k5baf_hw_set_config(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_crop_rects(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_stream(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_i2c_write(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_clear_error(%struct.s5k5baf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
