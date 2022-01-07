; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_build_htc_txctrl_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_build_htc_txctrl_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_packet = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HTC_CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.htc_packet* ()* @build_htc_txctrl_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.htc_packet* @build_htc_txctrl_packet() #0 {
  %1 = alloca %struct.htc_packet*, align 8
  %2 = alloca %struct.htc_packet*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.htc_packet* null, %struct.htc_packet** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.htc_packet* @kzalloc(i32 8, i32 %4)
  store %struct.htc_packet* %5, %struct.htc_packet** %2, align 8
  %6 = load %struct.htc_packet*, %struct.htc_packet** %2, align 8
  %7 = icmp eq %struct.htc_packet* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.htc_packet* null, %struct.htc_packet** %1, align 8
  br label %23

9:                                                ; preds = %0
  %10 = load i32, i32* @HTC_CONTROL_BUFFER_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sk_buff* @__dev_alloc_skb(i32 %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = icmp eq %struct.sk_buff* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.htc_packet*, %struct.htc_packet** %2, align 8
  %17 = call i32 @kfree(%struct.htc_packet* %16)
  store %struct.htc_packet* null, %struct.htc_packet** %1, align 8
  br label %23

18:                                               ; preds = %9
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.htc_packet*, %struct.htc_packet** %2, align 8
  %21 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %20, i32 0, i32 0
  store %struct.sk_buff* %19, %struct.sk_buff** %21, align 8
  %22 = load %struct.htc_packet*, %struct.htc_packet** %2, align 8
  store %struct.htc_packet* %22, %struct.htc_packet** %1, align 8
  br label %23

23:                                               ; preds = %18, %15, %8
  %24 = load %struct.htc_packet*, %struct.htc_packet** %1, align 8
  ret %struct.htc_packet* %24
}

declare dso_local %struct.htc_packet* @kzalloc(i32, i32) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @kfree(%struct.htc_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
