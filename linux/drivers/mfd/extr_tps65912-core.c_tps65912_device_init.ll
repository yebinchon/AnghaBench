; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65912-core.c_tps65912_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65912-core.c_tps65912_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65912 = type { i32, i32, i32, i32 }

@IRQF_ONESHOT = common dso_local global i32 0, align 4
@tps65912_irq_chip = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@tps65912_cells = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tps65912_device_init(%struct.tps65912* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tps65912*, align 8
  %4 = alloca i32, align 4
  store %struct.tps65912* %0, %struct.tps65912** %3, align 8
  %5 = load %struct.tps65912*, %struct.tps65912** %3, align 8
  %6 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.tps65912*, %struct.tps65912** %3, align 8
  %9 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IRQF_ONESHOT, align 4
  %12 = load %struct.tps65912*, %struct.tps65912** %3, align 8
  %13 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %12, i32 0, i32 0
  %14 = call i32 @regmap_add_irq_chip(i32 %7, i32 %10, i32 %11, i32 0, i32* @tps65912_irq_chip, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.tps65912*, %struct.tps65912** %3, align 8
  %21 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %24 = load i32, i32* @tps65912_cells, align 4
  %25 = load i32, i32* @tps65912_cells, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.tps65912*, %struct.tps65912** %3, align 8
  %28 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_irq_get_domain(i32 %29)
  %31 = call i32 @mfd_add_devices(i32 %22, i32 %23, i32 %24, i32 %26, i32* null, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %19
  %35 = load %struct.tps65912*, %struct.tps65912** %3, align 8
  %36 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tps65912*, %struct.tps65912** %3, align 8
  %39 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_del_irq_chip(i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %34, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mfd_add_devices(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
