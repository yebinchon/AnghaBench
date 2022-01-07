; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-irq.c_arizona_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-irq.c_arizona_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32 }

@IRQF_ONESHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_request_irq(%struct.arizona* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.arizona* %0, %struct.arizona** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load %struct.arizona*, %struct.arizona** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @arizona_map_irq(%struct.arizona* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %6, align 4
  br label %26

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IRQF_ONESHOT, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @request_threaded_irq(i32 %20, i32* null, i32 %21, i32 %22, i8* %23, i8* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @arizona_map_irq(%struct.arizona*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
