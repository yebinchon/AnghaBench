; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_hdlc_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_hdlc_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_hdlc_private = type { i64, %struct.qe_bd*, %struct.qe_bd*, %struct.sk_buff**, i64, i64, %struct.net_device* }
%struct.qe_bd = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@T_R_S = common dso_local global i32 0, align 4
@T_UN_S = common dso_local global i32 0, align 4
@T_CT_S = common dso_local global i32 0, align 4
@TX_BD_RING_LEN = common dso_local global i32 0, align 4
@T_W_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_hdlc_private*)* @hdlc_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlc_tx_done(%struct.ucc_hdlc_private* %0) #0 {
  %2 = alloca %struct.ucc_hdlc_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qe_bd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ucc_hdlc_private* %0, %struct.ucc_hdlc_private** %2, align 8
  %10 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %11 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %10, i32 0, i32 6
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %14 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %13, i32 0, i32 1
  %15 = load %struct.qe_bd*, %struct.qe_bd** %14, align 8
  store %struct.qe_bd* %15, %struct.qe_bd** %6, align 8
  %16 = load %struct.qe_bd*, %struct.qe_bd** %6, align 8
  %17 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %16, i32 0, i32 0
  %18 = call i32 @ioread16be(i32* %17)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %126, %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @T_R_S, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %130

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @T_UN_S, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @T_CT_S, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %48 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %47, i32 0, i32 3
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %51 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %130

58:                                               ; preds = %46
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %74 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.qe_bd*, %struct.qe_bd** %6, align 8
  %77 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @be32_to_cpu(i32 %78)
  %80 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %81 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = add nsw i64 %75, %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memset(i64 %84, i32 0, i64 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %89)
  %91 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %92 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %91, i32 0, i32 3
  %93 = load %struct.sk_buff**, %struct.sk_buff*** %92, align 8
  %94 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %95 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %93, i64 %96
  store %struct.sk_buff* null, %struct.sk_buff** %97, align 8
  %98 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %99 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  %102 = load i32, i32* @TX_BD_RING_LEN, align 4
  %103 = call i32 @TX_RING_MOD_MASK(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = and i64 %101, %104
  %106 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %107 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = call i64 @netif_queue_stopped(%struct.net_device* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %58
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = call i32 @netif_wake_queue(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %58
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @T_W_S, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load %struct.qe_bd*, %struct.qe_bd** %6, align 8
  %121 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %120, i64 1
  store %struct.qe_bd* %121, %struct.qe_bd** %6, align 8
  br label %126

122:                                              ; preds = %114
  %123 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %124 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %123, i32 0, i32 2
  %125 = load %struct.qe_bd*, %struct.qe_bd** %124, align 8
  store %struct.qe_bd* %125, %struct.qe_bd** %6, align 8
  br label %126

126:                                              ; preds = %122, %119
  %127 = load %struct.qe_bd*, %struct.qe_bd** %6, align 8
  %128 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %127, i32 0, i32 0
  %129 = call i32 @ioread16be(i32* %128)
  store i32 %129, i32* %7, align 4
  br label %19

130:                                              ; preds = %57, %19
  %131 = load %struct.qe_bd*, %struct.qe_bd** %6, align 8
  %132 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %133 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %132, i32 0, i32 1
  store %struct.qe_bd* %131, %struct.qe_bd** %133, align 8
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %2, align 8
  %138 = call i32 @hdlc_tx_restart(%struct.ucc_hdlc_private* %137)
  br label %139

139:                                              ; preds = %136, %130
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @netdev_completed_queue(%struct.net_device* %140, i32 %141, i32 %142)
  ret i32 0
}

declare dso_local i32 @ioread16be(i32*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @TX_RING_MOD_MASK(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @hdlc_tx_restart(%struct.ucc_hdlc_private*) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
