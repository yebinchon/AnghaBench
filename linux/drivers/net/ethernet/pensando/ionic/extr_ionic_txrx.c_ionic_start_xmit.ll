; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ionic_lif = type { i32 }
%struct.ionic_queue = type { i32, i32 }

@IONIC_LIF_UP = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ionic_lif*, align 8
  %8 = alloca %struct.ionic_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ionic_lif* @netdev_priv(%struct.net_device* %13)
  store %struct.ionic_lif* %14, %struct.ionic_lif** %7, align 8
  %15 = load i32, i32* @IONIC_LIF_UP, align 4
  %16 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %17 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @dev_kfree_skb(%struct.sk_buff* %26)
  %28 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %2
  %30 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @lif_to_txqcq(%struct.ionic_lif* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call %struct.ionic_queue* @lif_to_txq(%struct.ionic_lif* %40, i64 %41)
  store %struct.ionic_queue* %42, %struct.ionic_queue** %8, align 8
  %43 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @ionic_tx_descs_needed(%struct.ionic_queue* %43, %struct.sk_buff* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %77

49:                                               ; preds = %39
  %50 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ionic_maybe_stop_tx(%struct.ionic_queue* %50, i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %56, i32* %3, align 4
  br label %89

57:                                               ; preds = %49
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i64 @skb_is_gso(%struct.sk_buff* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @ionic_tx_tso(%struct.ionic_queue* %62, %struct.sk_buff* %63)
  store i32 %64, i32* %10, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @ionic_tx(%struct.ionic_queue* %66, %struct.sk_buff* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %77

73:                                               ; preds = %69
  %74 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %75 = call i32 @ionic_maybe_stop_tx(%struct.ionic_queue* %74, i32 4)
  %76 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %76, i32* %3, align 4
  br label %89

77:                                               ; preds = %72, %48
  %78 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %79 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ionic_queue*, %struct.ionic_queue** %8, align 8
  %83 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @dev_kfree_skb(%struct.sk_buff* %86)
  %88 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %77, %73, %55, %25
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.ionic_lif* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lif_to_txqcq(%struct.ionic_lif*, i64) #1

declare dso_local %struct.ionic_queue* @lif_to_txq(%struct.ionic_lif*, i64) #1

declare dso_local i32 @ionic_tx_descs_needed(%struct.ionic_queue*, %struct.sk_buff*) #1

declare dso_local i32 @ionic_maybe_stop_tx(%struct.ionic_queue*, i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @ionic_tx_tso(%struct.ionic_queue*, %struct.sk_buff*) #1

declare dso_local i32 @ionic_tx(%struct.ionic_queue*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
