; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab3100 = type { i32, i32*, i32, i32 }

@AB3100_EVENTA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"IRQ Event: 0x%08x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"error reading event status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ab3100_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ab3100*
  store %struct.ab3100* %11, %struct.ab3100** %6, align 8
  %12 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %13 = load i32, i32* @AB3100_EVENTA1, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %15 = call i32 @ab3100_get_register_page_interruptible(%struct.ab3100* %12, i32 %13, i32* %14, i32 3)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %66

19:                                               ; preds = %2
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %22, %25
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %26, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %31 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %38 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %36, i32* %40, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %44 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %50 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %48, i32* %52, align 4
  %53 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %54 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %34, %19
  %56 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %57 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %56, i32 0, i32 3
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @blocking_notifier_call_chain(i32* %57, i32 %58, i32* null)
  %60 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %61 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %72

66:                                               ; preds = %18
  %67 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %68 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %55
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ab3100_get_register_page_interruptible(%struct.ab3100*, i32, i32*, i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
