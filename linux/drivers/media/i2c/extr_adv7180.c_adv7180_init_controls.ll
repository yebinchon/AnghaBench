; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@adv7180_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@ADV7180_BRI_MIN = common dso_local global i32 0, align 4
@ADV7180_BRI_MAX = common dso_local global i32 0, align 4
@ADV7180_BRI_DEF = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@ADV7180_CON_MIN = common dso_local global i32 0, align 4
@ADV7180_CON_MAX = common dso_local global i32 0, align 4
@ADV7180_CON_DEF = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@ADV7180_SAT_MIN = common dso_local global i32 0, align 4
@ADV7180_SAT_MAX = common dso_local global i32 0, align 4
@ADV7180_SAT_DEF = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@ADV7180_HUE_MIN = common dso_local global i32 0, align 4
@ADV7180_HUE_MAX = common dso_local global i32 0, align 4
@ADV7180_HUE_DEF = common dso_local global i32 0, align 4
@adv7180_ctrl_fast_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*)* @adv7180_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_init_controls(%struct.adv7180_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv7180_state*, align 8
  %4 = alloca i32, align 4
  store %struct.adv7180_state* %0, %struct.adv7180_state** %3, align 8
  %5 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %6 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %5, i32 0, i32 0
  %7 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %6, i32 4)
  %8 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %9 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %8, i32 0, i32 0
  %10 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %11 = load i32, i32* @ADV7180_BRI_MIN, align 4
  %12 = load i32, i32* @ADV7180_BRI_MAX, align 4
  %13 = load i32, i32* @ADV7180_BRI_DEF, align 4
  %14 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %9, i32* @adv7180_ctrl_ops, i32 %10, i32 %11, i32 %12, i32 1, i32 %13)
  %15 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %16 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %15, i32 0, i32 0
  %17 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %18 = load i32, i32* @ADV7180_CON_MIN, align 4
  %19 = load i32, i32* @ADV7180_CON_MAX, align 4
  %20 = load i32, i32* @ADV7180_CON_DEF, align 4
  %21 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %16, i32* @adv7180_ctrl_ops, i32 %17, i32 %18, i32 %19, i32 1, i32 %20)
  %22 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %23 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %22, i32 0, i32 0
  %24 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %25 = load i32, i32* @ADV7180_SAT_MIN, align 4
  %26 = load i32, i32* @ADV7180_SAT_MAX, align 4
  %27 = load i32, i32* @ADV7180_SAT_DEF, align 4
  %28 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %23, i32* @adv7180_ctrl_ops, i32 %24, i32 %25, i32 %26, i32 1, i32 %27)
  %29 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %30 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %29, i32 0, i32 0
  %31 = load i32, i32* @V4L2_CID_HUE, align 4
  %32 = load i32, i32* @ADV7180_HUE_MIN, align 4
  %33 = load i32, i32* @ADV7180_HUE_MAX, align 4
  %34 = load i32, i32* @ADV7180_HUE_DEF, align 4
  %35 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %30, i32* @adv7180_ctrl_ops, i32 %31, i32 %32, i32 %33, i32 1, i32 %34)
  %36 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %37 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %36, i32 0, i32 0
  %38 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_8__* %37, i32* @adv7180_ctrl_fast_switch, i32* null)
  %39 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %40 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %39, i32 0, i32 0
  %41 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %42 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %43, align 8
  %44 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %45 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %1
  %50 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %51 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %4, align 4
  %54 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %55 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %54, i32 0, i32 0
  %56 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %1
  %59 = load %struct.adv7180_state*, %struct.adv7180_state** %3, align 8
  %60 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %59, i32 0, i32 0
  %61 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %49
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
