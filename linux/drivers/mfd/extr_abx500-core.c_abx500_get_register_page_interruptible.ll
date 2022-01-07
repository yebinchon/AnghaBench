; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_get_register_page_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_get_register_page_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.abx500_ops = type { i32 (%struct.device*, i32, i32, i32*, i32)* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abx500_get_register_page_interruptible(%struct.device* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.abx500_ops*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lookup_ops(i32 %15, %struct.abx500_ops** %12)
  %17 = load %struct.abx500_ops*, %struct.abx500_ops** %12, align 8
  %18 = icmp ne %struct.abx500_ops* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load %struct.abx500_ops*, %struct.abx500_ops** %12, align 8
  %21 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.device*, i32, i32, i32*, i32)*, i32 (%struct.device*, i32, i32, i32*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.device*, i32, i32, i32*, i32)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.abx500_ops*, %struct.abx500_ops** %12, align 8
  %26 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.device*, i32, i32, i32*, i32)*, i32 (%struct.device*, i32, i32, i32*, i32)** %26, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 %27(%struct.device* %28, i32 %29, i32 %30, i32* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %19, %5
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @lookup_ops(i32, %struct.abx500_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
