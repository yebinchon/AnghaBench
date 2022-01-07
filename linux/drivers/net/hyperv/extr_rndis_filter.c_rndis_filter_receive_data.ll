; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_filter_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i32 }
%struct.netvsc_channel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.rndis_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rndis_packet }
%struct.rndis_packet = type { i64, i64 }
%struct.ndis_tcp_ip_checksum_info = type { i32 }
%struct.ndis_pkt_8021q_info = type { i32 }
%struct.rndis_pktinfo_id = type { i32 }

@RNDIS_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"rndis message buffer overflow detected (got %u, min %u)...dropping this message!\0A\00", align 1
@NVSP_STAT_FAIL = common dso_local global i32 0, align 4
@IEEE_8021Q_INFO = common dso_local global i32 0, align 4
@TCPIP_CHKSUM_PKTINFO = common dso_local global i32 0, align 4
@RNDIS_PKTINFO_ID = common dso_local global i32 0, align 4
@RNDIS_PKTINFO_SUBALLOC = common dso_local global i32 0, align 4
@RNDIS_PKTINFO_1ST_FRAG = common dso_local global i32 0, align 4
@RNDIS_PKTINFO_LAST_FRAG = common dso_local global i32 0, align 4
@NVSP_RSC_MAX = common dso_local global i64 0, align 8
@NVSP_STAT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netvsc_device*, %struct.netvsc_channel*, %struct.rndis_message*, i64)* @rndis_filter_receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_filter_receive_data(%struct.net_device* %0, %struct.netvsc_device* %1, %struct.netvsc_channel* %2, %struct.rndis_message* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca %struct.netvsc_channel*, align 8
  %10 = alloca %struct.rndis_message*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rndis_packet*, align 8
  %13 = alloca %struct.ndis_tcp_ip_checksum_info*, align 8
  %14 = alloca %struct.ndis_pkt_8021q_info*, align 8
  %15 = alloca %struct.rndis_pktinfo_id*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %8, align 8
  store %struct.netvsc_channel* %2, %struct.netvsc_channel** %9, align 8
  store %struct.rndis_message* %3, %struct.rndis_message** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.rndis_message*, %struct.rndis_message** %10, align 8
  %21 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.rndis_packet* %22, %struct.rndis_packet** %12, align 8
  store i32 0, i32* %18, align 4
  %23 = load i64, i64* @RNDIS_HEADER_SIZE, align 8
  %24 = load %struct.rndis_packet*, %struct.rndis_packet** %12, align 8
  %25 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %16, align 8
  %28 = load i64, i64* %16, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub nsw i64 %29, %28
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.rndis_packet*, %struct.rndis_packet** %12, align 8
  %33 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %5
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.rndis_packet*, %struct.rndis_packet** %12, align 8
  %43 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %40, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %44)
  %46 = load i32, i32* @NVSP_STAT_FAIL, align 4
  store i32 %46, i32* %6, align 4
  br label %153

47:                                               ; preds = %5
  %48 = load %struct.rndis_packet*, %struct.rndis_packet** %12, align 8
  %49 = load i32, i32* @IEEE_8021Q_INFO, align 4
  %50 = call i8* @rndis_get_ppi(%struct.rndis_packet* %48, i32 %49, i32 0)
  %51 = bitcast i8* %50 to %struct.ndis_pkt_8021q_info*
  store %struct.ndis_pkt_8021q_info* %51, %struct.ndis_pkt_8021q_info** %14, align 8
  %52 = load %struct.rndis_packet*, %struct.rndis_packet** %12, align 8
  %53 = load i32, i32* @TCPIP_CHKSUM_PKTINFO, align 4
  %54 = call i8* @rndis_get_ppi(%struct.rndis_packet* %52, i32 %53, i32 0)
  %55 = bitcast i8* %54 to %struct.ndis_tcp_ip_checksum_info*
  store %struct.ndis_tcp_ip_checksum_info* %55, %struct.ndis_tcp_ip_checksum_info** %13, align 8
  %56 = load %struct.rndis_packet*, %struct.rndis_packet** %12, align 8
  %57 = load i32, i32* @RNDIS_PKTINFO_ID, align 4
  %58 = call i8* @rndis_get_ppi(%struct.rndis_packet* %56, i32 %57, i32 1)
  %59 = bitcast i8* %58 to %struct.rndis_pktinfo_id*
  store %struct.rndis_pktinfo_id* %59, %struct.rndis_pktinfo_id** %15, align 8
  %60 = load %struct.rndis_message*, %struct.rndis_message** %10, align 8
  %61 = bitcast %struct.rndis_message* %60 to i8*
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr i8, i8* %61, i64 %62
  store i8* %63, i8** %17, align 8
  %64 = load %struct.rndis_pktinfo_id*, %struct.rndis_pktinfo_id** %15, align 8
  %65 = icmp ne %struct.rndis_pktinfo_id* %64, null
  br i1 %65, label %66, label %111

