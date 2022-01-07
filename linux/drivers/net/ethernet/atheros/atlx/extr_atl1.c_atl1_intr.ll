; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ISR_CMB_TX = common dso_local global i32 0, align 4
@ISR_CMB_RX = common dso_local global i32 0, align 4
@ISR_GPHY = common dso_local global i32 0, align 4
@ISR_DIS_INT = common dso_local global i32 0, align 4
@REG_ISR = common dso_local global i64 0, align 8
@ISR_SMB = common dso_local global i32 0, align 4
@ISR_PHY_LINKDOWN = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pcie phy link down %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ISR_DMAR_TO_RST = common dso_local global i32 0, align 4
@ISR_DMAW_TO_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pcie DMA r/w error (status = 0x%x)\0A\00", align 1
@ISR_RXF_OV = common dso_local global i32 0, align 4
@ISR_RFD_UNRUN = common dso_local global i32 0, align 4
@ISR_RRD_OV = common dso_local global i32 0, align 4
@ISR_HOST_RFD_UNRUN = common dso_local global i32 0, align 4
@ISR_HOST_RRD_OV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"rx exception, ISR = 0x%x\0A\00", align 1
@ISR_DIS_SMB = common dso_local global i32 0, align 4
@ISR_DIS_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atl1_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atl1_adapter*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.atl1_adapter* @netdev_priv(i8* %8)
  store %struct.atl1_adapter* %9, %struct.atl1_adapter** %6, align 8
  %10 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %195

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ISR_CMB_TX, align 4
  %23 = load i32, i32* @ISR_CMB_RX, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ISR_GPHY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %37 = call i32 @atlx_clear_phy_int(%struct.atl1_adapter* %36)
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ISR_DIS_INT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @REG_ISR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @iowrite32(i32 %41, i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @ISR_SMB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %55 = call i32 @atl1_inc_smb(%struct.atl1_adapter* %54)
  br label %56

56:                                               ; preds = %53, %38
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ISR_PHY_LINKDOWN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %63 = call i64 @netif_msg_intr(%struct.atl1_adapter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32, i32* @KERN_DEBUG, align 4
  %67 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_printk(i32 %66, i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65, %61
  %74 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @netif_running(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %81 = call i32 @atlx_irq_disable(%struct.atl1_adapter* %80)
  %82 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %83 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %82, i32 0, i32 4
  %84 = call i32 @schedule_work(i32* %83)
  %85 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %85, i32* %3, align 4
  br label %195

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %56
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @ISR_DMAR_TO_RST, align 4
  %90 = load i32, i32* @ISR_DMAW_TO_RST, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %96 = call i64 @netif_msg_intr(%struct.atl1_adapter* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* @KERN_DEBUG, align 4
  %100 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %101 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @dev_printk(i32 %99, i32* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %98, %94
  %107 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %108 = call i32 @atlx_irq_disable(%struct.atl1_adapter* %107)
  %109 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %109, i32 0, i32 4
  %111 = call i32 @schedule_work(i32* %110)
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %112, i32* %3, align 4
  br label %195

113:                                              ; preds = %87
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @ISR_GPHY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %120 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %125 = call i32 @atl1_check_for_link(%struct.atl1_adapter* %124)
  br label %126

126:                                              ; preds = %118, %113
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ISR_CMB_TX, align 4
  %129 = load i32, i32* @ISR_CMB_RX, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %127, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %126
  %134 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %135 = call i64 @atl1_sched_rings_clean(%struct.atl1_adapter* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %133
  %138 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %139 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ISR_CMB_TX, align 4
  %145 = load i32, i32* @ISR_CMB_RX, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = and i32 %143, %147
  %149 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %137, %133, %126
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @ISR_RXF_OV, align 4
  %157 = load i32, i32* @ISR_RFD_UNRUN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @ISR_RRD_OV, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @ISR_HOST_RFD_UNRUN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @ISR_HOST_RRD_OV, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %155, %164
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %154
  %169 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %170 = call i64 @netif_msg_intr(%struct.atl1_adapter* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = load i32, i32* @KERN_DEBUG, align 4
  %174 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %175 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %174, i32 0, i32 1
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @dev_printk(i32 %173, i32* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %172, %168
  %181 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %182 = call i64 @atl1_sched_rings_clean(%struct.atl1_adapter* %181)
  br label %183

183:                                              ; preds = %180, %154
  %184 = load i32, i32* @ISR_DIS_SMB, align 4
  %185 = load i32, i32* @ISR_DIS_DMA, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %188 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @REG_ISR, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @iowrite32(i32 %186, i64 %192)
  %194 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %183, %106, %79, %18
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.atl1_adapter* @netdev_priv(i8*) #1

declare dso_local i32 @atlx_clear_phy_int(%struct.atl1_adapter*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @atl1_inc_smb(%struct.atl1_adapter*) #1

declare dso_local i64 @netif_msg_intr(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @atlx_irq_disable(%struct.atl1_adapter*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atl1_check_for_link(%struct.atl1_adapter*) #1

declare dso_local i64 @atl1_sched_rings_clean(%struct.atl1_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
