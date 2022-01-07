; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i64 }
%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_seeprom_read* }
%struct.be_cmd_resp_seeprom_read = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@LANCER_VPD_PF_FILE = common dso_local global i32 0, align 4
@LANCER_VPD_VF_FILE = common dso_local global i32 0, align 4
@BE_VENDOR_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @be_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_read_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca %struct.be_cmd_resp_seeprom_read*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.be_adapter* %13, %struct.be_adapter** %8, align 8
  %14 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %15 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %108

21:                                               ; preds = %3
  %22 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %23 = call i64 @lancer_chip(%struct.be_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %27 = call i64 @be_physfn(%struct.be_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %31 = load i32, i32* @LANCER_VPD_PF_FILE, align 4
  %32 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @lancer_cmd_read_file(%struct.be_adapter* %30, i32 %31, i32 %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %108

37:                                               ; preds = %25
  %38 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %39 = load i32, i32* @LANCER_VPD_VF_FILE, align 4
  %40 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @lancer_cmd_read_file(%struct.be_adapter* %38, i32 %39, i32 %42, i32* %43)
  store i32 %44, i32* %4, align 4
  br label %108

45:                                               ; preds = %21
  %46 = load i32, i32* @BE_VENDOR_ID, align 4
  %47 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %46, %52
  %54 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = call i32 @memset(%struct.be_dma_mem* %9, i32 0, i32 16)
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  store i32 4, i32* %57, align 8
  %58 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %59 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.be_cmd_resp_seeprom_read* @dma_alloc_coherent(i32* %61, i32 %63, i32* %64, i32 %65)
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  store %struct.be_cmd_resp_seeprom_read* %66, %struct.be_cmd_resp_seeprom_read** %67, align 8
  %68 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %69 = load %struct.be_cmd_resp_seeprom_read*, %struct.be_cmd_resp_seeprom_read** %68, align 8
  %70 = icmp ne %struct.be_cmd_resp_seeprom_read* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %45
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %108

74:                                               ; preds = %45
  %75 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %76 = call i32 @be_cmd_get_seeprom_data(%struct.be_adapter* %75, %struct.be_dma_mem* %9)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %81 = load %struct.be_cmd_resp_seeprom_read*, %struct.be_cmd_resp_seeprom_read** %80, align 8
  store %struct.be_cmd_resp_seeprom_read* %81, %struct.be_cmd_resp_seeprom_read** %10, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.be_cmd_resp_seeprom_read*, %struct.be_cmd_resp_seeprom_read** %10, align 8
  %84 = getelementptr inbounds %struct.be_cmd_resp_seeprom_read, %struct.be_cmd_resp_seeprom_read* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %87 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %91 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy(i32* %82, i64 %89, i32 %92)
  br label %94

94:                                               ; preds = %79, %74
  %95 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %96 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %102 = load %struct.be_cmd_resp_seeprom_read*, %struct.be_cmd_resp_seeprom_read** %101, align 8
  %103 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dma_free_coherent(i32* %98, i32 %100, %struct.be_cmd_resp_seeprom_read* %102, i32 %104)
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @be_cmd_status(i32 %106)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %94, %71, %37, %29, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @lancer_cmd_read_file(%struct.be_adapter*, i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local %struct.be_cmd_resp_seeprom_read* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @be_cmd_get_seeprom_data(%struct.be_adapter*, %struct.be_dma_mem*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.be_cmd_resp_seeprom_read*, i32) #1

declare dso_local i32 @be_cmd_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
