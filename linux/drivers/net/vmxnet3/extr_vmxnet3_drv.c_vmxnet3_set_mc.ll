; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_set_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_set_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.Vmxnet3_RxFilterConf }
%struct.Vmxnet3_RxFilterConf = type { i32*, i32, i64, i64 }

@VMXNET3_RXM_UCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@VMXNET3_VFT_SIZE = common dso_local global i32 0, align 4
@VMXNET3_RXM_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@VMXNET3_RXM_BCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@VMXNET3_RXM_ALL_MULTI = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@VMXNET3_RXM_MCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to copy mcast list, setting ALL_MULTI\0A\00", align 1
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_RX_MODE = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_VLAN_FILTERS = common dso_local global i32 0, align 4
@VMXNET3_CMD_UPDATE_MAC_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @vmxnet3_set_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_set_mc(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Vmxnet3_RxFilterConf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.vmxnet3_adapter* %13, %struct.vmxnet3_adapter** %3, align 8
  %14 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.Vmxnet3_RxFilterConf* %18, %struct.Vmxnet3_RxFilterConf** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @VMXNET3_RXM_UCAST, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @VMXNET3_VFT_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(i32* %34, i32 0, i32 %38)
  %40 = load i32, i32* @VMXNET3_RXM_PROMISC, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %45 = call i32 @vmxnet3_restore_vlan(%struct.vmxnet3_adapter* %44)
  br label %46

46:                                               ; preds = %43, %26
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_BROADCAST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @VMXNET3_RXM_BCAST, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_ALLMULTI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @VMXNET3_RXM_ALL_MULTI, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %121

68:                                               ; preds = %57
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = call i32 @netdev_mc_empty(%struct.net_device* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %120, label %72

72:                                               ; preds = %68
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call i32* @vmxnet3_copy_mc(%struct.net_device* %73)
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %110

77:                                               ; preds = %72
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call i64 @netdev_mc_count(%struct.net_device* %78)
  %80 = load i64, i64* @ETH_ALEN, align 8
  %81 = mul i64 %79, %80
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @cpu_to_le16(i64 %82)
  %84 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %85 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %93 = call i32 @dma_map_single(i32* %89, i32* %90, i64 %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @dma_mapping_error(i32* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %77
  %102 = load i32, i32* @VMXNET3_RXM_MCAST, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @cpu_to_le64(i32 %105)
  %107 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %108 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %101, %77
  br label %110

110:                                              ; preds = %109, %72
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = call i32 @netdev_info(%struct.net_device* %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %116 = load i32, i32* @VMXNET3_RXM_ALL_MULTI, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %113, %110
  br label %120

120:                                              ; preds = %119, %68
  br label %121

121:                                              ; preds = %120, %64
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @VMXNET3_RXM_MCAST, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %128 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %130 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %132, i32 0, i32 1
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @spin_lock_irqsave(i32* %133, i64 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %138 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %131
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @cpu_to_le32(i32 %142)
  %144 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %145 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %147 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %148 = load i32, i32* @VMXNET3_CMD_UPDATE_RX_MODE, align 4
  %149 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %146, i32 %147, i32 %148)
  %150 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %151 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %152 = load i32, i32* @VMXNET3_CMD_UPDATE_VLAN_FILTERS, align 4
  %153 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %141, %131
  %155 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %156 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %157 = load i32, i32* @VMXNET3_CMD_UPDATE_MAC_FILTERS, align 4
  %158 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %155, i32 %156, i32 %157)
  %159 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %160 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %159, i32 0, i32 1
  %161 = load i64, i64* %4, align 8
  %162 = call i32 @spin_unlock_irqrestore(i32* %160, i64 %161)
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %154
  %166 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %167 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.Vmxnet3_RxFilterConf*, %struct.Vmxnet3_RxFilterConf** %5, align 8
  %172 = getelementptr inbounds %struct.Vmxnet3_RxFilterConf, %struct.Vmxnet3_RxFilterConf* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %175 = call i32 @dma_unmap_single(i32* %169, i32 %170, i64 %173, i32 %174)
  br label %176

176:                                              ; preds = %165, %154
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @kfree(i32* %177)
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vmxnet3_restore_vlan(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32* @vmxnet3_copy_mc(%struct.net_device*) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i64, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
