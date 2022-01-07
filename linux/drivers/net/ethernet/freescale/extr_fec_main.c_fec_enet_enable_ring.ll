; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_enable_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_enable_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i64, %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_rx_q** }
%struct.fec_enet_priv_tx_q = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fec_enet_priv_rx_q = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PKT_MAXBUF_SIZE = common dso_local global i32 0, align 4
@RCMR_MATCHEN = common dso_local global i32 0, align 4
@DMA_CLASS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_enable_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_enable_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %5 = alloca %struct.fec_enet_priv_rx_q*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %57, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %12 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %9
  %16 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %17 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %16, i32 0, i32 4
  %18 = load %struct.fec_enet_priv_rx_q**, %struct.fec_enet_priv_rx_q*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %18, i64 %20
  %22 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %21, align 8
  store %struct.fec_enet_priv_rx_q* %22, %struct.fec_enet_priv_rx_q** %5, align 8
  %23 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %5, align 8
  %24 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @FEC_R_DES_START(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @writel(i32 %26, i64 %32)
  %34 = load i32, i32* @PKT_MAXBUF_SIZE, align 4
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @FEC_R_BUFF_SIZE(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @writel(i32 %34, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %15
  %45 = load i32, i32* @RCMR_MATCHEN, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @RCMR_CMP(i32 %46)
  %48 = or i32 %45, %47
  %49 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %50 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @FEC_RCMR(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @writel(i32 %48, i64 %54)
  br label %56

56:                                               ; preds = %44, %15
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %9

60:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %101, %60
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %64 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %104

67:                                               ; preds = %61
  %68 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %69 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %68, i32 0, i32 3
  %70 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %70, i64 %72
  %74 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %73, align 8
  store %struct.fec_enet_priv_tx_q* %74, %struct.fec_enet_priv_tx_q** %4, align 8
  %75 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %4, align 8
  %76 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %80 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i64 @FEC_X_DES_START(i32 %82)
  %84 = add nsw i64 %81, %83
  %85 = call i32 @writel(i32 %78, i64 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %67
  %89 = load i32, i32* @DMA_CLASS_EN, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @IDLE_SLOPE(i32 %90)
  %92 = or i32 %89, %91
  %93 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %94 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @FEC_DMA_CFG(i32 %96)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @writel(i32 %92, i64 %98)
  br label %100

100:                                              ; preds = %88, %67
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %61

104:                                              ; preds = %61
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @FEC_R_DES_START(i32) #1

declare dso_local i64 @FEC_R_BUFF_SIZE(i32) #1

declare dso_local i32 @RCMR_CMP(i32) #1

declare dso_local i64 @FEC_RCMR(i32) #1

declare dso_local i64 @FEC_X_DES_START(i32) #1

declare dso_local i32 @IDLE_SLOPE(i32) #1

declare dso_local i64 @FEC_DMA_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
