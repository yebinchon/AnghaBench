; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_handle_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_handle_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.octnet_buf_free_info = type { %struct.octeon_soft_command*, %struct.lio* }
%struct.octeon_soft_command = type { i64 }
%struct.lio = type { i64, i32, %struct.octeon_device* }
%struct.oct_timestamp_resp = type { i64 }
%struct.sk_buff = type { i64 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_4__ = type { i32 }

@OCTEON_REQUEST_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Tx timestamp instruction failed. Status: %llx\0A\00", align 1
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Got resulting SKBTX_HW_TSTAMP skb=%p ns=%016llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64, i8*)* @handle_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_timestamp(%struct.octeon_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.octnet_buf_free_info*, align 8
  %8 = alloca %struct.octeon_soft_command*, align 8
  %9 = alloca %struct.oct_timestamp_resp*, align 8
  %10 = alloca %struct.lio*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.skb_shared_hwtstamps, align 4
  %13 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.sk_buff*
  store %struct.sk_buff* %15, %struct.sk_buff** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.octnet_buf_free_info*
  store %struct.octnet_buf_free_info* %19, %struct.octnet_buf_free_info** %7, align 8
  %20 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %7, align 8
  %21 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %20, i32 0, i32 1
  %22 = load %struct.lio*, %struct.lio** %21, align 8
  store %struct.lio* %22, %struct.lio** %10, align 8
  %23 = load %struct.octnet_buf_free_info*, %struct.octnet_buf_free_info** %7, align 8
  %24 = getelementptr inbounds %struct.octnet_buf_free_info, %struct.octnet_buf_free_info* %23, i32 0, i32 0
  %25 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %24, align 8
  store %struct.octeon_soft_command* %25, %struct.octeon_soft_command** %8, align 8
  %26 = load %struct.lio*, %struct.lio** %10, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 2
  %28 = load %struct.octeon_device*, %struct.octeon_device** %27, align 8
  store %struct.octeon_device* %28, %struct.octeon_device** %4, align 8
  %29 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %30 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.oct_timestamp_resp*
  store %struct.oct_timestamp_resp* %32, %struct.oct_timestamp_resp** %9, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @OCTEON_REQUEST_DONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @CVM_CAST64(i64 %41)
  %43 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.oct_timestamp_resp*, %struct.oct_timestamp_resp** %9, align 8
  %45 = getelementptr inbounds %struct.oct_timestamp_resp, %struct.oct_timestamp_resp* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %3
  %47 = load %struct.oct_timestamp_resp*, %struct.oct_timestamp_resp** %9, align 8
  %48 = getelementptr inbounds %struct.oct_timestamp_resp, %struct.oct_timestamp_resp* %47, i32 0, i32 0
  %49 = call i32 @octeon_swap_8B_data(i64* %48, i32 1)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %46
  %61 = load %struct.oct_timestamp_resp*, %struct.oct_timestamp_resp** %9, align 8
  %62 = getelementptr inbounds %struct.oct_timestamp_resp, %struct.oct_timestamp_resp* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %13, align 8
  %64 = load %struct.lio*, %struct.lio** %10, align 8
  %65 = load i32, i32* @tx_done, align 4
  %66 = load %struct.lio*, %struct.lio** %10, align 8
  %67 = getelementptr inbounds %struct.lio, %struct.lio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @netif_info(%struct.lio* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %69, i64 %70)
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.lio*, %struct.lio** %10, align 8
  %74 = getelementptr inbounds %struct.lio, %struct.lio* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = call i32 @ns_to_ktime(i64 %76)
  %78 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %12, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = call i32 @skb_tstamp_tx(%struct.sk_buff* %79, %struct.skb_shared_hwtstamps* %12)
  br label %81

81:                                               ; preds = %60, %46
  %82 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %83 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %8, align 8
  %84 = call i32 @octeon_free_soft_command(%struct.octeon_device* %82, %struct.octeon_soft_command* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = call i32 @tx_buffer_free(%struct.sk_buff* %85)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @CVM_CAST64(i64) #1

declare dso_local i32 @octeon_swap_8B_data(i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*, %struct.sk_buff*, i64) #1

declare dso_local i32 @ns_to_ktime(i64) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @tx_buffer_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
