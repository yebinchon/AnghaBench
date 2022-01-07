; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_init_i2c_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-driver.c_init_i2c_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.go_i2c = type { i32, i64, i64, i32, i32 }
%struct.go7007 = type { %struct.v4l2_subdev*, %struct.v4l2_subdev*, %struct.v4l2_device }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.i2c_board_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"go7007: probing for module i2c:%s failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.go_i2c*)* @init_i2c_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_i2c_module(%struct.i2c_adapter* %0, %struct.go_i2c* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.go_i2c*, align 8
  %6 = alloca %struct.go7007*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.i2c_board_info, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.go_i2c* %1, %struct.go_i2c** %5, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = call %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter* %10)
  store %struct.go7007* %11, %struct.go7007** %6, align 8
  %12 = load %struct.go7007*, %struct.go7007** %6, align 8
  %13 = getelementptr inbounds %struct.go7007, %struct.go7007* %12, i32 0, i32 2
  store %struct.v4l2_device* %13, %struct.v4l2_device** %7, align 8
  %14 = call i32 @memset(%struct.i2c_board_info* %9, i32 0, i32 12)
  %15 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.go_i2c*, %struct.go_i2c** %5, align 8
  %18 = getelementptr inbounds %struct.go_i2c, %struct.go_i2c* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strscpy(i32 %16, i32 %19, i32 4)
  %21 = load %struct.go_i2c*, %struct.go_i2c** %5, align 8
  %22 = getelementptr inbounds %struct.go_i2c, %struct.go_i2c* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.go_i2c*, %struct.go_i2c** %5, align 8
  %26 = getelementptr inbounds %struct.go_i2c, %struct.go_i2c* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %31 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(%struct.v4l2_device* %29, %struct.i2c_adapter* %30, %struct.i2c_board_info* %9, i32* null)
  store %struct.v4l2_subdev* %31, %struct.v4l2_subdev** %8, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %33 = icmp ne %struct.v4l2_subdev* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %2
  %35 = load %struct.go_i2c*, %struct.go_i2c** %5, align 8
  %36 = getelementptr inbounds %struct.go_i2c, %struct.go_i2c* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %41 = load %struct.go7007*, %struct.go7007** %6, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 1
  store %struct.v4l2_subdev* %40, %struct.v4l2_subdev** %42, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.go_i2c*, %struct.go_i2c** %5, align 8
  %45 = getelementptr inbounds %struct.go_i2c, %struct.go_i2c* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %50 = load %struct.go7007*, %struct.go7007** %6, align 8
  %51 = getelementptr inbounds %struct.go7007, %struct.go7007* %50, i32 0, i32 0
  store %struct.v4l2_subdev* %49, %struct.v4l2_subdev** %51, align 8
  br label %52

52:                                               ; preds = %48, %43
  store i32 0, i32* %3, align 4
  br label %60

53:                                               ; preds = %2
  %54 = load %struct.go_i2c*, %struct.go_i2c** %5, align 8
  %55 = getelementptr inbounds %struct.go_i2c, %struct.go_i2c* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(%struct.v4l2_device*, %struct.i2c_adapter*, %struct.i2c_board_info*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
