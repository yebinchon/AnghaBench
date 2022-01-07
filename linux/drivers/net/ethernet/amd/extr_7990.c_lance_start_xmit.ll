; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_7990.c_lance_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32 }
%struct.lance_private = type { i32, i32, i32, i32, %struct.lance_init_block* }
%struct.lance_init_block = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32, i32, i64 }

@lance_start_xmit.outs = internal global i32 0, align 4
@TX_BUFFS_AVAIL = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@LE_T1_POK = common dso_local global i32 0, align 4
@LE_T1_OWN = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_TDMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lance_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lance_private*, align 8
  %7 = alloca %struct.lance_init_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.lance_private* @netdev_priv(%struct.net_device* %12)
  store %struct.lance_private* %13, %struct.lance_private** %6, align 8
  %14 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %15 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %14, i32 0, i32 4
  %16 = load %struct.lance_init_block*, %struct.lance_init_block** %15, align 8
  store %struct.lance_init_block* %16, %struct.lance_init_block** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @netif_stop_queue(%struct.net_device* %17)
  %19 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @dev_consume_skb_any(%struct.sk_buff* %22)
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %139

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ETH_ZLEN, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @ETH_ZLEN, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %10, align 4
  %38 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %39 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %42 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %40, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 0, %45
  %47 = or i32 %46, 61440
  %48 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %49 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %48, i32 0, i32 0
  %50 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 8
  %55 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %56 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %55, i32 0, i32 0
  %57 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ETH_ZLEN, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %36
  %68 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %69 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %68, i32 0, i32 1
  %70 = load volatile i32**, i32*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = bitcast i32* %75 to i8*
  %77 = load i32, i32* @ETH_ZLEN, align 4
  %78 = call i32 @memset(i8* %76, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %67, %36
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %82 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %81, i32 0, i32 1
  %83 = load volatile i32**, i32*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = bitcast i32* %88 to i8*
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %80, i8* %89, i32 %90)
  %92 = load i32, i32* @LE_T1_POK, align 4
  %93 = load i32, i32* @LE_T1_OWN, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.lance_init_block*, %struct.lance_init_block** %7, align 8
  %96 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %95, i32 0, i32 0
  %97 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 4
  %102 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %103 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  %106 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %107 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %105, %108
  %110 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %111 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @lance_start_xmit.outs, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @lance_start_xmit.outs, align 4
  %114 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %115 = load i32, i32* @LE_C0_INEA, align 4
  %116 = load i32, i32* @LE_C0_TDMD, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @WRITERDP(%struct.lance_private* %114, i32 %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i32 @dev_consume_skb_any(%struct.sk_buff* %119)
  %121 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %122 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %121, i32 0, i32 3
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  %125 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %79
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = call i32 @netif_start_queue(%struct.net_device* %128)
  br label %133

130:                                              ; preds = %79
  %131 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %132 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %131, i32 0, i32 2
  store i32 1, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %135 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %134, i32 0, i32 3
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %133, %21
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
