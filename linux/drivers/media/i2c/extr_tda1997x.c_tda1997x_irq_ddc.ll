; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_ddc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_INT_FLG_CLR_DDC = common dso_local global i32 0, align 4
@MASK_EDID_MTP = common dso_local global i32 0, align 4
@MASK_DET_5V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*, i32*)* @tda1997x_irq_ddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_irq_ddc(%struct.tda1997x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %8 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %7, i32 0, i32 2
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = load i32, i32* @REG_INT_FLG_CLR_DDC, align 4
  %11 = call i32 @io_read(%struct.v4l2_subdev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = load i32, i32* @REG_INT_FLG_CLR_DDC, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @io_write(%struct.v4l2_subdev* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MASK_EDID_MTP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %22 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %27 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MASK_DET_5V, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %36 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %39 = call i32 @tda1997x_detect_tx_5v(%struct.v4l2_subdev* %38)
  %40 = call i32 @v4l2_ctrl_s_ctrl(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i32 @tda1997x_detect_tx_5v(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
