; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@R_0F_CHROMA_GAIN_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @saa711x_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.saa711x_state*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %6 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.saa711x_state* %8, %struct.saa711x_state** %4, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %29 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  %13 = load %struct.saa711x_state*, %struct.saa711x_state** %4, align 8
  %14 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = load i32, i32* @R_0F_CHROMA_GAIN_CNTL, align 4
  %22 = call i32 @saa711x_read(%struct.v4l2_subdev* %20, i32 %21)
  %23 = and i32 %22, 127
  %24 = load %struct.saa711x_state*, %struct.saa711x_state** %4, align 8
  %25 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %12
  br label %29

29:                                               ; preds = %1, %28
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
