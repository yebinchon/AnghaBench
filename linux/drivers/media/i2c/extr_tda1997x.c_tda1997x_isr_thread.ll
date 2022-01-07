; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_isr_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_isr_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_INT_FLG_CLR_TOP = common dso_local global i32 0, align 4
@INTERRUPT_SUS = common dso_local global i32 0, align 4
@INTERRUPT_DDC = common dso_local global i32 0, align 4
@INTERRUPT_RATE = common dso_local global i32 0, align 4
@INTERRUPT_INFO = common dso_local global i32 0, align 4
@INTERRUPT_AUDIO = common dso_local global i32 0, align 4
@INTERRUPT_HDCP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tda1997x_isr_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_isr_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tda1997x_state*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.tda1997x_state*
  store %struct.tda1997x_state* %9, %struct.tda1997x_state** %5, align 8
  %10 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %11 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %10, i32 0, i32 1
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %6, align 8
  %12 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %13 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %75, %2
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = load i32, i32* @REG_INT_FLG_CLR_TOP, align 4
  %18 = call i32 @io_read(%struct.v4l2_subdev* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %78

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @INTERRUPT_SUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %29 = call i32 @tda1997x_irq_sus(%struct.tda1997x_state* %28, i32* %7)
  br label %66

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @INTERRUPT_DDC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %37 = call i32 @tda1997x_irq_ddc(%struct.tda1997x_state* %36, i32* %7)
  br label %65

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @INTERRUPT_RATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %45 = call i32 @tda1997x_irq_rate(%struct.tda1997x_state* %44, i32* %7)
  br label %64

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @INTERRUPT_INFO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %53 = call i32 @tda1997x_irq_info(%struct.tda1997x_state* %52, i32* %7)
  br label %63

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @INTERRUPT_AUDIO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %61 = call i32 @tda1997x_irq_audio(%struct.tda1997x_state* %60, i32* %7)
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %27
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @INTERRUPT_HDCP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %73 = call i32 @tda1997x_irq_hdcp(%struct.tda1997x_state* %72, i32* %7)
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %15, label %78

78:                                               ; preds = %75, %21
  %79 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %80 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @tda1997x_irq_sus(%struct.tda1997x_state*, i32*) #1

declare dso_local i32 @tda1997x_irq_ddc(%struct.tda1997x_state*, i32*) #1

declare dso_local i32 @tda1997x_irq_rate(%struct.tda1997x_state*, i32*) #1

declare dso_local i32 @tda1997x_irq_info(%struct.tda1997x_state*, i32*) #1

declare dso_local i32 @tda1997x_irq_audio(%struct.tda1997x_state*, i32*) #1

declare dso_local i32 @tda1997x_irq_hdcp(%struct.tda1997x_state*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
