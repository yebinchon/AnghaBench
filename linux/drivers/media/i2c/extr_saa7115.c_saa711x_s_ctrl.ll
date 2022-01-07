; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@R_0A_LUMA_BRIGHT_CNTL = common dso_local global i32 0, align 4
@R_0B_LUMA_CONTRAST_CNTL = common dso_local global i32 0, align 4
@R_0C_CHROMA_SAT_CNTL = common dso_local global i32 0, align 4
@R_0D_CHROMA_HUE_CNTL = common dso_local global i32 0, align 4
@R_0F_CHROMA_GAIN_CNTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @saa711x_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.saa711x_state*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.saa711x_state* %9, %struct.saa711x_state** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %68 [
    i32 132, label %13
    i32 130, label %20
    i32 128, label %27
    i32 129, label %34
    i32 131, label %41
  ]

13:                                               ; preds = %1
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load i32, i32* @R_0A_LUMA_BRIGHT_CNTL, align 4
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @saa711x_write(%struct.v4l2_subdev* %14, i32 %15, i32 %18)
  br label %71

20:                                               ; preds = %1
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = load i32, i32* @R_0B_LUMA_CONTRAST_CNTL, align 4
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @saa711x_write(%struct.v4l2_subdev* %21, i32 %22, i32 %25)
  br label %71

27:                                               ; preds = %1
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load i32, i32* @R_0C_CHROMA_SAT_CNTL, align 4
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @saa711x_write(%struct.v4l2_subdev* %28, i32 %29, i32 %32)
  br label %71

34:                                               ; preds = %1
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %36 = load i32, i32* @R_0D_CHROMA_HUE_CNTL, align 4
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @saa711x_write(%struct.v4l2_subdev* %35, i32 %36, i32 %39)
  br label %71

41:                                               ; preds = %1
  %42 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %43 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = load i32, i32* @R_0F_CHROMA_GAIN_CNTL, align 4
  %51 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %52 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @saa711x_write(%struct.v4l2_subdev* %49, i32 %50, i32 %55)
  br label %67

57:                                               ; preds = %41
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %59 = load i32, i32* @R_0F_CHROMA_GAIN_CNTL, align 4
  %60 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %61 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, 128
  %66 = call i32 @saa711x_write(%struct.v4l2_subdev* %58, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %57, %48
  br label %71

68:                                               ; preds = %1
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %67, %34, %27, %20, %13
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
