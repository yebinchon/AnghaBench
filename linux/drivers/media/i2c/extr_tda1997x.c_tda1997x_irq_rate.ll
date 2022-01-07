; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_irq_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, i64, i32*, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_INT_FLG_CLR_RATE = common dso_local global i32 0, align 4
@MASK_RATE_A_ST = common dso_local global i32 0, align 4
@MASK_RATE_B_ST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"HDMI-%c: Digital Activity Lost\0A\00", align 1
@REG_PIX_REPEAT = common dso_local global i32 0, align 4
@PIX_REPEAT_MASK_UP_SEL = common dso_local global i32 0, align 4
@PIX_REPEAT_MASK_REP = common dso_local global i32 0, align 4
@tda1997x_ev_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"HDMI-%c: Digital Activity Detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda1997x_state*, i32*)* @tda1997x_irq_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda1997x_irq_rate(%struct.tda1997x_state* %0, i32* %1) #0 {
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %12 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %11, i32 0, i32 4
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %5, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = load i32, i32* @REG_INT_FLG_CLR_RATE, align 4
  %15 = call i32 @io_read(%struct.v4l2_subdev* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = load i32, i32* @REG_INT_FLG_CLR_RATE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @io_write(%struct.v4l2_subdev* %16, i32 %17, i32 %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %21 = call i32 @tda1997x_read_activity_status_regs(%struct.v4l2_subdev* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %26, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %28 = call i32 @tda1997x_read_activity_status_regs(%struct.v4l2_subdev* %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %30 = load i32, i32* @REG_INT_FLG_CLR_RATE, align 4
  %31 = call i32 @io_read(%struct.v4l2_subdev* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %33 = load i32, i32* @REG_INT_FLG_CLR_RATE, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @io_write(%struct.v4l2_subdev* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MASK_RATE_A_ST, align 4
  %42 = load i32, i32* @MASK_RATE_B_ST, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %127

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @MASK_RATE_A_ST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 1, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %59 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %57, %62
  br i1 %63, label %64, label %126

64:                                               ; preds = %46
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %64
  %70 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %71 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 65
  %75 = call i32 @v4l_info(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %77 = load i32, i32* @REG_PIX_REPEAT, align 4
  %78 = call i32 @io_read(%struct.v4l2_subdev* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @PIX_REPEAT_MASK_UP_SEL, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @PIX_REPEAT_MASK_REP, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %6, align 4
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %88 = load i32, i32* @REG_PIX_REPEAT, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @io_write(%struct.v4l2_subdev* %87, i32 %88, i32 %89)
  %91 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %92 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %69
  %96 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %97 = call i32 @tda1997x_reset_n1(%struct.tda1997x_state* %96)
  br label %98

98:                                               ; preds = %95, %69
  %99 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %100 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 0, i32* %104, align 4
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %106 = call i32 @v4l2_subdev_notify_event(%struct.v4l2_subdev* %105, i32* @tda1997x_ev_fmt)
  br label %120

107:                                              ; preds = %64
  %108 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %109 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 65
  %113 = call i32 @v4l_info(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %115 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %107, %98
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %10, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %125 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %46
  br label %127

127:                                              ; preds = %126, %39
  ret void
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tda1997x_read_activity_status_regs(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l_info(i32, i8*, i32) #1

declare dso_local i32 @tda1997x_reset_n1(%struct.tda1997x_state*) #1

declare dso_local i32 @v4l2_subdev_notify_event(%struct.v4l2_subdev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
