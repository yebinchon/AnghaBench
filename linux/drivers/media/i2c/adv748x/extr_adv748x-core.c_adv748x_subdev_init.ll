; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_subdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_subdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_8__, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.adv748x_state = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.v4l2_subdev_ops = type { i32 }

@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s %d-%04x %s\00", align 1
@adv748x_tx_media_ops = common dso_local global i32 0, align 4
@adv748x_media_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adv748x_subdev_init(%struct.v4l2_subdev* %0, %struct.adv748x_state* %1, %struct.v4l2_subdev_ops* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.adv748x_state*, align 8
  %8 = alloca %struct.v4l2_subdev_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.adv748x_state* %1, %struct.adv748x_state** %7, align 8
  store %struct.v4l2_subdev_ops* %2, %struct.v4l2_subdev_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %8, align 8
  %13 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %11, %struct.v4l2_subdev_ops* %12)
  %14 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %20 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %29 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %31, i32 0, i32 2
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %34 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %35 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %33, %struct.adv748x_state* %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %40 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %47 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i2c_adapter_id(i32 %50)
  %52 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %53 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %51, i32 %56, i8* %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %64 = call i32 @adv748x_sd_to_csi2(%struct.v4l2_subdev* %63)
  %65 = call i64 @is_tx(i32 %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32* @adv748x_tx_media_ops, i32* @adv748x_media_ops
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32* %68, i32** %71, align 8
  ret void
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, %struct.v4l2_subdev_ops*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.adv748x_state*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @i2c_adapter_id(i32) #1

declare dso_local i64 @is_tx(i32) #1

declare dso_local i32 @adv748x_sd_to_csi2(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
