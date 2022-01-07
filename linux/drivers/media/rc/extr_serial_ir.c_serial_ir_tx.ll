; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_serial_ir_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_serial_ir_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32)*, i32 (...)* }
%struct.rc_dev = type { i32 }

@hardware = common dso_local global %struct.TYPE_2__* null, align 8
@type = common dso_local global i64 0, align 8
@IR_IRDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @serial_ir_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_ir_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %12 = load i64, i64* @type, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i64, i64* @type, align 8
  %18 = load i64, i64* @IR_IRDEO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @on()
  br label %22

22:                                               ; preds = %20, %3
  %23 = call i32 (...) @ktime_get()
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %91, %22
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = srem i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %34 = load i64, i64* @type, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32 (...)*, i32 (...)** %36, align 8
  %38 = call i32 (...) %37()
  br label %52

39:                                               ; preds = %28
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %41 = load i64, i64* @type, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 %44(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %32
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ktime_add_us(i32 %53, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (...) @ktime_get()
  %62 = call i32 @ktime_us_delta(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %63, 25
  br i1 %64, label %65, label %83

65:                                               ; preds = %52
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %67 = load i64, i64* @type, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 25
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 25
  %76 = call i32 @usleep_range(i32 %73, i32 %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %78 = load i64, i64* @type, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  br label %90

83:                                               ; preds = %52
  %84 = load i32, i32* %9, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @udelay(i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %65
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %24

94:                                               ; preds = %24
  %95 = call i32 (...) @off()
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %97 = load i64, i64* @type, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @on(...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
