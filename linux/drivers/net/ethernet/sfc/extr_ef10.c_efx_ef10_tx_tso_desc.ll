; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_tso_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_tx_tso_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.efx_tx_buffer = type { i32, i64, i64, i8* }
%struct.tcphdr = type { i32 }
%struct.iphdr = type { i32, i32, i64, i64 }
%struct.ipv6hdr = type { i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"MSS of %u is too small for TSO v2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFX_TX_BUF_OPTION = common dso_local global i8* null, align 8
@ESF_DZ_TX_DESC_IS_OPT = common dso_local global i32 0, align 4
@ESF_DZ_TX_OPTION_TYPE = common dso_local global i32 0, align 4
@ESE_DZ_TX_OPTION_DESC_TSO = common dso_local global i32 0, align 4
@ESF_DZ_TX_TSO_OPTION_TYPE = common dso_local global i32 0, align 4
@ESE_DZ_TX_TSO_OPTION_DESC_FATSO2A = common dso_local global i32 0, align 4
@ESF_DZ_TX_TSO_IP_ID = common dso_local global i32 0, align 4
@ESF_DZ_TX_TSO_TCP_SEQNO = common dso_local global i32 0, align 4
@ESE_DZ_TX_TSO_OPTION_DESC_FATSO2B = common dso_local global i32 0, align 4
@ESF_DZ_TX_TSO_TCP_MSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, %struct.sk_buff*, i32*)* @efx_ef10_tx_tso_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_tx_tso_desc(%struct.efx_tx_queue* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.efx_tx_buffer*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipv6hdr*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 4
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %113

35:                                               ; preds = %3
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %36)
  store %struct.iphdr* %37, %struct.iphdr** %10, align 8
  %38 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohs(i32 %49)
  store i64 %50, i64* %11, align 8
  br label %56

51:                                               ; preds = %35
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %52)
  store %struct.ipv6hdr* %53, %struct.ipv6hdr** %14, align 8
  %54 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %55 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %57)
  store %struct.tcphdr* %58, %struct.tcphdr** %9, align 8
  %59 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %60 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohl(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %64 = call %struct.efx_tx_buffer* @efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue* %63)
  store %struct.efx_tx_buffer* %64, %struct.efx_tx_buffer** %8, align 8
  %65 = load i8*, i8** @EFX_TX_BUF_OPTION, align 8
  %66 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %67 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %69 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %71 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %73 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ESF_DZ_TX_DESC_IS_OPT, align 4
  %76 = load i32, i32* @ESF_DZ_TX_OPTION_TYPE, align 4
  %77 = load i32, i32* @ESE_DZ_TX_OPTION_DESC_TSO, align 4
  %78 = load i32, i32* @ESF_DZ_TX_TSO_OPTION_TYPE, align 4
  %79 = load i32, i32* @ESE_DZ_TX_TSO_OPTION_DESC_FATSO2A, align 4
  %80 = load i32, i32* @ESF_DZ_TX_TSO_IP_ID, align 4
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* @ESF_DZ_TX_TSO_TCP_SEQNO, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @EFX_POPULATE_QWORD_5(i32 %74, i32 %75, i32 1, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i64 %81, i32 %82, i32 %83)
  %85 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %86 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %90 = call %struct.efx_tx_buffer* @efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue* %89)
  store %struct.efx_tx_buffer* %90, %struct.efx_tx_buffer** %8, align 8
  %91 = load i8*, i8** @EFX_TX_BUF_OPTION, align 8
  %92 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %93 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %95 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %97 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %99 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ESF_DZ_TX_DESC_IS_OPT, align 4
  %102 = load i32, i32* @ESF_DZ_TX_OPTION_TYPE, align 4
  %103 = load i32, i32* @ESE_DZ_TX_OPTION_DESC_TSO, align 4
  %104 = load i32, i32* @ESF_DZ_TX_TSO_OPTION_TYPE, align 4
  %105 = load i32, i32* @ESE_DZ_TX_TSO_OPTION_DESC_FATSO2B, align 4
  %106 = load i32, i32* @ESF_DZ_TX_TSO_TCP_MSS, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @EFX_POPULATE_QWORD_4(i32 %100, i32 %101, i32 1, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %110 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %56, %30
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.efx_tx_buffer* @efx_tx_queue_get_insert_buffer(%struct.efx_tx_queue*) #1

declare dso_local i32 @EFX_POPULATE_QWORD_5(i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @EFX_POPULATE_QWORD_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
