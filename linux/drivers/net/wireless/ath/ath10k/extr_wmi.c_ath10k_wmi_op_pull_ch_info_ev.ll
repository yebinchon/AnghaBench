; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_ch_info_ev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_pull_ch_info_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_ch_info_ev_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.wmi_chan_info_event = type { i32, i32, i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*, %struct.wmi_ch_info_ev_arg*)* @ath10k_wmi_op_pull_ch_info_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_op_pull_ch_info_ev(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.wmi_ch_info_ev_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_ch_info_ev_arg*, align 8
  %8 = alloca %struct.wmi_chan_info_event*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.wmi_ch_info_ev_arg* %2, %struct.wmi_ch_info_ev_arg** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.wmi_chan_info_event*
  store %struct.wmi_chan_info_event* %13, %struct.wmi_chan_info_event** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 24
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EPROTO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @skb_pull(%struct.sk_buff* %23, i32 24)
  %25 = load %struct.wmi_chan_info_event*, %struct.wmi_chan_info_event** %8, align 8
  %26 = getelementptr inbounds %struct.wmi_chan_info_event, %struct.wmi_chan_info_event* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wmi_ch_info_ev_arg*, %struct.wmi_ch_info_ev_arg** %7, align 8
  %29 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wmi_chan_info_event*, %struct.wmi_chan_info_event** %8, align 8
  %31 = getelementptr inbounds %struct.wmi_chan_info_event, %struct.wmi_chan_info_event* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wmi_ch_info_ev_arg*, %struct.wmi_ch_info_ev_arg** %7, align 8
  %34 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.wmi_chan_info_event*, %struct.wmi_chan_info_event** %8, align 8
  %36 = getelementptr inbounds %struct.wmi_chan_info_event, %struct.wmi_chan_info_event* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wmi_ch_info_ev_arg*, %struct.wmi_ch_info_ev_arg** %7, align 8
  %39 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wmi_chan_info_event*, %struct.wmi_chan_info_event** %8, align 8
  %41 = getelementptr inbounds %struct.wmi_chan_info_event, %struct.wmi_chan_info_event* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wmi_ch_info_ev_arg*, %struct.wmi_ch_info_ev_arg** %7, align 8
  %44 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wmi_chan_info_event*, %struct.wmi_chan_info_event** %8, align 8
  %46 = getelementptr inbounds %struct.wmi_chan_info_event, %struct.wmi_chan_info_event* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wmi_ch_info_ev_arg*, %struct.wmi_ch_info_ev_arg** %7, align 8
  %49 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wmi_chan_info_event*, %struct.wmi_chan_info_event** %8, align 8
  %51 = getelementptr inbounds %struct.wmi_chan_info_event, %struct.wmi_chan_info_event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wmi_ch_info_ev_arg*, %struct.wmi_ch_info_ev_arg** %7, align 8
  %54 = getelementptr inbounds %struct.wmi_ch_info_ev_arg, %struct.wmi_ch_info_ev_arg* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %22, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
