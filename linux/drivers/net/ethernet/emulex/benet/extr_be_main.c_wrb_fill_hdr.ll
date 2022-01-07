; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_wrb_fill_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_wrb_fill_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_eth_hdr_wrb = type { i32 }
%struct.be_wrb_params = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@crc = common dso_local global i32 0, align 4
@CRC = common dso_local global i32 0, align 4
@ipcs = common dso_local global i32 0, align 4
@IPCS = common dso_local global i32 0, align 4
@tcpcs = common dso_local global i32 0, align 4
@TCPCS = common dso_local global i32 0, align 4
@udpcs = common dso_local global i32 0, align 4
@UDPCS = common dso_local global i32 0, align 4
@lso = common dso_local global i32 0, align 4
@LSO = common dso_local global i32 0, align 4
@lso6 = common dso_local global i32 0, align 4
@LSO6 = common dso_local global i32 0, align 4
@lso_mss = common dso_local global i32 0, align 4
@event = common dso_local global i32 0, align 4
@VLAN_SKIP_HW = common dso_local global i32 0, align 4
@vlan = common dso_local global i32 0, align 4
@VLAN = common dso_local global i32 0, align 4
@vlan_tag = common dso_local global i32 0, align 4
@num_wrb = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@mgmt = common dso_local global i32 0, align 4
@OS2BMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_eth_hdr_wrb*, %struct.be_wrb_params*, %struct.sk_buff*)* @wrb_fill_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrb_fill_hdr(%struct.be_adapter* %0, %struct.be_eth_hdr_wrb* %1, %struct.be_wrb_params* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.be_eth_hdr_wrb*, align 8
  %7 = alloca %struct.be_wrb_params*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.be_eth_hdr_wrb* %1, %struct.be_eth_hdr_wrb** %6, align 8
  store %struct.be_wrb_params* %2, %struct.be_wrb_params** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %9 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %10 = call i32 @memset(%struct.be_eth_hdr_wrb* %9, i32 0, i32 4)
  %11 = load i32, i32* @crc, align 4
  %12 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %13 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %14 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CRC, align 4
  %17 = call i32 @BE_WRB_F_GET(i32 %15, i32 %16)
  %18 = call i32 @SET_TX_WRB_HDR_BITS(i32 %11, %struct.be_eth_hdr_wrb* %12, i32 %17)
  %19 = load i32, i32* @ipcs, align 4
  %20 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %21 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %22 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IPCS, align 4
  %25 = call i32 @BE_WRB_F_GET(i32 %23, i32 %24)
  %26 = call i32 @SET_TX_WRB_HDR_BITS(i32 %19, %struct.be_eth_hdr_wrb* %20, i32 %25)
  %27 = load i32, i32* @tcpcs, align 4
  %28 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %29 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %30 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TCPCS, align 4
  %33 = call i32 @BE_WRB_F_GET(i32 %31, i32 %32)
  %34 = call i32 @SET_TX_WRB_HDR_BITS(i32 %27, %struct.be_eth_hdr_wrb* %28, i32 %33)
  %35 = load i32, i32* @udpcs, align 4
  %36 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %37 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %38 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UDPCS, align 4
  %41 = call i32 @BE_WRB_F_GET(i32 %39, i32 %40)
  %42 = call i32 @SET_TX_WRB_HDR_BITS(i32 %35, %struct.be_eth_hdr_wrb* %36, i32 %41)
  %43 = load i32, i32* @lso, align 4
  %44 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %45 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %46 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LSO, align 4
  %49 = call i32 @BE_WRB_F_GET(i32 %47, i32 %48)
  %50 = call i32 @SET_TX_WRB_HDR_BITS(i32 %43, %struct.be_eth_hdr_wrb* %44, i32 %49)
  %51 = load i32, i32* @lso6, align 4
  %52 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %53 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %54 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LSO6, align 4
  %57 = call i32 @BE_WRB_F_GET(i32 %55, i32 %56)
  %58 = call i32 @SET_TX_WRB_HDR_BITS(i32 %51, %struct.be_eth_hdr_wrb* %52, i32 %57)
  %59 = load i32, i32* @lso_mss, align 4
  %60 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %61 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %62 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SET_TX_WRB_HDR_BITS(i32 %59, %struct.be_eth_hdr_wrb* %60, i32 %63)
  %65 = load i32, i32* @event, align 4
  %66 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %67 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %68 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @VLAN_SKIP_HW, align 4
  %71 = call i32 @BE_WRB_F_GET(i32 %69, i32 %70)
  %72 = call i32 @SET_TX_WRB_HDR_BITS(i32 %65, %struct.be_eth_hdr_wrb* %66, i32 %71)
  %73 = load i32, i32* @vlan, align 4
  %74 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %75 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %76 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VLAN, align 4
  %79 = call i32 @BE_WRB_F_GET(i32 %77, i32 %78)
  %80 = call i32 @SET_TX_WRB_HDR_BITS(i32 %73, %struct.be_eth_hdr_wrb* %74, i32 %79)
  %81 = load i32, i32* @vlan_tag, align 4
  %82 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %83 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %84 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SET_TX_WRB_HDR_BITS(i32 %81, %struct.be_eth_hdr_wrb* %82, i32 %85)
  %87 = load i32, i32* @num_wrb, align 4
  %88 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i32 @skb_wrb_cnt(%struct.sk_buff* %89)
  %91 = call i32 @SET_TX_WRB_HDR_BITS(i32 %87, %struct.be_eth_hdr_wrb* %88, i32 %90)
  %92 = load i32, i32* @len, align 4
  %93 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SET_TX_WRB_HDR_BITS(i32 %92, %struct.be_eth_hdr_wrb* %93, i32 %96)
  %98 = load i32, i32* @mgmt, align 4
  %99 = load %struct.be_eth_hdr_wrb*, %struct.be_eth_hdr_wrb** %6, align 8
  %100 = load %struct.be_wrb_params*, %struct.be_wrb_params** %7, align 8
  %101 = getelementptr inbounds %struct.be_wrb_params, %struct.be_wrb_params* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @OS2BMC, align 4
  %104 = call i32 @BE_WRB_F_GET(i32 %102, i32 %103)
  %105 = call i32 @SET_TX_WRB_HDR_BITS(i32 %98, %struct.be_eth_hdr_wrb* %99, i32 %104)
  ret void
}

declare dso_local i32 @memset(%struct.be_eth_hdr_wrb*, i32, i32) #1

declare dso_local i32 @SET_TX_WRB_HDR_BITS(i32, %struct.be_eth_hdr_wrb*, i32) #1

declare dso_local i32 @BE_WRB_F_GET(i32, i32) #1

declare dso_local i32 @skb_wrb_cnt(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
