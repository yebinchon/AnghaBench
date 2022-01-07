; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3646_flash = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }

@lm3646_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@LM3646_NAME = common dso_local global i32 0, align 4
@MEDIA_ENT_F_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3646_flash*)* @lm3646_subdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3646_subdev_init(%struct.lm3646_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3646_flash*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.lm3646_flash* %0, %struct.lm3646_flash** %3, align 8
  %6 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %7 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.i2c_client* @to_i2c_client(i32 %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %11 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_3__* %11, %struct.i2c_client* %12, i32* @lm3646_ops)
  %14 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %15 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %16 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %21 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LM3646_NAME, align 4
  %25 = call i32 @strscpy(i32 %23, i32 %24, i32 4)
  %26 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %27 = call i32 @lm3646_init_controls(%struct.lm3646_flash* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %33 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @media_entity_pads_init(%struct.TYPE_4__* %34, i32 0, i32* null)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %46

39:                                               ; preds = %31
  %40 = load i32, i32* @MEDIA_ENT_F_FLASH, align 4
  %41 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %42 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %38, %30
  %47 = load %struct.lm3646_flash*, %struct.lm3646_flash** %3, align 8
  %48 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %47, i32 0, i32 0
  %49 = call i32 @v4l2_ctrl_handler_free(i32* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_3__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @lm3646_init_controls(%struct.lm3646_flash*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
