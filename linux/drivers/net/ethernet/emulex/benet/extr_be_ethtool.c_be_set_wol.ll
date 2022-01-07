; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.be_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BE_WOL_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WOL not supported\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not set Wake-on-lan mac address\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @be_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.be_dma_mem, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.be_adapter* %15, %struct.be_adapter** %6, align 8
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WAKE_MAGIC, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

34:                                               ; preds = %2
  %35 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BE_WOL_CAP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  store i32 4, i32* %50, align 4
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @dma_alloc_coherent(%struct.device* %51, i32 %53, i32* %54, i32 %55)
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

64:                                               ; preds = %49
  %65 = call i32 @eth_zero_addr(i32* %23)
  %66 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @WAKE_MAGIC, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ether_addr_copy(i32* %23, i32 %78)
  br label %80

80:                                               ; preds = %73, %64
  %81 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %82 = call i32 @be_cmd_enable_magic_wol(%struct.be_adapter* %81, i32* %23, %struct.be_dma_mem* %8)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @be_cmd_status(i32 %88)
  store i32 %89, i32* %12, align 4
  br label %109

90:                                               ; preds = %80
  %91 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* @PCI_D3hot, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @pci_enable_wake(%struct.TYPE_4__* %93, i32 %94, i32 %95)
  %97 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %98 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* @PCI_D3cold, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @pci_enable_wake(%struct.TYPE_4__* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %108 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %90, %85
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %8, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dma_free_coherent(%struct.device* %110, i32 %112, i32 %114, i32 %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %109, %61, %41, %31
  %120 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @be_cmd_enable_magic_wol(%struct.be_adapter*, i32*, %struct.be_dma_mem*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @be_cmd_status(i32) #1

declare dso_local i32 @pci_enable_wake(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
