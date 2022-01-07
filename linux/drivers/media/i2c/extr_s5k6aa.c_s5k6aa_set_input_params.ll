; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_input_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_input_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { i64, %struct.v4l2_rect, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@REG_G_PREVZOOM_IN_WIDTH = common dso_local global i32 0, align 4
@REG_G_PREVZOOM_IN_HEIGHT = common dso_local global i32 0, align 4
@REG_G_PREVZOOM_IN_XOFFS = common dso_local global i32 0, align 4
@REG_G_PREVZOOM_IN_YOFFS = common dso_local global i32 0, align 4
@REG_G_INPUTS_CHANGE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*)* @s5k6aa_set_input_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_input_params(%struct.s5k6aa* %0) #0 {
  %2 = alloca %struct.s5k6aa*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %2, align 8
  %6 = load %struct.s5k6aa*, %struct.s5k6aa** %2, align 8
  %7 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %6, i32 0, i32 2
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.s5k6aa*, %struct.s5k6aa** %2, align 8
  %10 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %9, i32 0, i32 1
  store %struct.v4l2_rect* %10, %struct.v4l2_rect** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load i32, i32* @REG_G_PREVZOOM_IN_WIDTH, align 4
  %13 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @s5k6aa_write(%struct.i2c_client* %11, i32 %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = load i32, i32* @REG_G_PREVZOOM_IN_HEIGHT, align 4
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @s5k6aa_write(%struct.i2c_client* %20, i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = load i32, i32* @REG_G_PREVZOOM_IN_XOFFS, align 4
  %32 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @s5k6aa_write(%struct.i2c_client* %30, i32 %31, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = load i32, i32* @REG_G_PREVZOOM_IN_YOFFS, align 4
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @s5k6aa_write(%struct.i2c_client* %40, i32 %41, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i32, i32* @REG_G_INPUTS_CHANGE_REQ, align 4
  %52 = call i32 @s5k6aa_write(%struct.i2c_client* %50, i32 %51, i32 1)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.s5k6aa*, %struct.s5k6aa** %2, align 8
  %58 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
