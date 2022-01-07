; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_dispatch_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_11n_dispatch_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i32 }
%struct.sk_buff = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"info: fw drop data\0A\00", align 1
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_11n_dispatch_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_11n_dispatch_pkt(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @INFO, align 4
  %14 = call i32 @mwifiex_dbg(i32 %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @mwifiex_11n_dispatch_amsdu_pkt(%struct.mwifiex_private* %16, %struct.sk_buff* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %36

22:                                               ; preds = %15
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @mwifiex_handle_uap_rx_forward(%struct.mwifiex_private* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @mwifiex_process_rx_packet(%struct.mwifiex_private* %33, %struct.sk_buff* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %28, %21, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @mwifiex_11n_dispatch_amsdu_pkt(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_handle_uap_rx_forward(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_process_rx_packet(%struct.mwifiex_private*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
