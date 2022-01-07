; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_setup_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7604.c_adv76xx_setup_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv76xx_state = type { %struct.TYPE_3__*, %struct.TYPE_4__, %struct.v4l2_subdev }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev = type { i32 }

@ADV76XX_RGB_OUT = common dso_local global i32 0, align 4
@ADV76XX_OP_SWAP_CB_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv76xx_state*)* @adv76xx_setup_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv76xx_setup_format(%struct.adv76xx_state* %0) #0 {
  %2 = alloca %struct.adv76xx_state*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  store %struct.adv76xx_state* %0, %struct.adv76xx_state** %2, align 8
  %4 = load %struct.adv76xx_state*, %struct.adv76xx_state** %2, align 8
  %5 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %4, i32 0, i32 2
  store %struct.v4l2_subdev* %5, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.adv76xx_state*, %struct.adv76xx_state** %2, align 8
  %8 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ADV76XX_RGB_OUT, align 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = call i32 @io_write_clr_set(%struct.v4l2_subdev* %6, i32 2, i32 2, i32 %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load %struct.adv76xx_state*, %struct.adv76xx_state** %2, align 8
  %21 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.adv76xx_state*, %struct.adv76xx_state** %2, align 8
  %26 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %24, %28
  %30 = call i32 @io_write(%struct.v4l2_subdev* %19, i32 3, i32 %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = load %struct.adv76xx_state*, %struct.adv76xx_state** %2, align 8
  %33 = call i32 @adv76xx_op_ch_sel(%struct.adv76xx_state* %32)
  %34 = call i32 @io_write_clr_set(%struct.v4l2_subdev* %31, i32 4, i32 224, i32 %33)
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %36 = load %struct.adv76xx_state*, %struct.adv76xx_state** %2, align 8
  %37 = getelementptr inbounds %struct.adv76xx_state, %struct.adv76xx_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %16
  %43 = load i32, i32* @ADV76XX_OP_SWAP_CB_CR, align 4
  br label %45

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = call i32 @io_write_clr_set(%struct.v4l2_subdev* %35, i32 5, i32 1, i32 %46)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %49 = call i32 @set_rgb_quantization_range(%struct.v4l2_subdev* %48)
  ret void
}

declare dso_local i32 @io_write_clr_set(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @adv76xx_op_ch_sel(%struct.adv76xx_state*) #1

declare dso_local i32 @set_rgb_quantization_range(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
