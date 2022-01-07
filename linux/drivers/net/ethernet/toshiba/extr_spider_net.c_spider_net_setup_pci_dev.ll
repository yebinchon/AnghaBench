; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_setup_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_setup_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Couldn't enable PCI device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Couldn't find proper PCI device base address.\0A\00", align 1
@spider_net_driver_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Couldn't obtain PCI resources, aborting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Couldn't allocate net_device structure, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spider_net_card* (%struct.pci_dev*)* @spider_net_setup_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spider_net_card* @spider_net_setup_pci_dev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call i64 @pci_enable_device(%struct.pci_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.spider_net_card* null, %struct.spider_net_card** %2, align 8
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 @pci_resource_flags(%struct.pci_dev* %15, i32 0)
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %81

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* @spider_net_driver_name, align 4
  %27 = call i64 @pci_request_regions(%struct.pci_dev* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %81

33:                                               ; preds = %24
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @pci_set_master(%struct.pci_dev* %34)
  %36 = call %struct.spider_net_card* (...) @spider_net_alloc_card()
  store %struct.spider_net_card* %36, %struct.spider_net_card** %4, align 8
  %37 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %38 = icmp ne %struct.spider_net_card* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %78

43:                                               ; preds = %33
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %46 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %45, i32 0, i32 2
  store %struct.pci_dev* %44, %struct.pci_dev** %46, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = call i64 @pci_resource_start(%struct.pci_dev* %47, i32 0)
  store i64 %48, i64* %5, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i64 @pci_resource_len(%struct.pci_dev* %49, i32 0)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %53 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %51, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %56, %57
  %59 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %60 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i64 %58, i64* %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @ioremap(i64 %63, i64 %64)
  %66 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %67 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %69 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %43
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %78

76:                                               ; preds = %43
  %77 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  store %struct.spider_net_card* %77, %struct.spider_net_card** %2, align 8
  br label %84

78:                                               ; preds = %72, %39
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = call i32 @pci_release_regions(%struct.pci_dev* %79)
  br label %81

81:                                               ; preds = %78, %29, %20
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = call i32 @pci_disable_device(%struct.pci_dev* %82)
  store %struct.spider_net_card* null, %struct.spider_net_card** %2, align 8
  br label %84

84:                                               ; preds = %81, %76, %10
  %85 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  ret %struct.spider_net_card* %85
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.spider_net_card* @spider_net_alloc_card(...) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
