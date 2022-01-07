; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-gpadc.c_ab8500_gpadc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ab8500_gpadc = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_gpadc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_gpadc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ab8500_gpadc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ab8500_gpadc* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ab8500_gpadc* %5, %struct.ab8500_gpadc** %3, align 8
  %6 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %7 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %6, i32 0, i32 4
  %8 = call i32 @list_del(i32* %7)
  %9 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %10 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %15 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.ab8500_gpadc* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %21 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %26 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %29 = call i32 @free_irq(i64 %27, %struct.ab8500_gpadc* %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %32 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pm_runtime_get_sync(i32 %33)
  %35 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %36 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pm_runtime_disable(i32 %37)
  %39 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %40 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regulator_disable(i32 %41)
  %43 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %44 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pm_runtime_set_suspended(i32 %45)
  %47 = load %struct.ab8500_gpadc*, %struct.ab8500_gpadc** %3, align 8
  %48 = getelementptr inbounds %struct.ab8500_gpadc, %struct.ab8500_gpadc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pm_runtime_put_noidle(i32 %49)
  ret i32 0
}

declare dso_local %struct.ab8500_gpadc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.ab8500_gpadc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
