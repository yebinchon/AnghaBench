; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_upd64031a.c_upd64031a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_upd64031a.c_upd64031a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.upd64031a_state = type { i32, i32, i32*, i64, i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@upd64031a_ops = common dso_local global i32 0, align 4
@upd64031a_init = common dso_local global i32 0, align 4
@UPD64031A_GR_ON = common dso_local global i32 0, align 4
@UPD64031A_3DYCS_COMPOSITE = common dso_local global i32 0, align 4
@TOT_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @upd64031a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upd64031a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.upd64031a_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l_info(%struct.i2c_client* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.upd64031a_state* @devm_kzalloc(i32* %31, i32 40, i32 %32)
  store %struct.upd64031a_state* %33, %struct.upd64031a_state** %6, align 8
  %34 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %35 = icmp eq %struct.upd64031a_state* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %81

39:                                               ; preds = %18
  %40 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %41 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %40, i32 0, i32 5
  store %struct.v4l2_subdev* %41, %struct.v4l2_subdev** %7, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %42, %struct.i2c_client* %43, i32* @upd64031a_ops)
  %45 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %46 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @upd64031a_init, align 4
  %49 = call i32 @memcpy(i32* %47, i32 %48, i32 8)
  %50 = load i32, i32* @UPD64031A_GR_ON, align 4
  %51 = shl i32 %50, 6
  %52 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %53 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @UPD64031A_3DYCS_COMPOSITE, align 4
  %55 = shl i32 %54, 4
  %56 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %57 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %59 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %61 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %77, %39
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @TOT_REGS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.upd64031a_state*, %struct.upd64031a_state** %6, align 8
  %70 = getelementptr inbounds %struct.upd64031a_state, %struct.upd64031a_state* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @upd64031a_write(%struct.v4l2_subdev* %67, i32 %68, i32 %75)
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %62

80:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %36, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.upd64031a_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @upd64031a_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
