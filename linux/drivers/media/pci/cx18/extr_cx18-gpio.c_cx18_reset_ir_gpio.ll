; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-gpio.c_cx18_reset_ir_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-gpio.c_cx18_reset_ir_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Resetting IR microcontroller\0A\00", align 1
@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@CX18_GPIO_RESET_Z8F0811 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_reset_ir_gpio(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cx18*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.v4l2_device*
  %6 = call %struct.cx18* @to_cx18(%struct.v4l2_device* %5)
  store %struct.cx18* %6, %struct.cx18** %3, align 8
  %7 = load %struct.cx18*, %struct.cx18** %3, align 8
  %8 = getelementptr inbounds %struct.cx18, %struct.cx18* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %23

15:                                               ; preds = %1
  %16 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cx18*, %struct.cx18** %3, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 0
  %19 = load i32, i32* @core, align 4
  %20 = load i32, i32* @reset, align 4
  %21 = load i32, i32* @CX18_GPIO_RESET_Z8F0811, align 4
  %22 = call i32 @v4l2_subdev_call(i32* %18, i32 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.cx18* @to_cx18(%struct.v4l2_device*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

declare dso_local i32 @v4l2_subdev_call(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
