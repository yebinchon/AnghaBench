; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.ab8500* }
%struct.ab8500 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ab8500_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @ab8500_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_irq_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ab8500*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.ab8500*, %struct.ab8500** %10, align 8
  store %struct.ab8500* %11, %struct.ab8500** %8, align 8
  %12 = load %struct.ab8500*, %struct.ab8500** %8, align 8
  %13 = icmp ne %struct.ab8500* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ab8500*, %struct.ab8500** %8, align 8
  %20 = call i32 @irq_set_chip_data(i32 %18, %struct.ab8500* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @handle_simple_irq, align 4
  %23 = call i32 @irq_set_chip_and_handler(i32 %21, i32* @ab8500_irq_chip, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @irq_set_nested_thread(i32 %24, i32 1)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @irq_set_noprobe(i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @irq_set_chip_data(i32, %struct.ab8500*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_nested_thread(i32, i32) #1

declare dso_local i32 @irq_set_noprobe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
