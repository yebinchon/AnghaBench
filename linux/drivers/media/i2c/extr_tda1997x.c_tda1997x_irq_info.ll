; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_INT_FLG_CLR_INFO = common dso_local global i32 0, align 4
@MASK_AUD_IF = common dso_local global i32 0, align 4
@AUD_IF = common dso_local global i32 0, align 4
@MASK_SPD_IF = common dso_local global i32 0, align 4
@SPD_IF = common dso_local global i32 0, align 4
@MASK_AVI_IF = common dso_local global i32 0, align 4
@AVI_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*, i32*)* @tda1997x_irq_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_irq_info(%struct.tda1997x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %8 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %7, i32 0, i32 0
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = load i32, i32* @REG_INT_FLG_CLR_INFO, align 4
  %11 = call i32 @io_read(%struct.v4l2_subdev* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = load i32, i32* @REG_INT_FLG_CLR_INFO, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @io_write(%struct.v4l2_subdev* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MASK_AUD_IF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %22 = load i32, i32* @AUD_IF, align 4
  %23 = call i32 @tda1997x_parse_infoframe(%struct.tda1997x_state* %21, i32 %22)
  %24 = load i32, i32* @MASK_AUD_IF, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MASK_SPD_IF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %35 = load i32, i32* @SPD_IF, align 4
  %36 = call i32 @tda1997x_parse_infoframe(%struct.tda1997x_state* %34, i32 %35)
  %37 = load i32, i32* @MASK_SPD_IF, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MASK_AVI_IF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %48 = load i32, i32* @AVI_IF, align 4
  %49 = call i32 @tda1997x_parse_infoframe(%struct.tda1997x_state* %47, i32 %48)
  %50 = load i32, i32* @MASK_AVI_IF, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tda1997x_parse_infoframe(%struct.tda1997x_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
