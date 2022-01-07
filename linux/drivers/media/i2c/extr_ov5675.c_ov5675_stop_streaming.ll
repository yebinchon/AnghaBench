; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5675 = type { i32 }
%struct.i2c_client = type { i32 }

@OV5675_REG_MODE_SELECT = common dso_local global i32 0, align 4
@OV5675_REG_VALUE_08BIT = common dso_local global i32 0, align 4
@OV5675_MODE_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to set stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov5675*)* @ov5675_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov5675_stop_streaming(%struct.ov5675* %0) #0 {
  %2 = alloca %struct.ov5675*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  store %struct.ov5675* %0, %struct.ov5675** %2, align 8
  %4 = load %struct.ov5675*, %struct.ov5675** %2, align 8
  %5 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %4, i32 0, i32 0
  %6 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.ov5675*, %struct.ov5675** %2, align 8
  %8 = load i32, i32* @OV5675_REG_MODE_SELECT, align 4
  %9 = load i32, i32* @OV5675_REG_VALUE_08BIT, align 4
  %10 = load i32, i32* @OV5675_MODE_STANDBY, align 4
  %11 = call i64 @ov5675_write_reg(%struct.ov5675* %7, i32 %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i64 @ov5675_write_reg(%struct.ov5675*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
