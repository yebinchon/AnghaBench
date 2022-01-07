; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"irq processing thread\0A\00", align 1
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i8* null, align 8
@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"state set to busy, this should not occur here\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s5p_cec_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_cec_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s5p_cec_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.s5p_cec_dev*
  store %struct.s5p_cec_dev* %7, %struct.s5p_cec_dev** %5, align 8
  %8 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %9 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %13 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %54 [
    i32 130, label %15
    i32 128, label %25
    i32 129, label %37
    i32 131, label %49
  ]

15:                                               ; preds = %2
  %16 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %17 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %20 = call i32 @cec_transmit_done(i32 %18, i32 %19, i32 0, i32 0, i32 0, i32 0)
  %21 = load i8*, i8** @STATE_IDLE, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %24 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %55

25:                                               ; preds = %2
  %26 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %27 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %30 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @cec_transmit_done(i32 %28, i32 %31, i32 0, i32 1, i32 0, i32 0)
  %33 = load i8*, i8** @STATE_IDLE, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %36 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %55

37:                                               ; preds = %2
  %38 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %42 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @cec_transmit_done(i32 %40, i32 %43, i32 0, i32 0, i32 0, i32 1)
  %45 = load i8*, i8** @STATE_IDLE, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %48 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %55

49:                                               ; preds = %2
  %50 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %51 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %55

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %54, %49, %37, %25, %15
  %56 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %57 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %70 [
    i32 130, label %59
  ]

59:                                               ; preds = %55
  %60 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %61 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %64 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %63, i32 0, i32 2
  %65 = call i32 @cec_received_msg(i32 %62, i32* %64)
  %66 = load i8*, i8** @STATE_IDLE, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %69 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cec_transmit_done(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @cec_received_msg(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
