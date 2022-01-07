; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.atl1c_adapter = type { %struct.atl1c_hw, i32, i32, i32, %struct.pci_dev* }
%struct.atl1c_hw = type { i32 }
%struct.pci_dev = type { i32 }

@AT_MAX_INT_WORK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@REG_ISR = common dso_local global i32 0, align 4
@ISR_DIS_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ISR_GPHY = common dso_local global i32 0, align 4
@ISR_RX_PKT = common dso_local global i32 0, align 4
@REG_IMR = common dso_local global i32 0, align 4
@ISR_TX_PKT = common dso_local global i32 0, align 4
@atl1c_trans_normal = common dso_local global i32 0, align 4
@ISR_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"atl1c hardware error (status = 0x%x)\0A\00", align 1
@ATL1C_WORK_EVENT_RESET = common dso_local global i32 0, align 4
@ISR_OVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"TX/RX overflow (status = 0x%x)\0A\00", align 1
@ISR_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atl1c_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.atl1c_adapter*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.atl1c_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.net_device*
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.atl1c_adapter* %17, %struct.atl1c_adapter** %7, align 8
  %18 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %18, i32 0, i32 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  %21 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %21, i32 0, i32 0
  store %struct.atl1c_hw* %22, %struct.atl1c_hw** %9, align 8
  %23 = load i32, i32* @AT_MAX_INT_WORK, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %158, %2
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %27 = load i32, i32* @REG_ISR, align 4
  %28 = call i32 @AT_READ_REG(%struct.atl1c_hw* %26, i32 %27, i32* %13)
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %31 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %29, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @ISR_DIS_INT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36, %25
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @AT_MAX_INT_WORK, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %45, %41
  br label %162

48:                                               ; preds = %36
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @ISR_GPHY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %55 = call i32 @atl1c_clear_phy_int(%struct.atl1c_adapter* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %58 = load i32, i32* @REG_ISR, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @ISR_DIS_INT, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %57, i32 %58, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @ISR_RX_PKT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %56
  %68 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %68, i32 0, i32 3
  %70 = call i32 @napi_schedule_prep(i32* %69)
  %71 = call i64 @likely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load i32, i32* @ISR_RX_PKT, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %77 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %81 = load i32, i32* @REG_IMR, align 4
  %82 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %83 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %80, i32 %81, i32 %84)
  %86 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %86, i32 0, i32 3
  %88 = call i32 @__napi_schedule(i32* %87)
  br label %89

89:                                               ; preds = %73, %67
  br label %90

90:                                               ; preds = %89, %56
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @ISR_TX_PKT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %97 = load i32, i32* @atl1c_trans_normal, align 4
  %98 = call i32 @atl1c_clean_tx_irq(%struct.atl1c_adapter* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @ISR_ERROR, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %99
  %106 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %107 = call i64 @netif_msg_hw(%struct.atl1c_adapter* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @ISR_ERROR, align 4
  %114 = and i32 %112, %113
  %115 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %109, %105
  %117 = load i32, i32* @ATL1C_WORK_EVENT_RESET, align 4
  %118 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %119 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %118, i32 0, i32 2
  %120 = call i32 @set_bit(i32 %117, i32* %119)
  %121 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %122 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %121, i32 0, i32 1
  %123 = call i32 @schedule_work(i32* %122)
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %3, align 4
  br label %168

125:                                              ; preds = %99
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @ISR_OVER, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %132 = call i64 @netif_msg_intr(%struct.atl1c_adapter* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @ISR_OVER, align 4
  %139 = and i32 %137, %138
  %140 = call i32 @dev_warn(i32* %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %134, %130
  br label %142

142:                                              ; preds = %141, %125
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @ISR_GPHY, align 4
  %145 = load i32, i32* @ISR_MANUAL, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %143, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.net_device*, %struct.net_device** %6, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %156 = call i32 @atl1c_link_chg_event(%struct.atl1c_adapter* %155)
  br label %162

157:                                              ; preds = %142
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %10, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %25, label %162

162:                                              ; preds = %158, %149, %47
  %163 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %7, align 8
  %164 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %163, i32 0, i32 0
  %165 = load i32, i32* @REG_ISR, align 4
  %166 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %164, i32 %165, i32 0)
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %162, %116
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @atl1c_clear_phy_int(%struct.atl1c_adapter*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @atl1c_clean_tx_irq(%struct.atl1c_adapter*, i32) #1

declare dso_local i64 @netif_msg_hw(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @netif_msg_intr(%struct.atl1c_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @atl1c_link_chg_event(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
