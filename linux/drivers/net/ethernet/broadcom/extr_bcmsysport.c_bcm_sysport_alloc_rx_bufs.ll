; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_alloc_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_alloc_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32, %struct.bcm_sysport_cb* }
%struct.bcm_sysport_cb = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*)* @bcm_sysport_alloc_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_alloc_rx_bufs(%struct.bcm_sysport_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca %struct.bcm_sysport_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %15 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %14, i32 0, i32 1
  %16 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %16, i64 %18
  store %struct.bcm_sysport_cb* %19, %struct.bcm_sysport_cb** %4, align 8
  %20 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %21 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %4, align 8
  %22 = call %struct.sk_buff* @bcm_sysport_rx_refill(%struct.bcm_sysport_priv* %20, %struct.bcm_sysport_cb* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @dev_kfree_skb(%struct.sk_buff* %23)
  %25 = load %struct.bcm_sysport_cb*, %struct.bcm_sysport_cb** %4, align 8
  %26 = getelementptr inbounds %struct.bcm_sysport_cb, %struct.bcm_sysport_cb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.sk_buff* @bcm_sysport_rx_refill(%struct.bcm_sysport_priv*, %struct.bcm_sysport_cb*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
