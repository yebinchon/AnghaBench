; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_pull_peer_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_pull_peer_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.sk_buff = type { i32 }
%struct.wmi_peer_kick_ev_arg = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)* @ath10k_wmi_pull_peer_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_pull_peer_kick(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_peer_kick_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_peer_kick_ev_arg*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_peer_kick_ev_arg* %2, %struct.wmi_peer_kick_ev_arg** %7, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)**
  %14 = load i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)*, i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)** %13, align 8
  %15 = icmp ne i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)**
  %26 = load i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)*, i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_peer_kick_ev_arg*)** %25, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load %struct.wmi_peer_kick_ev_arg*, %struct.wmi_peer_kick_ev_arg** %7, align 8
  %30 = call i32 %26(%struct.ath10k* %27, %struct.sk_buff* %28, %struct.wmi_peer_kick_ev_arg* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
