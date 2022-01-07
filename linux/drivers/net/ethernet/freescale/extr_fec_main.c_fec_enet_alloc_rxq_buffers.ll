; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_alloc_rxq_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_alloc_rxq_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i64, %struct.fec_enet_priv_rx_q** }
%struct.fec_enet_priv_rx_q = type { %struct.TYPE_3__, %struct.sk_buff** }
%struct.TYPE_3__ = type { i32, %struct.bufdesc* }
%struct.bufdesc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.bufdesc_ex = type { i32 }

@FEC_ENET_RX_FRSIZE = common dso_local global i32 0, align 4
@BD_ENET_RX_EMPTY = common dso_local global i32 0, align 4
@BD_ENET_RX_INT = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @fec_enet_alloc_rxq_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_alloc_rxq_buffers(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bufdesc*, align 8
  %10 = alloca %struct.fec_enet_priv_rx_q*, align 8
  %11 = alloca %struct.bufdesc_ex*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %12)
  store %struct.fec_enet_private* %13, %struct.fec_enet_private** %6, align 8
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 1
  %16 = load %struct.fec_enet_priv_rx_q**, %struct.fec_enet_priv_rx_q*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %16, i64 %18
  %20 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %19, align 8
  store %struct.fec_enet_priv_rx_q* %20, %struct.fec_enet_priv_rx_q** %10, align 8
  %21 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %10, align 8
  %22 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.bufdesc*, %struct.bufdesc** %23, align 8
  store %struct.bufdesc* %24, %struct.bufdesc** %9, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %76, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %10, align 8
  %28 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %26, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = load i32, i32* @FEC_ENET_RX_FRSIZE, align 4
  %35 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %90

39:                                               ; preds = %32
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i64 @fec_enet_new_rxbdp(%struct.net_device* %40, %struct.bufdesc* %41, %struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  br label %90

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %10, align 8
  %51 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %50, i32 0, i32 1
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  store %struct.sk_buff* %49, %struct.sk_buff** %55, align 8
  %56 = load i32, i32* @BD_ENET_RX_EMPTY, align 4
  %57 = call i32 @cpu_to_fec16(i32 %56)
  %58 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %59 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %61 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %48
  %65 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %66 = bitcast %struct.bufdesc* %65 to %struct.bufdesc_ex*
  store %struct.bufdesc_ex* %66, %struct.bufdesc_ex** %11, align 8
  %67 = load i32, i32* @BD_ENET_RX_INT, align 4
  %68 = call i32 @cpu_to_fec32(i32 %67)
  %69 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %11, align 8
  %70 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %48
  %72 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %73 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %10, align 8
  %74 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %73, i32 0, i32 0
  %75 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %72, %struct.TYPE_3__* %74)
  store %struct.bufdesc* %75, %struct.bufdesc** %9, align 8
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %25

79:                                               ; preds = %25
  %80 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %81 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %10, align 8
  %82 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %81, i32 0, i32 0
  %83 = call %struct.bufdesc* @fec_enet_get_prevdesc(%struct.bufdesc* %80, %struct.TYPE_3__* %82)
  store %struct.bufdesc* %83, %struct.bufdesc** %9, align 8
  %84 = load i32, i32* @BD_SC_WRAP, align 4
  %85 = call i32 @cpu_to_fec16(i32 %84)
  %86 = load %struct.bufdesc*, %struct.bufdesc** %9, align 8
  %87 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %95

90:                                               ; preds = %45, %38
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @fec_enet_free_buffers(%struct.net_device* %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %79
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i64 @fec_enet_new_rxbdp(%struct.net_device*, %struct.bufdesc*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_fec16(i32) #1

declare dso_local i32 @cpu_to_fec32(i32) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_3__*) #1

declare dso_local %struct.bufdesc* @fec_enet_get_prevdesc(%struct.bufdesc*, %struct.TYPE_3__*) #1

declare dso_local i32 @fec_enet_free_buffers(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
