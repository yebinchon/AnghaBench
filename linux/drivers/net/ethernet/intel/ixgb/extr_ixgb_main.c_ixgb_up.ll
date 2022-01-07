; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32, i32, i32, %struct.net_device*, %struct.TYPE_3__*, %struct.ixgb_hw, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ixgb_hw = type { i32 }

@IRQF_SHARED = common dso_local global i32 0, align 4
@ENET_HEADER_SIZE = common dso_local global i32 0, align 4
@ENET_FCS_LENGTH = common dso_local global i32 0, align 4
@IMC = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@IXGB_STATUS_PCIX_MODE = common dso_local global i32 0, align 4
@ixgb_intr = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate interrupt Error: %d\0A\00", align 1
@MFS = common dso_local global i32 0, align 4
@IXGB_MFS_SHIFT = common dso_local global i32 0, align 4
@IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS = common dso_local global i32 0, align 4
@CTRL0 = common dso_local global i32 0, align 4
@IXGB_CTRL0_JFE = common dso_local global i32 0, align 4
@__IXGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgb_up(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgb_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %3, align 8
  %10 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %10, i32 0, i32 4
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ENET_HEADER_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @ENET_FCS_LENGTH, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %21, i32 0, i32 6
  store %struct.ixgb_hw* %22, %struct.ixgb_hw** %8, align 8
  %23 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ixgb_rar_set(%struct.ixgb_hw* %23, i32 %26, i32 0)
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @ixgb_set_multi(%struct.net_device* %28)
  %30 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %31 = call i32 @ixgb_restore_vlan(%struct.ixgb_adapter* %30)
  %32 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %33 = call i32 @ixgb_configure_tx(%struct.ixgb_adapter* %32)
  %34 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %35 = call i32 @ixgb_setup_rctl(%struct.ixgb_adapter* %34)
  %36 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %37 = call i32 @ixgb_configure_rx(%struct.ixgb_adapter* %36)
  %38 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %39 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %39, i32 0, i32 7
  %41 = call i32 @IXGB_DESC_UNUSED(i32* %40)
  %42 = call i32 @ixgb_alloc_rx_buffers(%struct.ixgb_adapter* %38, i32 %41)
  %43 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %43, i32 0, i32 6
  %45 = load i32, i32* @IMC, align 4
  %46 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %44, i32 %45, i32 -1)
  %47 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %47, i32 0, i32 6
  %49 = load i32, i32* @STATUS, align 4
  %50 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %48, i32 %49)
  %51 = load i32, i32* @IXGB_STATUS_PCIX_MODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %1
  %55 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %55, i32 0, i32 5
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @pci_enable_msi(%struct.TYPE_3__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ixgb_intr, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = call i32 @request_irq(i32 %70, i32 %71, i32 %72, i32 %75, %struct.net_device* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %65
  %81 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %86, i32 0, i32 5
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @pci_disable_msi(%struct.TYPE_3__* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %92 = load i32, i32* @probe, align 4
  %93 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %93, i32 0, i32 4
  %95 = load %struct.net_device*, %struct.net_device** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @netif_err(%struct.ixgb_adapter* %91, i32 %92, %struct.net_device* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %168

99:                                               ; preds = %65
  %100 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %101 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %99
  %106 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %107 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %110 = load i32, i32* @MFS, align 4
  %111 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %109, i32 %110)
  %112 = load i32, i32* @IXGB_MFS_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = icmp ne i32 %108, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %105, %99
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %118 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %120 = load i32, i32* @MFS, align 4
  %121 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %122 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IXGB_MFS_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %119, i32 %120, i32 %125)
  %127 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %128 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS, align 4
  %131 = load i32, i32* @ENET_FCS_LENGTH, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %115
  %135 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %136 = load i32, i32* @CTRL0, align 4
  %137 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %135, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  %146 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %147 = load i32, i32* @CTRL0, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %142, %134
  br label %151

151:                                              ; preds = %150, %115
  br label %152

152:                                              ; preds = %151, %105
  %153 = load i32, i32* @__IXGB_DOWN, align 4
  %154 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %155 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %154, i32 0, i32 3
  %156 = call i32 @clear_bit(i32 %153, i32* %155)
  %157 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %157, i32 0, i32 2
  %159 = call i32 @napi_enable(i32* %158)
  %160 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %161 = call i32 @ixgb_irq_enable(%struct.ixgb_adapter* %160)
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 @netif_wake_queue(%struct.net_device* %162)
  %164 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %164, i32 0, i32 1
  %166 = load i32, i32* @jiffies, align 4
  %167 = call i32 @mod_timer(i32* %165, i32 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %152, %90
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @ixgb_rar_set(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @ixgb_set_multi(%struct.net_device*) #1

declare dso_local i32 @ixgb_restore_vlan(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_configure_tx(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_setup_rctl(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_configure_rx(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_alloc_rx_buffers(%struct.ixgb_adapter*, i32) #1

declare dso_local i32 @IXGB_DESC_UNUSED(i32*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_err(%struct.ixgb_adapter*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ixgb_irq_enable(%struct.ixgb_adapter*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
