; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_devm_mfd_add_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_devm_mfd_add_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mfd_cell = type { i32 }
%struct.resource = type { i32 }
%struct.irq_domain = type { i32 }

@devm_mfd_dev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_mfd_add_devices(%struct.device* %0, i32 %1, %struct.mfd_cell* %2, i32 %3, %struct.resource* %4, i32 %5, %struct.irq_domain* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mfd_cell*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.irq_domain*, align 8
  %16 = alloca %struct.device**, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.mfd_cell* %2, %struct.mfd_cell** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.resource* %4, %struct.resource** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.irq_domain* %6, %struct.irq_domain** %15, align 8
  %18 = load i32, i32* @devm_mfd_dev_release, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.device** @devres_alloc(i32 %18, i32 8, i32 %19)
  store %struct.device** %20, %struct.device*** %16, align 8
  %21 = load %struct.device**, %struct.device*** %16, align 8
  %22 = icmp ne %struct.device** %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %48

26:                                               ; preds = %7
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.mfd_cell*, %struct.mfd_cell** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.resource*, %struct.resource** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.irq_domain*, %struct.irq_domain** %15, align 8
  %34 = call i32 @mfd_add_devices(%struct.device* %27, i32 %28, %struct.mfd_cell* %29, i32 %30, %struct.resource* %31, i32 %32, %struct.irq_domain* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.device**, %struct.device*** %16, align 8
  %39 = call i32 @devres_free(%struct.device** %38)
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %8, align 4
  br label %48

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = load %struct.device**, %struct.device*** %16, align 8
  store %struct.device* %42, %struct.device** %43, align 8
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = load %struct.device**, %struct.device*** %16, align 8
  %46 = call i32 @devres_add(%struct.device* %44, %struct.device** %45)
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %41, %37, %23
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.device** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @mfd_add_devices(%struct.device*, i32, %struct.mfd_cell*, i32, %struct.resource*, i32, %struct.irq_domain*) #1

declare dso_local i32 @devres_free(%struct.device**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
