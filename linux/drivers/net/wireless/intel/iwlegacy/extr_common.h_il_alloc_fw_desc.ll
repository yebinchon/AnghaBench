; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.h_il_alloc_fw_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.h_il_alloc_fw_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fw_desc = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.fw_desc*)* @il_alloc_fw_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_alloc_fw_desc(%struct.pci_dev* %0, %struct.fw_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.fw_desc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.fw_desc* %1, %struct.fw_desc** %5, align 8
  %6 = load %struct.fw_desc*, %struct.fw_desc** %5, align 8
  %7 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.fw_desc*, %struct.fw_desc** %5, align 8
  %12 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.fw_desc*, %struct.fw_desc** %5, align 8
  %19 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fw_desc*, %struct.fw_desc** %5, align 8
  %22 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @dma_alloc_coherent(i32* %17, i32 %20, i32* %22, i32 %23)
  %25 = load %struct.fw_desc*, %struct.fw_desc** %5, align 8
  %26 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.fw_desc*, %struct.fw_desc** %5, align 8
  %28 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %35

32:                                               ; preds = %15
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
