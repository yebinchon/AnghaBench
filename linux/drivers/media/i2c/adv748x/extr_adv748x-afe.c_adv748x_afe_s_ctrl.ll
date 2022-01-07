; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-afe.c_adv748x_afe_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.adv748x_afe = type { i32 }
%struct.adv748x_state = type { i32 }

@ADV748X_SDP_BRI = common dso_local global i32 0, align 4
@ADV748X_SDP_HUE = common dso_local global i32 0, align 4
@ADV748X_SDP_CON = common dso_local global i32 0, align 4
@ADV748X_SDP_SD_SAT_U = common dso_local global i32 0, align 4
@ADV748X_SDP_SD_SAT_V = common dso_local global i32 0, align 4
@ADV748X_SDP_DEF = common dso_local global i32 0, align 4
@ADV748X_SDP_DEF_VAL_EN = common dso_local global i32 0, align 4
@ADV748X_SDP_FRP = common dso_local global i32 0, align 4
@ADV748X_SDP_FRP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @adv748x_afe_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_afe_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.adv748x_afe*, align 8
  %5 = alloca %struct.adv748x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.adv748x_afe* @adv748x_ctrl_to_afe(%struct.v4l2_ctrl* %8)
  store %struct.adv748x_afe* %9, %struct.adv748x_afe** %4, align 8
  %10 = load %struct.adv748x_afe*, %struct.adv748x_afe** %4, align 8
  %11 = call %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe* %10)
  store %struct.adv748x_state* %11, %struct.adv748x_state** %5, align 8
  %12 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %13 = call i32 @sdp_write(%struct.adv748x_state* %12, i32 14, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %97

18:                                               ; preds = %1
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %92 [
    i32 132, label %22
    i32 130, label %29
    i32 131, label %37
    i32 129, label %44
    i32 128, label %61
  ]

22:                                               ; preds = %18
  %23 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %24 = load i32, i32* @ADV748X_SDP_BRI, align 4
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sdp_write(%struct.adv748x_state* %23, i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %95

29:                                               ; preds = %18
  %30 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %31 = load i32, i32* @ADV748X_SDP_HUE, align 4
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @sdp_write(%struct.adv748x_state* %30, i32 %31, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %95

37:                                               ; preds = %18
  %38 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %39 = load i32, i32* @ADV748X_SDP_CON, align 4
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sdp_write(%struct.adv748x_state* %38, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %95

44:                                               ; preds = %18
  %45 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %46 = load i32, i32* @ADV748X_SDP_SD_SAT_U, align 4
  %47 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sdp_write(%struct.adv748x_state* %45, i32 %46, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %95

54:                                               ; preds = %44
  %55 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %56 = load i32, i32* @ADV748X_SDP_SD_SAT_V, align 4
  %57 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sdp_write(%struct.adv748x_state* %55, i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %95

61:                                               ; preds = %18
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %70 = load i32, i32* @ADV748X_SDP_DEF, align 4
  %71 = load i32, i32* @ADV748X_SDP_DEF_VAL_EN, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @sdp_clrset(%struct.adv748x_state* %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %95

77:                                               ; preds = %61
  %78 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %79 = load i32, i32* @ADV748X_SDP_FRP, align 4
  %80 = load i32, i32* @ADV748X_SDP_FRP_MASK, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  br label %89

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i32 [ %87, %83 ], [ 0, %88 ]
  %91 = call i32 @sdp_clrset(%struct.adv748x_state* %78, i32 %79, i32 %80, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %95

92:                                               ; preds = %18
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %97

95:                                               ; preds = %89, %76, %54, %53, %37, %29, %22
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %92, %16
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.adv748x_afe* @adv748x_ctrl_to_afe(%struct.v4l2_ctrl*) #1

declare dso_local %struct.adv748x_state* @adv748x_afe_to_state(%struct.adv748x_afe*) #1

declare dso_local i32 @sdp_write(%struct.adv748x_state*, i32, i32) #1

declare dso_local i32 @sdp_clrset(%struct.adv748x_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
