; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_init_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_init_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_fn = type { i32 }
%struct.ocxl_afu = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_fn*, i32)* @init_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_afu(%struct.pci_dev* %0, %struct.ocxl_fn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ocxl_fn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocxl_afu*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.ocxl_fn* %1, %struct.ocxl_fn** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ocxl_fn*, %struct.ocxl_fn** %6, align 8
  %11 = call %struct.ocxl_afu* @alloc_afu(%struct.ocxl_fn* %10)
  store %struct.ocxl_afu* %11, %struct.ocxl_afu** %9, align 8
  %12 = load %struct.ocxl_afu*, %struct.ocxl_afu** %9, align 8
  %13 = icmp ne %struct.ocxl_afu* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.ocxl_afu*, %struct.ocxl_afu** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @configure_afu(%struct.ocxl_afu* %18, i32 %19, %struct.pci_dev* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.ocxl_afu*, %struct.ocxl_afu** %9, align 8
  %26 = call i32 @ocxl_afu_put(%struct.ocxl_afu* %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %17
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load %struct.ocxl_afu*, %struct.ocxl_afu** %9, align 8
  %31 = call i32 @activate_afu(%struct.pci_dev* %29, %struct.ocxl_afu* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.ocxl_afu*, %struct.ocxl_afu** %9, align 8
  %36 = call i32 @deconfigure_afu(%struct.ocxl_afu* %35)
  %37 = load %struct.ocxl_afu*, %struct.ocxl_afu** %9, align 8
  %38 = call i32 @ocxl_afu_put(%struct.ocxl_afu* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %28
  %41 = load %struct.ocxl_afu*, %struct.ocxl_afu** %9, align 8
  %42 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %41, i32 0, i32 0
  %43 = load %struct.ocxl_fn*, %struct.ocxl_fn** %6, align 8
  %44 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %34, %24, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.ocxl_afu* @alloc_afu(%struct.ocxl_fn*) #1

declare dso_local i32 @configure_afu(%struct.ocxl_afu*, i32, %struct.pci_dev*) #1

declare dso_local i32 @ocxl_afu_put(%struct.ocxl_afu*) #1

declare dso_local i32 @activate_afu(%struct.pci_dev*, %struct.ocxl_afu*) #1

declare dso_local i32 @deconfigure_afu(%struct.ocxl_afu*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