66:                                               ; preds = %47
  %67 = load %struct.rndis_pktinfo_id*, %struct.rndis_pktinfo_id** %15, align 8
  %68 = getelementptr inbounds %struct.rndis_pktinfo_id, %struct.rndis_pktinfo_id* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RNDIS_PKTINFO_SUBALLOC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %66
  %74 = load %struct.rndis_pktinfo_id*, %struct.rndis_pktinfo_id** %15, align 8
  %75 = getelementptr inbounds %struct.rndis_pktinfo_id, %struct.rndis_pktinfo_id* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RNDIS_PKTINFO_1ST_FRAG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %82 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %92

84:                                               ; preds = %73
  %85 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %86 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %148

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %80
  store i32 1, i32* %18, align 4
  %93 = load %struct.rndis_pktinfo_id*, %struct.rndis_pktinfo_id** %15, align 8
  %94 = getelementptr inbounds %struct.rndis_pktinfo_id, %struct.rndis_pktinfo_id* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RNDIS_PKTINFO_LAST_FRAG, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 0, i32* %18, align 4
  br label %100

100:                                              ; preds = %99, %92
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %105 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %148

110:                                              ; preds = %103, %100
  br label %115

111:                                              ; preds = %66, %47
  %112 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %113 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %110
  %116 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %117 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NVSP_RSC_MAX, align 8
  %121 = icmp sge i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %148

126:                                              ; preds = %115
  %127 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %128 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %14, align 8
  %129 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %13, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load %struct.rndis_packet*, %struct.rndis_packet** %12, align 8
  %132 = getelementptr inbounds %struct.rndis_packet, %struct.rndis_packet* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @rsc_add_data(%struct.netvsc_channel* %127, %struct.ndis_pkt_8021q_info* %128, %struct.ndis_tcp_ip_checksum_info* %129, i8* %130, i64 %133)
  %135 = load i32, i32* %18, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i32, i32* @NVSP_STAT_SUCCESS, align 4
  store i32 %138, i32* %6, align 4
  br label %153

139:                                              ; preds = %126
  %140 = load %struct.net_device*, %struct.net_device** %7, align 8
  %141 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %142 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %143 = call i32 @netvsc_recv_callback(%struct.net_device* %140, %struct.netvsc_device* %141, %struct.netvsc_channel* %142)
  store i32 %143, i32* %19, align 4
  %144 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %145 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %19, align 4
  store i32 %147, i32* %6, align 4
  br label %153

148:                                              ; preds = %125, %109, %90
  %149 = load %struct.netvsc_channel*, %struct.netvsc_channel** %9, align 8
  %150 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* @NVSP_STAT_FAIL, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %148, %139, %137, %39
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64, i64) #1

declare dso_local i8* @rndis_get_ppi(%struct.rndis_packet*, i32, i32) #1

declare dso_local i32 @rsc_add_data(%struct.netvsc_channel*, %struct.ndis_pkt_8021q_info*, %struct.ndis_tcp_ip_checksum_info*, i8*, i64) #1

declare dso_local i32 @netvsc_recv_callback(%struct.net_device*, %struct.netvsc_device*, %struct.netvsc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
