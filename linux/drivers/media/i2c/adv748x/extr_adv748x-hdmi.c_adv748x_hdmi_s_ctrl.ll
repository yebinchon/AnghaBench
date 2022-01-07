; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.adv748x_hdmi = type { i32 }
%struct.adv748x_state = type { i32 }

@ADV748X_CP_VID_ADJ = common dso_local global i32 0, align 4
@ADV748X_CP_VID_ADJ_ENABLE = common dso_local global i32 0, align 4
@ADV748X_CP_BRI = common dso_local global i32 0, align 4
@ADV748X_CP_HUE = common dso_local global i32 0, align 4
@ADV748X_CP_CON = common dso_local global i32 0, align 4
@ADV748X_CP_SAT = common dso_local global i32 0, align 4
@ADV748X_CP_PAT_GEN_EN = common dso_local global i32 0, align 4
@ADV748X_CP_PAT_GEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @adv748x_hdmi_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.adv748x_hdmi*, align 8
  %5 = alloca %struct.adv748x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.adv748x_hdmi* @adv748x_ctrl_to_hdmi(%struct.v4l2_ctrl* %8)
  store %struct.adv748x_hdmi* %9, %struct.adv748x_hdmi** %4, align 8
  %10 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %4, align 8
  %11 = call %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi* %10)
  store %struct.adv748x_state* %11, %struct.adv748x_state** %5, align 8
  %12 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %13 = load i32, i32* @ADV748X_CP_VID_ADJ, align 4
  %14 = load i32, i32* @ADV748X_CP_VID_ADJ_ENABLE, align 4
  %15 = load i32, i32* @ADV748X_CP_VID_ADJ_ENABLE, align 4
  %16 = call i32 @cp_clrset(%struct.adv748x_state* %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %75

21:                                               ; preds = %1
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %70 [
    i32 132, label %25
    i32 130, label %32
    i32 131, label %39
    i32 129, label %46
    i32 128, label %53
  ]

25:                                               ; preds = %21
  %26 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %27 = load i32, i32* @ADV748X_CP_BRI, align 4
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cp_write(%struct.adv748x_state* %26, i32 %27, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %21
  %33 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %34 = load i32, i32* @ADV748X_CP_HUE, align 4
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cp_write(%struct.adv748x_state* %33, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %73

39:                                               ; preds = %21
  %40 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %41 = load i32, i32* @ADV748X_CP_CON, align 4
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cp_write(%struct.adv748x_state* %40, i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %73

46:                                               ; preds = %21
  %47 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %48 = load i32, i32* @ADV748X_CP_SAT, align 4
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cp_write(%struct.adv748x_state* %47, i32 %48, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %73

53:                                               ; preds = %21
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @ADV748X_CP_PAT_GEN_EN, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %67 = load i32, i32* @ADV748X_CP_PAT_GEN, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @cp_write(%struct.adv748x_state* %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %73

70:                                               ; preds = %21
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %65, %46, %39, %32, %25
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %70, %19
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.adv748x_hdmi* @adv748x_ctrl_to_hdmi(%struct.v4l2_ctrl*) #1

declare dso_local %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi*) #1

declare dso_local i32 @cp_clrset(%struct.adv748x_state*, i32, i32, i32) #1

declare dso_local i32 @cp_write(%struct.adv748x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
