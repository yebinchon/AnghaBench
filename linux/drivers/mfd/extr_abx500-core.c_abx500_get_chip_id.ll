; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_get_chip_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_get_chip_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.abx500_ops = type { i32 (%struct.device*)* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abx500_get_chip_id(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.abx500_ops*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @lookup_ops(i32 %7, %struct.abx500_ops** %4)
  %9 = load %struct.abx500_ops*, %struct.abx500_ops** %4, align 8
  %10 = icmp ne %struct.abx500_ops* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.abx500_ops*, %struct.abx500_ops** %4, align 8
  %13 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %12, i32 0, i32 0
  %14 = load i32 (%struct.device*)*, i32 (%struct.device*)** %13, align 8
  %15 = icmp ne i32 (%struct.device*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.abx500_ops*, %struct.abx500_ops** %4, align 8
  %18 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.device*)*, i32 (%struct.device*)** %18, align 8
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 %19(%struct.device* %20)
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %11, %1
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @lookup_ops(i32, %struct.abx500_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
