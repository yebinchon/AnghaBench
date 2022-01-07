; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3560_flash = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }

@lm3560_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_FLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3560_flash*, i32, i8*)* @lm3560_subdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_subdev_init(%struct.lm3560_flash* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm3560_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.lm3560_flash* %0, %struct.lm3560_flash** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %11 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(i32 %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %15 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %21 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_3__* %19, %struct.i2c_client* %20, i32* @lm3560_ops)
  %22 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %23 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %24 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %22
  store i32 %31, i32* %29, align 4
  %32 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %33 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strscpy(i32 %39, i8* %40, i32 4)
  %42 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @lm3560_init_controls(%struct.lm3560_flash* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %71

48:                                               ; preds = %3
  %49 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %50 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @media_entity_pads_init(%struct.TYPE_4__* %55, i32 0, i32* null)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %71

60:                                               ; preds = %48
  %61 = load i32, i32* @MEDIA_ENT_F_FLASH, align 4
  %62 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %63 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %61, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %80

71:                                               ; preds = %59, %47
  %72 = load %struct.lm3560_flash*, %struct.lm3560_flash** %5, align 8
  %73 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @v4l2_ctrl_handler_free(i32* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %71, %60
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_3__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @lm3560_init_controls(%struct.lm3560_flash*, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
