; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_pcidev_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_pcidev_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.platform_info = type { i64*, %struct.dev_info }
%struct.dev_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.platform_info*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pcidev_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcidev_exit(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_info*, align 8
  %5 = alloca %struct.dev_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.platform_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.platform_info* %7, %struct.platform_info** %4, align 8
  %8 = load %struct.platform_info*, %struct.platform_info** %4, align 8
  %9 = getelementptr inbounds %struct.platform_info, %struct.platform_info* %8, i32 0, i32 1
  store %struct.dev_info* %9, %struct.dev_info** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pci_resource_start(%struct.pci_dev* %10, i32 0)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = call i32 @pci_resource_len(%struct.pci_dev* %12, i32 0)
  %14 = call i32 @release_mem_region(i32 %11, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %41, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %18 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load %struct.platform_info*, %struct.platform_info** %4, align 8
  %24 = getelementptr inbounds %struct.platform_info, %struct.platform_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.platform_info*, %struct.platform_info** %4, align 8
  %33 = getelementptr inbounds %struct.platform_info, %struct.platform_info* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @netdev_free(i64 %38)
  br label %40

40:                                               ; preds = %31, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %46 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %52 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @iounmap(i64 %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %58 = call i32 @ksz_free_mem(%struct.dev_info* %57)
  %59 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %60 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.platform_info*, %struct.platform_info** %61, align 8
  %63 = call i32 @kfree(%struct.platform_info* %62)
  %64 = load %struct.dev_info*, %struct.dev_info** %5, align 8
  %65 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pci_dev_put(i32 %66)
  %68 = load %struct.platform_info*, %struct.platform_info** %4, align 8
  %69 = call i32 @kfree(%struct.platform_info* %68)
  ret void
}

declare dso_local %struct.platform_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @netdev_free(i64) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @ksz_free_mem(%struct.dev_info*) #1

declare dso_local i32 @kfree(%struct.platform_info*) #1

declare dso_local i32 @pci_dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
