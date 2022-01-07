; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pvpanic.c_pvpanic_mmio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pvpanic.c_pvpanic_mmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@panic_notifier_list = common dso_local global i32 0, align 4
@pvpanic_panic_nb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pvpanic_mmio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvpanic_mmio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @IORESOURCE_MEM, align 4
  %7 = call %struct.resource* @platform_get_resource(%struct.platform_device* %5, i32 %6, i32 0)
  store %struct.resource* %7, %struct.resource** %4, align 8
  %8 = load %struct.resource*, %struct.resource** %4, align 8
  %9 = icmp ne %struct.resource* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = call i32 @devm_ioremap_resource(i32* %15, %struct.resource* %16)
  store i32 %17, i32* @base, align 4
  %18 = load i32, i32* @base, align 4
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @base, align 4
  %23 = call i32 @PTR_ERR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %13
  %25 = call i32 @atomic_notifier_chain_register(i32* @panic_notifier_list, i32* @pvpanic_panic_nb)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %21, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @atomic_notifier_chain_register(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
