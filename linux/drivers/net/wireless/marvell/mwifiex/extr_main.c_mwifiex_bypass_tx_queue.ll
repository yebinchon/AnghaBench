; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_bypass_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_bypass_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32 }

@ETH_P_PAE = common dso_local global i64 0, align 8
@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@ETH_P_TDLS = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bypass txqueue; eth type %#x, mgmt %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_bypass_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_bypass_tx_queue(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ethhdr*
  store %struct.ethhdr* %10, %struct.ethhdr** %6, align 8
  %11 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %12 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ntohs(i32 %13)
  %15 = load i64, i64* @ETH_P_PAE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i64 @mwifiex_is_skb_mgmt_frame(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %23 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %22)
  %24 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ISSUPP_TDLS_ENABLED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ntohs(i32 %37)
  %39 = load i64, i64* @ETH_P_TDLS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %34, %17, %2
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* @DATA, align 4
  %46 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %47 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ntohs(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i64 @mwifiex_is_skb_mgmt_frame(%struct.sk_buff* %50)
  %52 = call i32 @mwifiex_dbg(%struct.TYPE_2__* %44, i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %51)
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %34, %26, %21
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @mwifiex_is_skb_mgmt_frame(%struct.sk_buff*) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i64 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_2__*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
