; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.device_node = type { i32 }

@AB8540_NR_IRQS = common dso_local global i32 0, align 4
@AB9540_NR_IRQS = common dso_local global i32 0, align 4
@AB8505_NR_IRQS = common dso_local global i32 0, align 4
@AB8500_NR_IRQS = common dso_local global i32 0, align 4
@ab8500_irq_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to create irqdomain\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500*, %struct.device_node*)* @ab8500_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_irq_init(%struct.ab8500* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ab8500*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.ab8500* %0, %struct.ab8500** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %8 = call i64 @is_ab8540(%struct.ab8500* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @AB8540_NR_IRQS, align 4
  store i32 %11, i32* %6, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %14 = call i64 @is_ab9540(%struct.ab8500* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @AB9540_NR_IRQS, align 4
  store i32 %17, i32* %6, align 4
  br label %27

18:                                               ; preds = %12
  %19 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %20 = call i64 @is_ab8505(%struct.ab8500* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @AB8505_NR_IRQS, align 4
  store i32 %23, i32* %6, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @AB8500_NR_IRQS, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %27

27:                                               ; preds = %26, %16
  br label %28

28:                                               ; preds = %27, %10
  %29 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %30 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %36 = call i32 @irq_domain_add_simple(i32 %33, i32 %34, i32 0, i32* @ab8500_irq_ops, %struct.ab8500* %35)
  %37 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %38 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %40 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %28
  %44 = load %struct.ab8500*, %struct.ab8500** %4, align 8
  %45 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @dev_err(%struct.TYPE_2__* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @is_ab8540(%struct.ab8500*) #1

declare dso_local i64 @is_ab9540(%struct.ab8500*) #1

declare dso_local i64 @is_ab8505(%struct.ab8500*) #1

declare dso_local i32 @irq_domain_add_simple(i32, i32, i32, i32*, %struct.ab8500*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
