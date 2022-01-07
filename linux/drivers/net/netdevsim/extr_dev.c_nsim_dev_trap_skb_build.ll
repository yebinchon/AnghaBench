; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_trap_skb_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_dev.c_nsim_dev_trap_skb_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }
%struct.udphdr = type { i8*, i32, i32 }
%struct.ethhdr = type { i8*, i32, i32 }
%struct.iphdr = type { i32, i32, i32, i64, i8*, i64, i8*, i8*, i32 }

@NSIM_TRAP_L4_DATA_LEN = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"192.0.2.1\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"198.51.100.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* ()* @nsim_dev_trap_skb_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nsim_dev_trap_skb_build() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.udphdr*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = load i32, i32* @NSIM_TRAP_L4_DATA_LEN, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @alloc_skb(i32 %9, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store %struct.sk_buff* null, %struct.sk_buff** %1, align 8
  br label %105

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 80, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_reset_mac_header(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i8* @skb_put(%struct.sk_buff* %22, i32 16)
  %24 = bitcast i8* %23 to %struct.ethhdr*
  store %struct.ethhdr* %24, %struct.ethhdr** %6, align 8
  %25 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %26 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @eth_random_addr(i32 %27)
  %29 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %30 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @eth_random_addr(i32 %31)
  %33 = load i32, i32* @ETH_P_IP, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %36 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @ETH_P_IP, align 4
  %38 = call i8* @htons(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @skb_set_network_header(%struct.sk_buff* %41, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i8* @skb_put(%struct.sk_buff* %46, i32 64)
  %48 = bitcast i8* %47 to %struct.iphdr*
  store %struct.iphdr* %48, %struct.iphdr** %7, align 8
  %49 = load i32, i32* @IPPROTO_UDP, align 4
  %50 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = call i8* @in_aton(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = call i8* @in_aton(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 0
  store i32 4, i32* %59, align 8
  %60 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  %62 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %63 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %62, i32 0, i32 1
  store i32 5, i32* %63, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i8* @htons(i32 %64)
  %66 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 2
  store i32 100, i32* %69, align 8
  %70 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %71 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %73 = bitcast %struct.iphdr* %72 to i8*
  %74 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ip_fast_csum(i8* %73, i32 %76)
  %78 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @skb_set_transport_header(%struct.sk_buff* %80, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 16, %87
  %89 = trunc i64 %88 to i32
  %90 = call %struct.udphdr* @skb_put_zero(%struct.sk_buff* %85, i32 %89)
  store %struct.udphdr* %90, %struct.udphdr** %5, align 8
  %91 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %92 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %91, i32 0, i32 2
  %93 = call i32 @get_random_bytes(i32* %92, i32 4)
  %94 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %95 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %94, i32 0, i32 1
  %96 = call i32 @get_random_bytes(i32* %95, i32 4)
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 16, %98
  %100 = trunc i64 %99 to i32
  %101 = call i8* @htons(i32 %100)
  %102 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %103 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %104, %struct.sk_buff** %1, align 8
  br label %105

105:                                              ; preds = %15, %14
  %106 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %106
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i8* @in_aton(i8*) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.udphdr* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
