; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_s5p_cec.c_s5p_cec_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i64, %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"irq received\0A\00", align 1
@CEC_STATUS_TX_DONE = common dso_local global i32 0, align 4
@CEC_STATUS_TX_NACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"CEC_STATUS_TX_NACK set\0A\00", align 1
@STATE_NACK = common dso_local global i8* null, align 8
@CEC_STATUS_TX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"CEC_STATUS_TX_ERROR set\0A\00", align 1
@STATE_ERROR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"CEC_STATUS_TX_DONE\0A\00", align 1
@STATE_DONE = common dso_local global i8* null, align 8
@CEC_STATUS_RX_DONE = common dso_local global i32 0, align 4
@CEC_STATUS_RX_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"CEC_STATUS_RX_ERROR set\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"CEC_STATUS_RX_DONE set\0A\00", align 1
@STATE_IDLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"Buffer overrun (worker did not process previous message)\0A\00", align 1
@STATE_BUSY = common dso_local global i64 0, align 8
@CEC_RX_STATUS_OK = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s5p_cec_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_cec_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s5p_cec_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.s5p_cec_dev*
  store %struct.s5p_cec_dev* %8, %struct.s5p_cec_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %10 = call i32 @s5p_cec_get_status(%struct.s5p_cec_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %12 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CEC_STATUS_TX_DONE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CEC_STATUS_TX_NACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %26 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** @STATE_NACK, align 8
  %30 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %31 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  br label %54

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CEC_STATUS_TX_ERROR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %39 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** @STATE_ERROR, align 8
  %43 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %44 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  br label %53

45:                                               ; preds = %32
  %46 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %47 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i8*, i8** @STATE_DONE, align 8
  %51 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %52 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %45, %37
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %56 = call i32 @s5p_clr_pending_tx(%struct.s5p_cec_dev* %55)
  br label %57

57:                                               ; preds = %54, %2
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CEC_STATUS_RX_DONE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %123

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @CEC_STATUS_RX_ERROR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %69 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %73 = call i32 @s5p_cec_rx_reset(%struct.s5p_cec_dev* %72)
  %74 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %75 = call i32 @s5p_cec_enable_rx(%struct.s5p_cec_dev* %74)
  br label %120

76:                                               ; preds = %62
  %77 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %78 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %82 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @STATE_IDLE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %88 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %76
  %92 = load i64, i64* @STATE_BUSY, align 8
  %93 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %94 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 24
  %97 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %98 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @CEC_RX_STATUS_OK, align 4
  %101 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %102 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %105 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %106 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %110 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @s5p_cec_get_rx_buf(%struct.s5p_cec_dev* %104, i32 %108, i32 %112)
  %114 = load i8*, i8** @STATE_DONE, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %117 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %119 = call i32 @s5p_cec_enable_rx(%struct.s5p_cec_dev* %118)
  br label %120

120:                                              ; preds = %91, %67
  %121 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %5, align 8
  %122 = call i32 @s5p_clr_pending_rx(%struct.s5p_cec_dev* %121)
  br label %123

123:                                              ; preds = %120, %57
  %124 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %124
}

declare dso_local i32 @s5p_cec_get_status(%struct.s5p_cec_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @s5p_clr_pending_tx(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_rx_reset(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_enable_rx(%struct.s5p_cec_dev*) #1

declare dso_local i32 @s5p_cec_get_rx_buf(%struct.s5p_cec_dev*, i32, i32) #1

declare dso_local i32 @s5p_clr_pending_rx(%struct.s5p_cec_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
