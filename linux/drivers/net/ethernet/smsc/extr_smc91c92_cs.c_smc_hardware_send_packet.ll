; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_hardware_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_hardware_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.smc_private = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"In XMIT with no packet to send\0A\00", align 1
@PNR_ARR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"hardware Tx buffer allocation failed, status %#2.2x\0A\00", align 1
@PTR_AUTOINC = common dso_local global i32 0, align 4
@POINTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Trying to xmit packet of length %d\0A\00", align 1
@DATA_1 = common dso_local global i64 0, align 8
@IM_TX_INT = common dso_local global i32 0, align 4
@IM_TX_EMPTY_INT = common dso_local global i32 0, align 4
@INTERRUPT = common dso_local global i64 0, align 8
@MC_ENQUEUE = common dso_local global i32 0, align 4
@MMU_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_hardware_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_hardware_send_packet(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smc_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.smc_private* @netdev_priv(%struct.net_device* %9)
  store %struct.smc_private* %10, %struct.smc_private** %3, align 8
  %11 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %12 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %11, i32 0, i32 0
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %141

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @PNR_ARR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inw(i64 %26)
  %28 = ashr i32 %27, 8
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @netdev_warn(%struct.net_device* %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %36)
  %38 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %39 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %38, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @netif_start_queue(%struct.net_device* %40)
  br label %141

42:                                               ; preds = %22
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %45
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* @PNR_ARR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outw(i32 %51, i64 %55)
  %57 = load i32, i32* @PTR_AUTOINC, align 4
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @POINTER, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %57, i64 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %7, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %8, align 4
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @netdev_dbg(%struct.net_device* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* @DATA_1, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outw(i32 0, i64 %75)
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 6
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @DATA_1, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outw(i32 %78, i64 %82)
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* @DATA_1, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 1
  %91 = call i32 @outsw(i64 %87, i32* %88, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %42
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 8192, %101
  br label %104

103:                                              ; preds = %42
  br label %104

104:                                              ; preds = %103, %95
  %105 = phi i32 [ %102, %95 ], [ 0, %103 ]
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* @DATA_1, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outw(i32 %105, i64 %109)
  %111 = load i32, i32* @IM_TX_INT, align 4
  %112 = load i32, i32* @IM_TX_EMPTY_INT, align 4
  %113 = or i32 %111, %112
  %114 = shl i32 %113, 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* @INTERRUPT, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @inw(i64 %118)
  %120 = and i32 %119, 65280
  %121 = or i32 %114, %120
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* @INTERRUPT, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outw(i32 %121, i64 %125)
  %127 = load i32, i32* @MC_ENQUEUE, align 4
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* @MMU_CMD, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @outw(i32 %127, i64 %131)
  %133 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %134 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %133, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %135)
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = call i32 @netif_trans_update(%struct.net_device* %137)
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  %140 = call i32 @netif_start_queue(%struct.net_device* %139)
  br label %141

141:                                              ; preds = %104, %32, %19
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @outsw(i64, i32*, i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
