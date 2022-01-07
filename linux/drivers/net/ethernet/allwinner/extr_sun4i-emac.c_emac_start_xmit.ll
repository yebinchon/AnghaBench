; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.emac_board_info = type { i32, i32, i64 }

@EMAC_TX_INS_REG = common dso_local global i64 0, align 8
@EMAC_TX_IO_DATA_REG = common dso_local global i64 0, align 8
@EMAC_TX_PL0_REG = common dso_local global i64 0, align 8
@EMAC_TX_CTL0_REG = common dso_local global i64 0, align 8
@EMAC_TX_PL1_REG = common dso_local global i64 0, align 8
@EMAC_TX_CTL1_REG = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @emac_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.emac_board_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %9)
  store %struct.emac_board_info* %10, %struct.emac_board_info** %6, align 8
  %11 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %12 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 3
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %137

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %26 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %25, i32 0, i32 1
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %32 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EMAC_TX_INS_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %38 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EMAC_TX_IO_DATA_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @emac_outblk_32bit(i64 %41, i32 %44, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = shl i32 1, %58
  %60 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %61 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %19
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %71 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EMAC_TX_PL0_REG, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %77 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EMAC_TX_CTL0_REG, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl(i64 %80)
  %82 = or i32 %81, 1
  %83 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %84 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @EMAC_TX_CTL0_REG, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 %82, i64 %87)
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = call i32 @netif_trans_update(%struct.net_device* %89)
  br label %120

91:                                               ; preds = %19
  %92 = load i64, i64* %7, align 8
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %99 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EMAC_TX_PL1_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %105 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EMAC_TX_CTL1_REG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readl(i64 %108)
  %110 = or i32 %109, 1
  %111 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %112 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @EMAC_TX_CTL1_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = call i32 @netif_trans_update(%struct.net_device* %117)
  br label %119

119:                                              ; preds = %94, %91
  br label %120

120:                                              ; preds = %119, %66
  %121 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %122 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 3
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i32 @netif_stop_queue(%struct.net_device* %127)
  br label %129

129:                                              ; preds = %126, %120
  %130 = load %struct.emac_board_info*, %struct.emac_board_info** %6, align 8
  %131 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %130, i32 0, i32 1
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = call i32 @dev_consume_skb_any(%struct.sk_buff* %134)
  %136 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %129, %18
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @emac_outblk_32bit(i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
