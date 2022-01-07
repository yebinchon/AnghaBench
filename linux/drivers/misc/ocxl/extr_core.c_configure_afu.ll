; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_configure_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_configure_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_afu*, i32, %struct.pci_dev*)* @configure_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_afu(%struct.ocxl_afu* %0, i32 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocxl_afu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %10 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %11 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %15 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %14, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ocxl_config_read_afu(%struct.pci_dev* %9, i32* %13, i32* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %24 = call i32 @assign_afu_actag(%struct.ocxl_afu* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %22
  %30 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %31 = call i32 @assign_afu_pasid(%struct.ocxl_afu* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %29
  %36 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %37 = call i32 @map_mmio_areas(%struct.ocxl_afu* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %49

42:                                               ; preds = %40
  %43 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %44 = call i32 @reclaim_afu_pasid(%struct.ocxl_afu* %43)
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.ocxl_afu*, %struct.ocxl_afu** %5, align 8
  %47 = call i32 @reclaim_afu_actag(%struct.ocxl_afu* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %41, %27, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ocxl_config_read_afu(%struct.pci_dev*, i32*, i32*, i32) #1

declare dso_local i32 @assign_afu_actag(%struct.ocxl_afu*) #1

declare dso_local i32 @assign_afu_pasid(%struct.ocxl_afu*) #1

declare dso_local i32 @map_mmio_areas(%struct.ocxl_afu*) #1

declare dso_local i32 @reclaim_afu_pasid(%struct.ocxl_afu*) #1

declare dso_local i32 @reclaim_afu_actag(%struct.ocxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
