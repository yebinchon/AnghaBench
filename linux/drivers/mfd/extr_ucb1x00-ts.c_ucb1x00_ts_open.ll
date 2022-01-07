; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.ucb1x00_ts = type { i32*, %struct.TYPE_3__*, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@UCB_IRQ_TSPX = common dso_local global i64 0, align 8
@ucb1x00_ts_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ucb1x00-ts\00", align 1
@ucb1x00_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ktsd\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @ucb1x00_ts_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_ts_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.ucb1x00_ts*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %7 = call %struct.ucb1x00_ts* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.ucb1x00_ts* %7, %struct.ucb1x00_ts** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %9 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @BUG_ON(i32* %10)
  %12 = call i64 (...) @machine_is_collie()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  store i64 %15, i64* %4, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %20 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %22 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %21, i32 0, i32 4
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %25 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UCB_IRQ_TSPX, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @ucb1x00_ts_irq, align 4
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %34 = call i32 @request_irq(i64 %30, i32 %31, i64 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.ucb1x00_ts* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %81

38:                                               ; preds = %18
  %39 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %40 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @ucb1x00_adc_enable(%struct.TYPE_3__* %41)
  %43 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %44 = call i32 @ucb1x00_ts_read_xres(%struct.ucb1x00_ts* %43)
  %45 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %46 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %48 = call i32 @ucb1x00_ts_read_yres(%struct.ucb1x00_ts* %47)
  %49 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %50 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %52 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = call i32 @ucb1x00_adc_disable(%struct.TYPE_3__* %53)
  %55 = load i32, i32* @ucb1x00_thread, align 4
  %56 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %57 = call i32* @kthread_run(i32 %55, %struct.ucb1x00_ts* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %59 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %61 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @IS_ERR(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %80

66:                                               ; preds = %38
  %67 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %68 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UCB_IRQ_TSPX, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %75 = call i32 @free_irq(i64 %73, %struct.ucb1x00_ts* %74)
  %76 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %3, align 8
  %77 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %66, %65
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.ucb1x00_ts* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @BUG_ON(i32*) #1

declare dso_local i64 @machine_is_collie(...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @request_irq(i64, i32, i64, i8*, %struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_adc_enable(%struct.TYPE_3__*) #1

declare dso_local i32 @ucb1x00_ts_read_xres(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_ts_read_yres(%struct.ucb1x00_ts*) #1

declare dso_local i32 @ucb1x00_adc_disable(%struct.TYPE_3__*) #1

declare dso_local i32* @kthread_run(i32, %struct.ucb1x00_ts*, i8*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.ucb1x00_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
