; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_start_xmit_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_start_xmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.temac_local = type { i64, %struct.cdmac_bd* }
%struct.cdmac_bd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i32 }

@STS_CTRL_APP0_CMPLT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @temac_start_xmit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @temac_start_xmit_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca %struct.cdmac_bd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.temac_local* @netdev_priv(%struct.net_device* %7)
  store %struct.temac_local* %8, %struct.temac_local** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %10 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %9, i32 0, i32 1
  %11 = load %struct.cdmac_bd*, %struct.cdmac_bd** %10, align 8
  %12 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %13 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %11, i64 %14
  store %struct.cdmac_bd* %15, %struct.cdmac_bd** %4, align 8
  %16 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %17 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @be32_to_cpu(i64 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %85, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @STS_CTRL_APP0_CMPLT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %97

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %31 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @be32_to_cpu(i64 %32)
  %34 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %35 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @be32_to_cpu(i64 %36)
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i32 @dma_unmap_single(i32 %29, i32 %33, i32 %37, i32 %38)
  %40 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %41 = call i64 @ptr_from_txbd(%struct.cdmac_bd* %40)
  %42 = inttoptr i64 %41 to %struct.sk_buff*
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %25
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %45, %25
  %49 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %50 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %52 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %54 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %56 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %58 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %65 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @be32_to_cpu(i64 %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %74 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %78 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TX_BD_NUM, align 8
  %81 = icmp uge i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %48
  %83 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %84 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %48
  %86 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %87 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %86, i32 0, i32 1
  %88 = load %struct.cdmac_bd*, %struct.cdmac_bd** %87, align 8
  %89 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %90 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %88, i64 %91
  store %struct.cdmac_bd* %92, %struct.cdmac_bd** %4, align 8
  %93 = load %struct.cdmac_bd*, %struct.cdmac_bd** %4, align 8
  %94 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @be32_to_cpu(i64 %95)
  store i32 %96, i32* %5, align 4
  br label %20

97:                                               ; preds = %20
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = call i32 @netif_wake_queue(%struct.net_device* %98)
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @ptr_from_txbd(%struct.cdmac_bd*) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
