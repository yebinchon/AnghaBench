; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_get_register_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_get_register_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.abx500_ops = type { i32 (%struct.device*, i32, i32, i32*)* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abx500_get_register_interruptible(%struct.device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.abx500_ops*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lookup_ops(i32 %13, %struct.abx500_ops** %10)
  %15 = load %struct.abx500_ops*, %struct.abx500_ops** %10, align 8
  %16 = icmp ne %struct.abx500_ops* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load %struct.abx500_ops*, %struct.abx500_ops** %10, align 8
  %19 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.device*, i32, i32, i32*)*, i32 (%struct.device*, i32, i32, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.device*, i32, i32, i32*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.abx500_ops*, %struct.abx500_ops** %10, align 8
  %24 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.device*, i32, i32, i32*)*, i32 (%struct.device*, i32, i32, i32*)** %24, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 %25(%struct.device* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %5, align 4
  br label %34

31:                                               ; preds = %17, %4
  %32 = load i32, i32* @ENOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @lookup_ops(i32, %struct.abx500_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
