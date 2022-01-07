; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_clone_skb_for_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_clone_skb_for_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.mwifiex_txinfo = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_ACTION_TX_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @mwifiex_clone_skb_for_tx_status(%struct.mwifiex_private* %0, %struct.sk_buff* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mwifiex_txinfo*, align 8
  %11 = alloca %struct.mwifiex_txinfo*, align 8
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %79

19:                                               ; preds = %4
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %21 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @idr_alloc(i32* %24, %struct.sk_buff* %25, i32 1, i32 16, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %19
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %34)
  store %struct.mwifiex_txinfo* %35, %struct.mwifiex_txinfo** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %10, align 8
  %38 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %10, align 8
  %41 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %44)
  store %struct.mwifiex_txinfo* %45, %struct.mwifiex_txinfo** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %48 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %51 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MWIFIEX_BUF_FLAG_ACTION_TX_STATUS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %33
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %11, align 8
  %64 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %57, %33
  br label %78

66:                                               ; preds = %19
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i64 @skb_shared(%struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  br label %77

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %76, %struct.sk_buff** %6, align 8
  br label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77, %65
  br label %81

79:                                               ; preds = %4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %6, align 8
  br label %81

81:                                               ; preds = %79, %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %82
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
