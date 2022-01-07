; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_afe = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.adv748x_state = type { i32 }

@adv748x_afe_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@ADV748X_SDP_BRI_MIN = common dso_local global i32 0, align 4
@ADV748X_SDP_BRI_MAX = common dso_local global i32 0, align 4
@ADV748X_SDP_BRI_DEF = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@ADV748X_SDP_CON_MIN = common dso_local global i32 0, align 4
@ADV748X_SDP_CON_MAX = common dso_local global i32 0, align 4
@ADV748X_SDP_CON_DEF = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@ADV748X_SDP_SAT_MIN = common dso_local global i32 0, align 4
@ADV748X_SDP_SAT_MAX = common dso_local global i32 0, align 4
@ADV748X_SDP_SAT_DEF = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@ADV748X_SDP_HUE_MIN = common dso_local global i32 0, align 4
@ADV748X_SDP_HUE_MAX = common dso_local global i32 0, align 4
@ADV748X_SDP_HUE_DEF = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@afe_ctrl_frp_menu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_afe*)* @adv748x_afe_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_afe_init_controls(%struct.adv748x_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_afe*, align 8
  %4 = alloca %struct.adv748x_state*, align 8
  store %struct.adv748x_afe* %0, %struct.adv748x_afe** %3, align 8
  %5 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %6 = call %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe* %5)
  store %struct.adv748x_state* %6, %struct.adv748x_state** %4, align 8
  %7 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %8 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %7, i32 0, i32 0
  %9 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %8, i32 5)
  %10 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %11 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %10, i32 0, i32 0
  %12 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %13 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32* %11, i32** %14, align 8
  %15 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %16 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %15, i32 0, i32 0
  %17 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %18 = load i32, i32* @ADV748X_SDP_BRI_MIN, align 4
  %19 = load i32, i32* @ADV748X_SDP_BRI_MAX, align 4
  %20 = load i32, i32* @ADV748X_SDP_BRI_DEF, align 4
  %21 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %16, i32* @adv748x_afe_ctrl_ops, i32 %17, i32 %18, i32 %19, i32 1, i32 %20)
  %22 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %23 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %22, i32 0, i32 0
  %24 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %25 = load i32, i32* @ADV748X_SDP_CON_MIN, align 4
  %26 = load i32, i32* @ADV748X_SDP_CON_MAX, align 4
  %27 = load i32, i32* @ADV748X_SDP_CON_DEF, align 4
  %28 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %23, i32* @adv748x_afe_ctrl_ops, i32 %24, i32 %25, i32 %26, i32 1, i32 %27)
  %29 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %30 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %29, i32 0, i32 0
  %31 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %32 = load i32, i32* @ADV748X_SDP_SAT_MIN, align 4
  %33 = load i32, i32* @ADV748X_SDP_SAT_MAX, align 4
  %34 = load i32, i32* @ADV748X_SDP_SAT_DEF, align 4
  %35 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %30, i32* @adv748x_afe_ctrl_ops, i32 %31, i32 %32, i32 %33, i32 1, i32 %34)
  %36 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %37 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %36, i32 0, i32 0
  %38 = load i32, i32* @V4L2_CID_HUE, align 4
  %39 = load i32, i32* @ADV748X_SDP_HUE_MIN, align 4
  %40 = load i32, i32* @ADV748X_SDP_HUE_MAX, align 4
  %41 = load i32, i32* @ADV748X_SDP_HUE_DEF, align 4
  %42 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %37, i32* @adv748x_afe_ctrl_ops, i32 %38, i32 %39, i32 %40, i32 1, i32 %41)
  %43 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %44 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %43, i32 0, i32 0
  %45 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %46 = load i32, i32* @afe_ctrl_frp_menu, align 4
  %47 = call i64 @ARRAY_SIZE(i32 %46)
  %48 = sub nsw i64 %47, 1
  %49 = load i32, i32* @afe_ctrl_frp_menu, align 4
  %50 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_8__* %44, i32* @adv748x_afe_ctrl_ops, i32 %45, i64 %48, i32 0, i32 0, i32 %49)
  %51 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %52 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %51, i32 0, i32 0
  %53 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %54 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %57 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %1
  %62 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %63 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %62, i32 0, i32 0
  %64 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %63)
  %65 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %66 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %1
  %70 = load %struct.adv748x_afe*, %struct.adv748x_afe** %3, align 8
  %71 = getelementptr inbounds %struct.adv748x_afe, %struct.adv748x_afe* %70, i32 0, i32 0
  %72 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__* %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %61
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_8__*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
