; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_tx_desc_frag_map_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_tx_desc_frag_map_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32, %struct.rocker* }
%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_tlv = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to dma map tx frag\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ROCKER_TLV_TX_FRAG = common dso_local global i32 0, align 4
@ROCKER_TLV_TX_FRAG_ATTR_ADDR = common dso_local global i32 0, align 4
@ROCKER_TLV_TX_FRAG_ATTR_LEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.rocker_desc_info*, i8*, i64)* @rocker_tx_desc_frag_map_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_tx_desc_frag_map_put(%struct.rocker_port* %0, %struct.rocker_desc_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker_port*, align 8
  %7 = alloca %struct.rocker_desc_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rocker*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %6, align 8
  store %struct.rocker_desc_info* %1, %struct.rocker_desc_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %15 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %14, i32 0, i32 1
  %16 = load %struct.rocker*, %struct.rocker** %15, align 8
  store %struct.rocker* %16, %struct.rocker** %10, align 8
  %17 = load %struct.rocker*, %struct.rocker** %10, align 8
  %18 = getelementptr inbounds %struct.rocker, %struct.rocker* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %11, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* @DMA_TO_DEVICE, align 4
  %24 = call i32 @pci_map_single(%struct.pci_dev* %20, i8* %21, i64 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @pci_dma_mapping_error(%struct.pci_dev* %25, i32 %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %4
  %31 = call i64 (...) @net_ratelimit()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %35 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netdev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %78

41:                                               ; preds = %4
  %42 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %43 = load i32, i32* @ROCKER_TLV_TX_FRAG, align 4
  %44 = call %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info* %42, i32 %43)
  store %struct.rocker_tlv* %44, %struct.rocker_tlv** %13, align 8
  %45 = load %struct.rocker_tlv*, %struct.rocker_tlv** %13, align 8
  %46 = icmp ne %struct.rocker_tlv* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %70

48:                                               ; preds = %41
  %49 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %50 = load i32, i32* @ROCKER_TLV_TX_FRAG_ATTR_ADDR, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @rocker_tlv_put_u64(%struct.rocker_desc_info* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %66

55:                                               ; preds = %48
  %56 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %57 = load i32, i32* @ROCKER_TLV_TX_FRAG_ATTR_LEN, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @rocker_tlv_put_u16(%struct.rocker_desc_info* %56, i32 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %66

62:                                               ; preds = %55
  %63 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %64 = load %struct.rocker_tlv*, %struct.rocker_tlv** %13, align 8
  %65 = call i32 @rocker_tlv_nest_end(%struct.rocker_desc_info* %63, %struct.rocker_tlv* %64)
  store i32 0, i32* %5, align 4
  br label %78

66:                                               ; preds = %61, %54
  %67 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %7, align 8
  %68 = load %struct.rocker_tlv*, %struct.rocker_tlv** %13, align 8
  %69 = call i32 @rocker_tlv_nest_cancel(%struct.rocker_desc_info* %67, %struct.rocker_tlv* %68)
  br label %70

70:                                               ; preds = %66, %47
  %71 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = call i32 @pci_unmap_single(%struct.pci_dev* %71, i32 %72, i64 %73, i32 %74)
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %70, %62, %38
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.rocker_tlv* @rocker_tlv_nest_start(%struct.rocker_desc_info*, i32) #1

declare dso_local i64 @rocker_tlv_put_u64(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_u16(%struct.rocker_desc_info*, i32, i64) #1

declare dso_local i32 @rocker_tlv_nest_end(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

declare dso_local i32 @rocker_tlv_nest_cancel(%struct.rocker_desc_info*, %struct.rocker_tlv*) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
