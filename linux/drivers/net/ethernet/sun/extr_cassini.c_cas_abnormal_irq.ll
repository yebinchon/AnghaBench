; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_abnormal_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_abnormal_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@INTR_RX_TAG_ERROR = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"corrupt rx tag framing\0A\00", align 1
@INTR_RX_LEN_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"length mismatch for rx frame\0A\00", align 1
@INTR_PCS_STATUS = common dso_local global i32 0, align 4
@INTR_TX_MAC_STATUS = common dso_local global i32 0, align 4
@INTR_RX_MAC_STATUS = common dso_local global i32 0, align 4
@INTR_MAC_CTRL_STATUS = common dso_local global i32 0, align 4
@INTR_MIF_STATUS = common dso_local global i32 0, align 4
@INTR_PCI_ERROR_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"reset called in cas_abnormal_irq [0x%x]\0A\00", align 1
@CAS_RESET_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cas*, i32)* @cas_abnormal_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_abnormal_irq(%struct.net_device* %0, %struct.cas* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cas*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.cas* %1, %struct.cas** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @INTR_RX_TAG_ERROR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load %struct.cas*, %struct.cas** %6, align 8
  %14 = load i32, i32* @rx_err, align 4
  %15 = load i32, i32* @KERN_DEBUG, align 4
  %16 = load %struct.cas*, %struct.cas** %6, align 8
  %17 = getelementptr inbounds %struct.cas, %struct.cas* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @netif_printk(%struct.cas* %13, i32 %14, i32 %15, i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cas*, %struct.cas** %6, align 8
  %21 = getelementptr inbounds %struct.cas, %struct.cas* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.cas*, %struct.cas** %6, align 8
  %26 = getelementptr inbounds %struct.cas, %struct.cas* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.cas*, %struct.cas** %6, align 8
  %33 = getelementptr inbounds %struct.cas, %struct.cas* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %146

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @INTR_RX_LEN_MISMATCH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load %struct.cas*, %struct.cas** %6, align 8
  %44 = load i32, i32* @rx_err, align 4
  %45 = load i32, i32* @KERN_DEBUG, align 4
  %46 = load %struct.cas*, %struct.cas** %6, align 8
  %47 = getelementptr inbounds %struct.cas, %struct.cas* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @netif_printk(%struct.cas* %43, i32 %44, i32 %45, i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.cas*, %struct.cas** %6, align 8
  %51 = getelementptr inbounds %struct.cas, %struct.cas* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.cas*, %struct.cas** %6, align 8
  %56 = getelementptr inbounds %struct.cas, %struct.cas* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.cas*, %struct.cas** %6, align 8
  %63 = getelementptr inbounds %struct.cas, %struct.cas* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = call i32 @spin_unlock(i32* %65)
  br label %146

67:                                               ; preds = %37
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @INTR_PCS_STATUS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = load %struct.cas*, %struct.cas** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @cas_pcs_interrupt(%struct.net_device* %73, %struct.cas* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %146

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %67
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @INTR_TX_MAC_STATUS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load %struct.cas*, %struct.cas** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @cas_txmac_interrupt(%struct.net_device* %86, %struct.cas* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %146

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %80
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @INTR_RX_MAC_STATUS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = load %struct.cas*, %struct.cas** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @cas_rxmac_interrupt(%struct.net_device* %99, %struct.cas* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %146

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %93
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @INTR_MAC_CTRL_STATUS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = load %struct.cas*, %struct.cas** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @cas_mac_interrupt(%struct.net_device* %112, %struct.cas* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %146

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %106
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @INTR_MIF_STATUS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = load %struct.cas*, %struct.cas** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i64 @cas_mif_interrupt(%struct.net_device* %125, %struct.cas* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %146

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %119
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @INTR_PCI_ERROR_STATUS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = load %struct.cas*, %struct.cas** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @cas_pci_interrupt(%struct.net_device* %138, %struct.cas* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %146

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %132
  store i32 0, i32* %4, align 4
  br label %159

146:                                              ; preds = %143, %130, %117, %104, %91, %78, %42, %12
  %147 = load %struct.cas*, %struct.cas** %6, align 8
  %148 = getelementptr inbounds %struct.cas, %struct.cas* %147, i32 0, i32 1
  %149 = call i32 @atomic_inc(i32* %148)
  %150 = load %struct.cas*, %struct.cas** %6, align 8
  %151 = getelementptr inbounds %struct.cas, %struct.cas* %150, i32 0, i32 2
  %152 = call i32 @atomic_inc(i32* %151)
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %154)
  %156 = load %struct.cas*, %struct.cas** %6, align 8
  %157 = getelementptr inbounds %struct.cas, %struct.cas* %156, i32 0, i32 0
  %158 = call i32 @schedule_work(i32* %157)
  store i32 1, i32* %4, align 4
  br label %159

159:                                              ; preds = %146, %145
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @netif_printk(%struct.cas*, i32, i32, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @cas_pcs_interrupt(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i64 @cas_txmac_interrupt(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i64 @cas_rxmac_interrupt(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i64 @cas_mac_interrupt(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i64 @cas_mif_interrupt(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i64 @cas_pci_interrupt(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
