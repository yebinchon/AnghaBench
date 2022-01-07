; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@TDES0_OWN_ = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pci_map_single failed, dropping packet\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TDES1_LS_ = common dso_local global i32 0, align 4
@TDES1_IC_ = common dso_local global i32 0, align 4
@TDES1_TER_ = common dso_local global i32 0, align 4
@TX_POLL_DEMAND = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @smsc9420_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.smsc9420_pdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %11)
  store %struct.smsc9420_pdata* %12, %struct.smsc9420_pdata** %6, align 8
  %13 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %14 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %17 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 2
  %20 = load i32, i32* @TX_RING_SIZE, align 4
  %21 = srem i32 %19, %20
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %23 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @smsc9420_complete_tx(%struct.net_device* %27)
  %29 = call i32 (...) @rmb()
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %31 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TDES0_OWN_, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %42 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %51 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %60 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %69 = call i8* @pci_map_single(i32 %61, i32 %64, i64 %67, i32 %68)
  store i8* %69, i8** %7, align 8
  %70 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %71 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @pci_dma_mapping_error(i32 %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %2
  %77 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %78 = load i32, i32* @tx_err, align 4
  %79 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %80 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netif_warn(%struct.smsc9420_pdata* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %83, i32* %3, align 4
  br label %176

84:                                               ; preds = %2
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = ptrtoint %struct.sk_buff* %85 to i32
  %87 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %88 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %87, i32 0, i32 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %97 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %96, i32 0, i32 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %95, i32* %102, align 4
  %103 = load i32, i32* @TDES1_LS_, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 2047
  %109 = or i32 %103, %108
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %84
  %114 = load i32, i32* @TDES1_IC_, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %118 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @netif_stop_queue(i32 %119)
  br label %121

121:                                              ; preds = %113, %84
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @TX_RING_SIZE, align 4
  %124 = sub nsw i32 %123, 1
  %125 = icmp eq i32 %122, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load i32, i32* @TDES1_TER_, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %129, %121
  %134 = load i8*, i8** %7, align 8
  %135 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %136 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  store i8* %134, i8** %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %144 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i32 %142, i32* %149, align 4
  %150 = call i32 (...) @wmb()
  %151 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %152 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  %155 = load i32, i32* @TX_RING_SIZE, align 4
  %156 = srem i32 %154, %155
  %157 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %158 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* @TDES0_OWN_, align 4
  %160 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %161 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  store i32 %159, i32* %166, align 8
  %167 = call i32 (...) @wmb()
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = call i32 @skb_tx_timestamp(%struct.sk_buff* %168)
  %170 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %171 = load i32, i32* @TX_POLL_DEMAND, align 4
  %172 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %170, i32 %171, i32 1)
  %173 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %174 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %173)
  %175 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %133, %76
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc9420_complete_tx(%struct.net_device*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @netif_warn(%struct.smsc9420_pdata*, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
