; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_maybe_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_maybe_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hnae_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**, i32*, %struct.hnae_ring*)* @hns_nic_maybe_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_maybe_stop_tx(%struct.sk_buff** %0, i32* %1, %struct.hnae_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hnae_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.hnae_ring* %2, %struct.hnae_ring** %7, align 8
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %20 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %28 = call i32 @ring_space(%struct.hnae_ring* %27)
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %59

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %46, align 8
  store i32 1, i32* %10, align 4
  br label %56

47:                                               ; preds = %3
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.hnae_ring*, %struct.hnae_ring** %7, align 8
  %50 = call i32 @ring_space(%struct.hnae_ring* %49)
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %59

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %52, %39, %30
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ring_space(%struct.hnae_ring*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
