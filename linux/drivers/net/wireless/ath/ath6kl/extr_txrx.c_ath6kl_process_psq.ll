; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_process_psq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_ath6kl_process_psq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_sta = type { i32, i32, i32, i32 }
%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32 }
%struct.sk_buff = type { i32 }

@STA_PS_POLLED = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_sta*, %struct.ath6kl_vif*, %struct.sk_buff*, i32*)* @ath6kl_process_psq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_process_psq(%struct.ath6kl_sta* %0, %struct.ath6kl_vif* %1, %struct.sk_buff* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl_sta*, align 8
  %7 = alloca %struct.ath6kl_vif*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_sta* %0, %struct.ath6kl_sta** %6, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 1
  %14 = load %struct.ath6kl*, %struct.ath6kl** %13, align 8
  store %struct.ath6kl* %14, %struct.ath6kl** %11, align 8
  %15 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %16 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STA_PS_POLLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %23 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %26 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %25, i32 0, i32 3
  %27 = call i32 @skb_queue_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @WMI_DATA_HDR_FLAGS_MORE, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %36 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock_bh(i32* %36)
  store i32 0, i32* %5, align 4
  br label %66

38:                                               ; preds = %4
  %39 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %40 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_bh(i32* %40)
  %42 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %43 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %42, i32 0, i32 3
  %44 = call i32 @skb_queue_empty(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %46 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %45, i32 0, i32 3
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @skb_queue_tail(i32* %46, %struct.sk_buff* %47)
  %49 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %50 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %38
  %55 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %59 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %6, align 8
  %62 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ath6kl_wmi_set_pvb_cmd(i32 %57, i32 %60, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %54, %38
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
