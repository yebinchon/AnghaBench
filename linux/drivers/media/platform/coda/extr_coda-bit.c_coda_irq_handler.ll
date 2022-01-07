; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_dev = type { i32, i32 }
%struct.coda_ctx = type { i32, i32, i64 }

@CODA_REG_BIT_INT_STATUS = common dso_local global i32 0, align 4
@CODA_REG_BIT_INT_REASON = common dso_local global i32 0, align 4
@CODA_REG_BIT_INT_CLEAR_SET = common dso_local global i32 0, align 4
@CODA_REG_BIT_INT_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Instance released before the end of transaction\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"task has been aborted\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"coda is still busy!!!!\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.coda_dev*, align 8
  %7 = alloca %struct.coda_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.coda_dev*
  store %struct.coda_dev* %9, %struct.coda_dev** %6, align 8
  %10 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %11 = load i32, i32* @CODA_REG_BIT_INT_STATUS, align 4
  %12 = call i32 @coda_read(%struct.coda_dev* %10, i32 %11)
  %13 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %14 = load i32, i32* @CODA_REG_BIT_INT_REASON, align 4
  %15 = call i32 @coda_write(%struct.coda_dev* %13, i32 0, i32 %14)
  %16 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %17 = load i32, i32* @CODA_REG_BIT_INT_CLEAR_SET, align 4
  %18 = load i32, i32* @CODA_REG_BIT_INT_CLEAR, align 4
  %19 = call i32 @coda_write(%struct.coda_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %21 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.coda_ctx* @v4l2_m2m_get_curr_priv(i32 %22)
  store %struct.coda_ctx* %23, %struct.coda_ctx** %7, align 8
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %25 = icmp eq %struct.coda_ctx* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.coda_dev*, %struct.coda_dev** %6, align 8
  %28 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %27, i32 0, i32 0
  %29 = call i32 @v4l2_err(i32* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %2
  %32 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %33 = call i32 @trace_coda_bit_done(%struct.coda_ctx* %32)
  %34 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %40 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @coda_isbusy(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %49 = call i32 @coda_dbg(i32 1, %struct.coda_ctx* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @IRQ_NONE, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.coda_ctx*, %struct.coda_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %52, i32 0, i32 0
  %54 = call i32 @complete(i32* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %47, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @coda_read(%struct.coda_dev*, i32) #1

declare dso_local i32 @coda_write(%struct.coda_dev*, i32, i32) #1

declare dso_local %struct.coda_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @trace_coda_bit_done(%struct.coda_ctx*) #1

declare dso_local i32 @coda_dbg(i32, %struct.coda_ctx*, i8*) #1

declare dso_local i64 @coda_isbusy(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
