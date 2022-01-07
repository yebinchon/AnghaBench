; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_share_ram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_init_share_ram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, %struct.brcmf_pcie_shared_info, %struct.TYPE_2__* }
%struct.brcmf_pcie_shared_info = type { i32, i64, i64, i8*, i8*, i8*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_bus = type { i32 }

@BRCMF_PCIE_SHARED_VERSION_MASK = common dso_local global i32 0, align 4
@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PCIe protocol version %d\0A\00", align 1
@BRCMF_PCIE_MAX_SHARED_VERSION = common dso_local global i64 0, align 8
@BRCMF_PCIE_MIN_SHARED_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported PCIE version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BRCMF_PCIE_SHARED_DMA_INDEX = common dso_local global i32 0, align 4
@BRCMF_PCIE_SHARED_DMA_2B_IDX = common dso_local global i32 0, align 4
@BRCMF_SHARED_MAX_RXBUFPOST_OFFSET = common dso_local global i64 0, align 8
@BRCMF_DEF_MAX_RXBUFPOST = common dso_local global i64 0, align 8
@BRCMF_SHARED_RX_DATAOFFSET_OFFSET = common dso_local global i64 0, align 8
@BRCMF_SHARED_HTOD_MB_DATA_ADDR_OFFSET = common dso_local global i64 0, align 8
@BRCMF_SHARED_DTOH_MB_DATA_ADDR_OFFSET = common dso_local global i64 0, align 8
@BRCMF_SHARED_RING_INFO_ADDR_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"max rx buf post %d, rx dataoffset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*, i64)* @brcmf_pcie_init_share_ram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_init_share_ram_info(%struct.brcmf_pciedev_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_pciedev_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcmf_bus*, align 8
  %7 = alloca %struct.brcmf_pcie_shared_info*, align 8
  %8 = alloca i64, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %12)
  store %struct.brcmf_bus* %13, %struct.brcmf_bus** %6, align 8
  %14 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %15 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %14, i32 0, i32 1
  store %struct.brcmf_pcie_shared_info* %15, %struct.brcmf_pcie_shared_info** %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %18 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %17, i32 0, i32 7
  store i64 %16, i64* %18, align 8
  %19 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i8* @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %19, i64 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %24 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %26 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BRCMF_PCIE_SHARED_VERSION_MASK, align 4
  %29 = and i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %32 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @PCIE, align 4
  %34 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %35 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %39 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BRCMF_PCIE_MAX_SHARED_VERSION, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %2
  %44 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %45 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BRCMF_PCIE_MIN_SHARED_VERSION, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43, %2
  %50 = load %struct.brcmf_bus*, %struct.brcmf_bus** %6, align 8
  %51 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %52 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @brcmf_err(%struct.brcmf_bus* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %138

57:                                               ; preds = %43
  %58 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %59 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BRCMF_PCIE_SHARED_DMA_INDEX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %66 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BRCMF_PCIE_SHARED_DMA_2B_IDX, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %73 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %72, i32 0, i32 0
  store i32 4, i32* %73, align 8
  br label %77

74:                                               ; preds = %64
  %75 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %76 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %75, i32 0, i32 0
  store i32 8, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @BRCMF_SHARED_MAX_RXBUFPOST_OFFSET, align 8
  %81 = add nsw i64 %79, %80
  store i64 %81, i64* %8, align 8
  %82 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @brcmf_pcie_read_tcm16(%struct.brcmf_pciedev_info* %82, i64 %83)
  %85 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %86 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %88 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load i64, i64* @BRCMF_DEF_MAX_RXBUFPOST, align 8
  %93 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %94 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %78
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @BRCMF_SHARED_RX_DATAOFFSET_OFFSET, align 8
  %98 = add nsw i64 %96, %97
  store i64 %98, i64* %8, align 8
  %99 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i8* @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %99, i64 %100)
  %102 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %103 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @BRCMF_SHARED_HTOD_MB_DATA_ADDR_OFFSET, align 8
  %106 = add nsw i64 %104, %105
  store i64 %106, i64* %8, align 8
  %107 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i8* @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %107, i64 %108)
  %110 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %111 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %110, i32 0, i32 6
  store i8* %109, i8** %111, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @BRCMF_SHARED_DTOH_MB_DATA_ADDR_OFFSET, align 8
  %114 = add nsw i64 %112, %113
  store i64 %114, i64* %8, align 8
  %115 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i8* @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %115, i64 %116)
  %118 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %119 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @BRCMF_SHARED_RING_INFO_ADDR_OFFSET, align 8
  %122 = add nsw i64 %120, %121
  store i64 %122, i64* %8, align 8
  %123 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i8* @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info* %123, i64 %124)
  %126 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %127 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* @PCIE, align 4
  %129 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %130 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.brcmf_pcie_shared_info*, %struct.brcmf_pcie_shared_info** %7, align 8
  %133 = getelementptr inbounds %struct.brcmf_pcie_shared_info, %struct.brcmf_pcie_shared_info* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %131, i8* %134)
  %136 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %4, align 8
  %137 = call i32 @brcmf_pcie_bus_console_init(%struct.brcmf_pciedev_info* %136)
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %95, %49
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local i8* @brcmf_pcie_read_tcm32(%struct.brcmf_pciedev_info*, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*, i64) #1

declare dso_local i64 @brcmf_pcie_read_tcm16(%struct.brcmf_pciedev_info*, i64) #1

declare dso_local i32 @brcmf_pcie_bus_console_init(%struct.brcmf_pciedev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
