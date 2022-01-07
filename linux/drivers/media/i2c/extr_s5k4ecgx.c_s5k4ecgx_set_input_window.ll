; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_set_input_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_set_input_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@REG_G_PREV_IN_WIDTH = common dso_local global i32 0, align 4
@REG_G_PREV_IN_HEIGHT = common dso_local global i32 0, align 4
@REG_G_PREV_IN_XOFFS = common dso_local global i32 0, align 4
@REG_G_PREV_IN_YOFFS = common dso_local global i32 0, align 4
@REG_G_CAP_IN_WIDTH = common dso_local global i32 0, align 4
@REG_G_CAP_IN_HEIGHT = common dso_local global i32 0, align 4
@REG_G_CAP_IN_XOFFS = common dso_local global i32 0, align 4
@REG_G_CAP_IN_YOFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.v4l2_rect*)* @s5k4ecgx_set_input_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_set_input_window(%struct.i2c_client* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i32, i32* @REG_G_PREV_IN_WIDTH, align 4
  %8 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @s5k4ecgx_write(%struct.i2c_client* %6, i32 %7, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = load i32, i32* @REG_G_PREV_IN_HEIGHT, align 4
  %17 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @s5k4ecgx_write(%struct.i2c_client* %15, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = load i32, i32* @REG_G_PREV_IN_XOFFS, align 4
  %27 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @s5k4ecgx_write(%struct.i2c_client* %25, i32 %26, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = load i32, i32* @REG_G_PREV_IN_YOFFS, align 4
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @s5k4ecgx_write(%struct.i2c_client* %35, i32 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = load i32, i32* @REG_G_CAP_IN_WIDTH, align 4
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @s5k4ecgx_write(%struct.i2c_client* %45, i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %44, %41
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = load i32, i32* @REG_G_CAP_IN_HEIGHT, align 4
  %57 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @s5k4ecgx_write(%struct.i2c_client* %55, i32 %56, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = load i32, i32* @REG_G_CAP_IN_XOFFS, align 4
  %67 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @s5k4ecgx_write(%struct.i2c_client* %65, i32 %66, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = load i32, i32* @REG_G_CAP_IN_YOFFS, align 4
  %77 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %78 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @s5k4ecgx_write(%struct.i2c_client* %75, i32 %76, i32 %79)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @s5k4ecgx_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
