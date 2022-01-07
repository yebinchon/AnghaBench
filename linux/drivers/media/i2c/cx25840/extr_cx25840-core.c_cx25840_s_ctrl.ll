; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cx25840_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.cx25840_state*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.cx25840_state* %10, %struct.cx25840_state** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %78 [
    i32 131, label %16
    i32 130, label %23
    i32 128, label %30
    i32 129, label %61
  ]

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 128
  %22 = call i32 @cx25840_write(%struct.i2c_client* %17, i32 1044, i32 %21)
  br label %81

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 1
  %29 = call i32 @cx25840_write(%struct.i2c_client* %24, i32 1045, i32 %28)
  br label %81

30:                                               ; preds = %1
  %31 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %32 = call i32 @is_cx23888(%struct.cx25840_state* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 1
  %40 = call i32 @cx25840_write(%struct.i2c_client* %35, i32 1048, i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 1
  %46 = call i32 @cx25840_write(%struct.i2c_client* %41, i32 1049, i32 %45)
  br label %60

47:                                               ; preds = %30
  %48 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = call i32 @cx25840_write(%struct.i2c_client* %48, i32 1056, i32 %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 1
  %59 = call i32 @cx25840_write(%struct.i2c_client* %54, i32 1057, i32 %58)
  br label %60

60:                                               ; preds = %47, %34
  br label %81

61:                                               ; preds = %1
  %62 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %63 = call i32 @is_cx23888(%struct.cx25840_state* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %67 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cx25840_write(%struct.i2c_client* %66, i32 1050, i32 %69)
  br label %77

71:                                               ; preds = %61
  %72 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %73 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %74 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cx25840_write(%struct.i2c_client* %72, i32 1058, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  br label %81

78:                                               ; preds = %1
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %77, %60, %23, %16
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @is_cx23888(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
