; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_serial_ir_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_serial_ir_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@serial_ir_irq_handler.last_dcd = internal global i32 -1, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@RS_ISR_PASS_LIMIT = common dso_local global i32 0, align 4
@serial_ir = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"Trapped in interrupt\00", align 1
@hardware = common dso_local global %struct.TYPE_8__* null, align 8
@type = common dso_local global i64 0, align 8
@sense = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ignoring spike: %d %d %lldns %lldns\0A\00", align 1
@IR_MAX_DURATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"dcd unexpected: %d %d %lldns %lldns\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial_ir_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_ir_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @UART_IIR, align 4
  %13 = call i32 @sinp(i32 %12)
  %14 = load i32, i32* @UART_IIR_NO_INT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %131

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %113, %19
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @UART_MSR, align 4
  %24 = call i32 @sinp(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @RS_ISR_PASS_LIMIT, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 3), align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %120

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hardware, align 8
  %35 = load i64, i64* @type, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %33, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %112

41:                                               ; preds = %32
  %42 = load i32, i32* @sense, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %112

44:                                               ; preds = %41
  %45 = call i32 (...) @ktime_get()
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hardware, align 8
  %48 = load i64, i64* @type, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %46, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @serial_ir_irq_handler.last_dcd, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %44
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 3), align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @sense, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ktime_to_ns(i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 2), align 4
  %67 = call i32 @ktime_to_ns(i32 %66)
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63, i32 %65, i32 %67)
  br label %113

69:                                               ; preds = %44
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 2), align 4
  %72 = call i32 @ktime_sub(i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ktime_set(i32 15, i32 0)
  %75 = call i64 @ktime_compare(i32 %73, i32 %74)
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %69
  %78 = load i32, i32* @IR_MAX_DURATION, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @sense, align 4
  %81 = xor i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 3), align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @sense, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ktime_to_ns(i32 %88)
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 2), align 4
  %91 = call i32 @ktime_to_ns(i32 %90)
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87, i32 %89, i32 %91)
  %93 = load i32, i32* @sense, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 1
  store i32 %96, i32* @sense, align 4
  br label %97

97:                                               ; preds = %83, %77
  br label %101

98:                                               ; preds = %69
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @ktime_to_ns(i32 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %97
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @sense, align 4
  %105 = xor i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @frbwrite(i32 %102, i32 %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 2), align 4
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* @serial_ir_irq_handler.last_dcd, align 4
  br label %112

112:                                              ; preds = %101, %41, %32
  br label %113

113:                                              ; preds = %112, %59
  %114 = load i32, i32* @UART_IIR, align 4
  %115 = call i32 @sinp(i32 %114)
  %116 = load i32, i32* @UART_IIR_NO_INT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br i1 %119, label %20, label %120

120:                                              ; preds = %113, %28
  %121 = load i64, i64* @jiffies, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 0), align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @nsecs_to_jiffies(i32 %124)
  %126 = add nsw i64 %121, %125
  %127 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 1), i64 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @serial_ir, i32 0, i32 0), align 8
  %129 = call i32 @ir_raw_event_handle(%struct.TYPE_7__* %128)
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %120, %17
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @sinp(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @frbwrite(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @nsecs_to_jiffies(i32) #1

declare dso_local i32 @ir_raw_event_handle(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
