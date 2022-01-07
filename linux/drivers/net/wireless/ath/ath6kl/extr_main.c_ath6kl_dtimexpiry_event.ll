; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_dtimexpiry_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_dtimexpiry_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, i32, i32, %struct.ath6kl* }
%struct.ath6kl = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@DTIM_EXPIRED = common dso_local global i32 0, align 4
@MCAST_AID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_dtimexpiry_event(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca %struct.ath6kl_vif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %7 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %6, i32 0, i32 3
  %8 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  store %struct.ath6kl* %8, %struct.ath6kl** %5, align 8
  %9 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %10 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %16 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 2
  %20 = call i32 @skb_queue_empty(i32* %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %68

27:                                               ; preds = %14
  %28 = load i32, i32* @DTIM_EXPIRED, align 4
  %29 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %30 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %33 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %32, i32 0, i32 1
  %34 = call i32 @spin_lock_bh(i32* %33)
  br label %35

35:                                               ; preds = %40, %27
  %36 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %37 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %36, i32 0, i32 2
  %38 = call %struct.sk_buff* @skb_dequeue(i32* %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %4, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %42 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %46 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ath6kl_data_tx(%struct.sk_buff* %44, i32 %47)
  %49 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %50 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %49, i32 0, i32 1
  %51 = call i32 @spin_lock_bh(i32* %50)
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %54 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load i32, i32* @DTIM_EXPIRED, align 4
  %57 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %58 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %57, i32 0, i32 1
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %61 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %2, align 8
  %64 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MCAST_AID, align 4
  %67 = call i32 @ath6kl_wmi_set_pvb_cmd(i32 %62, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %52, %26, %13
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ath6kl_data_tx(%struct.sk_buff*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_set_pvb_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
