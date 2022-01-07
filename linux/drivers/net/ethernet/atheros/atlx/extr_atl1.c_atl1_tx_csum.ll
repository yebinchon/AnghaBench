; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.tx_packet_desc = type { i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"payload offset not an even number\0A\00", align 1
@TPD_PLOADOFFSET_MASK = common dso_local global i32 0, align 4
@TPD_PLOADOFFSET_SHIFT = common dso_local global i32 0, align 4
@TPD_CCSUMOFFSET_MASK = common dso_local global i32 0, align 4
@TPD_CCSUMOFFSET_SHIFT = common dso_local global i32 0, align 4
@TPD_CUST_CSUM_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_adapter*, %struct.sk_buff*, %struct.tx_packet_desc*)* @atl1_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_tx_csum(%struct.atl1_adapter* %0, %struct.sk_buff* %1, %struct.tx_packet_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tx_packet_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tx_packet_desc* %2, %struct.tx_packet_desc** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 1
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %18
  %32 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %33 = call i64 @netif_msg_tx_err(%struct.atl1_adapter* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @KERN_DEBUG, align 4
  %37 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_printk(i32 %36, i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %31
  store i32 -1, i32* %4, align 4
  br label %69

43:                                               ; preds = %18
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TPD_PLOADOFFSET_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @TPD_PLOADOFFSET_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %7, align 8
  %50 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @TPD_CCSUMOFFSET_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @TPD_CCSUMOFFSET_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %7, align 8
  %59 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @TPD_CUST_CSUM_EN_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %7, align 8
  %65 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  store i32 1, i32* %4, align 4
  br label %69

68:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %43, %42
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
