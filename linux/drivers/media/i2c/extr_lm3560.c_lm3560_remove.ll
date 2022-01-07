; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm3560_flash = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@LM3560_LED0 = common dso_local global i32 0, align 4
@LM3560_LED_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm3560_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lm3560_flash*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lm3560_flash* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lm3560_flash* %6, %struct.lm3560_flash** %3, align 8
  %7 = load i32, i32* @LM3560_LED0, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LM3560_LED_MAX, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %14 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = call i32 @v4l2_device_unregister_subdev(%struct.TYPE_2__* %18)
  %20 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %21 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @v4l2_ctrl_handler_free(i32* %25)
  %27 = load %struct.lm3560_flash*, %struct.lm3560_flash** %3, align 8
  %28 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @media_entity_cleanup(i32* %33)
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %8

38:                                               ; preds = %8
  ret i32 0
}

declare dso_local %struct.lm3560_flash* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.TYPE_2__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
