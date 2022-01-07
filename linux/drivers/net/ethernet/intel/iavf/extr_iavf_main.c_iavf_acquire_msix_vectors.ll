; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_acquire_msix_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_acquire_msix_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MIN_MSIX_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate MSI-X interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, i32)* @iavf_acquire_msix_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_acquire_msix_vectors(%struct.iavf_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @MIN_MSIX_COUNT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @pci_enable_msix_range(%struct.TYPE_2__* %11, i32* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_2__*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
