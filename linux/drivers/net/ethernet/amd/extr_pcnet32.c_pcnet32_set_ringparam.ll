; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.pcnet32_private = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@CSR0_STOP = common dso_local global i32 0, align 4
@TX_MAX_RING_SIZE = common dso_local global i64 0, align 8
@PCNET32_LOG_MAX_TX_BUFFERS = common dso_local global i32 0, align 4
@RX_MAX_RING_SIZE = common dso_local global i64 0, align 8
@PCNET32_LOG_MAX_RX_BUFFERS = common dso_local global i32 0, align 4
@CSR0_NORMAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Ring Param Settings: RX: %d, TX: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @pcnet32_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.pcnet32_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %11)
  store %struct.pcnet32_private* %12, %struct.pcnet32_private** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %146

28:                                               ; preds = %20
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i64 @netif_running(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @pcnet32_netif_stop(%struct.net_device* %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %37 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %36, i32 0, i32 2
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %41 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @CSR0, align 4
  %47 = load i32, i32* @CSR0_STOP, align 4
  %48 = call i32 %44(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @TX_MAX_RING_SIZE, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @min(i32 %51, i32 %53)
  store i32 %54, i32* %8, align 4
  store i32 2, i32* %10, align 4
  br label %55

55:                                               ; preds = %66, %35
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @PCNET32_LOG_MAX_TX_BUFFERS, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  %63 = icmp ule i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %55

69:                                               ; preds = %64, %55
  %70 = load i32, i32* %10, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %73 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @pcnet32_realloc_tx_ring(%struct.net_device* %77, %struct.pcnet32_private* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* @RX_MAX_RING_SIZE, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @min(i32 %84, i32 %86)
  store i32 %87, i32* %8, align 4
  store i32 2, i32* %10, align 4
  br label %88

88:                                               ; preds = %99, %81
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @PCNET32_LOG_MAX_RX_BUFFERS, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 1, %94
  %96 = icmp ule i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %102

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %88

102:                                              ; preds = %97, %88
  %103 = load i32, i32* %10, align 4
  %104 = shl i32 1, %103
  %105 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %106 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @pcnet32_realloc_rx_ring(%struct.net_device* %110, %struct.pcnet32_private* %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %102
  %115 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %116 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 2
  %119 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %120 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = call i64 @netif_running(%struct.net_device* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = load %struct.net_device*, %struct.net_device** %4, align 8
  %127 = call i32 @pcnet32_netif_start(%struct.net_device* %126)
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = load i32, i32* @CSR0_NORMAL, align 4
  %130 = call i32 @pcnet32_restart(%struct.net_device* %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %114
  %132 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %133 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %132, i32 0, i32 2
  %134 = load i64, i64* %7, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %137 = load i32, i32* @drv, align 4
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %140 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %143 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @netif_info(%struct.pcnet32_private* %136, i32 %137, %struct.net_device* %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %141, i32 %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %131, %25
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pcnet32_netif_stop(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pcnet32_realloc_tx_ring(%struct.net_device*, %struct.pcnet32_private*, i32) #1

declare dso_local i32 @pcnet32_realloc_rx_ring(%struct.net_device*, %struct.pcnet32_private*, i32) #1

declare dso_local i32 @pcnet32_netif_start(%struct.net_device*) #1

declare dso_local i32 @pcnet32_restart(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_info(%struct.pcnet32_private*, i32, %struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
