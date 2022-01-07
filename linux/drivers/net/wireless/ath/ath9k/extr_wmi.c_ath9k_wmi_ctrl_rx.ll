; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_ctrl_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_wmi.c_ath9k_wmi_ctrl_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.wmi = type { i64, i32, i32, i32, i32 }
%struct.wmi_cmd_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sk_buff*, i32)* @ath9k_wmi_ctrl_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_wmi_ctrl_rx(i8* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca %struct.wmi_cmd_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.wmi*
  store %struct.wmi* %12, %struct.wmi** %7, align 8
  %13 = load %struct.wmi*, %struct.wmi** %7, align 8
  %14 = getelementptr inbounds %struct.wmi, %struct.wmi* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %23, %struct.wmi_cmd_hdr** %8, align 8
  %24 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %8, align 8
  %25 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @be16_to_cpu(i32 %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 4096
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %19
  %33 = load %struct.wmi*, %struct.wmi** %7, align 8
  %34 = getelementptr inbounds %struct.wmi, %struct.wmi* %33, i32 0, i32 1
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.wmi*, %struct.wmi** %7, align 8
  %38 = getelementptr inbounds %struct.wmi, %struct.wmi* %37, i32 0, i32 3
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @__skb_queue_tail(i32* %38, %struct.sk_buff* %39)
  %41 = load %struct.wmi*, %struct.wmi** %7, align 8
  %42 = getelementptr inbounds %struct.wmi, %struct.wmi* %41, i32 0, i32 1
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.wmi*, %struct.wmi** %7, align 8
  %46 = getelementptr inbounds %struct.wmi, %struct.wmi* %45, i32 0, i32 2
  %47 = call i32 @tasklet_schedule(i32* %46)
  br label %77

48:                                               ; preds = %19
  %49 = load %struct.wmi*, %struct.wmi** %7, align 8
  %50 = getelementptr inbounds %struct.wmi, %struct.wmi* %49, i32 0, i32 1
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %8, align 8
  %54 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @be16_to_cpu(i32 %55)
  %57 = load %struct.wmi*, %struct.wmi** %7, align 8
  %58 = getelementptr inbounds %struct.wmi, %struct.wmi* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load %struct.wmi*, %struct.wmi** %7, align 8
  %63 = getelementptr inbounds %struct.wmi, %struct.wmi* %62, i32 0, i32 1
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %74

66:                                               ; preds = %48
  %67 = load %struct.wmi*, %struct.wmi** %7, align 8
  %68 = getelementptr inbounds %struct.wmi, %struct.wmi* %67, i32 0, i32 1
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.wmi*, %struct.wmi** %7, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @ath9k_wmi_rsp_callback(%struct.wmi* %71, %struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %66, %61, %18
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %74, %32
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ath9k_wmi_rsp_callback(%struct.wmi*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
