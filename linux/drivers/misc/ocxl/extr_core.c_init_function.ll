; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_init_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_init_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_fn = type { i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocxl_fn* (%struct.pci_dev*)* @init_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocxl_fn* @init_function(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.ocxl_fn*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.ocxl_fn*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = call %struct.ocxl_fn* (...) @alloc_function()
  store %struct.ocxl_fn* %6, %struct.ocxl_fn** %4, align 8
  %7 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %8 = icmp ne %struct.ocxl_fn* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.ocxl_fn* @ERR_PTR(i32 %11)
  store %struct.ocxl_fn* %12, %struct.ocxl_fn** %2, align 8
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 @configure_function(%struct.ocxl_fn* %14, %struct.pci_dev* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %21 = call i32 @free_function(%struct.ocxl_fn* %20)
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.ocxl_fn* @ERR_PTR(i32 %22)
  store %struct.ocxl_fn* %23, %struct.ocxl_fn** %2, align 8
  br label %40

24:                                               ; preds = %13
  %25 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %26 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %25, i32 0, i32 0
  %27 = call i32 @device_register(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %32 = call i32 @deconfigure_function(%struct.ocxl_fn* %31)
  %33 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %34 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %33, i32 0, i32 0
  %35 = call i32 @put_device(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.ocxl_fn* @ERR_PTR(i32 %36)
  store %struct.ocxl_fn* %37, %struct.ocxl_fn** %2, align 8
  br label %40

38:                                               ; preds = %24
  %39 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  store %struct.ocxl_fn* %39, %struct.ocxl_fn** %2, align 8
  br label %40

40:                                               ; preds = %38, %30, %19, %9
  %41 = load %struct.ocxl_fn*, %struct.ocxl_fn** %2, align 8
  ret %struct.ocxl_fn* %41
}

declare dso_local %struct.ocxl_fn* @alloc_function(...) #1

declare dso_local %struct.ocxl_fn* @ERR_PTR(i32) #1

declare dso_local i32 @configure_function(%struct.ocxl_fn*, %struct.pci_dev*) #1

declare dso_local i32 @free_function(%struct.ocxl_fn*) #1

declare dso_local i32 @device_register(i32*) #1

declare dso_local i32 @deconfigure_function(%struct.ocxl_fn*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
