; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_ip_offload_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_ip_offload_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i64, %struct.TYPE_7__*, %struct.TYPE_8__, i32, %struct.ibmvnic_query_ip_offload_buffer, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8* }
%struct.ibmvnic_query_ip_offload_buffer = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%union.ibmvnic_crq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Query IP Offload Buffer:\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ipv4_chksum = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ipv6_chksum = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"tcp_ipv4_chksum = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"tcp_ipv6_chksum = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"udp_ipv4_chksum = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"udp_ipv6_chksum = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"large_tx_ipv4 = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"large_tx_ipv6 = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"large_rx_ipv4 = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"large_rx_ipv6 = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"max_ipv4_hdr_sz = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"max_ipv6_hdr_sz = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"max_tcp_hdr_size = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"max_udp_hdr_size = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"max_large_tx_size = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"max_large_rx_size = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"ipv6_ext_hdr = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"tcp_pseudosum_req = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"num_ipv6_ext_hd = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"off_ipv6_ext_hd = %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [40 x i8] c"Couldn't map ip offload control buffer\0A\00", align 1
@INITIAL_VERSION_IOB = common dso_local global i32 0, align 4
@VNIC_PROBING = common dso_local global i64 0, align 8
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@CONTROL_IP_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @handle_query_ip_offload_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_query_ip_offload_rsp(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ibmvnic_query_ip_offload_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.ibmvnic_crq, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %13, i32 0, i32 5
  store %struct.ibmvnic_query_ip_offload_buffer* %14, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %20 = call i32 @dma_unmap_single(%struct.device* %15, i32 %18, i32 160, i32 %19)
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %40, %1
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 20
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %34 = bitcast %struct.ibmvnic_query_ip_offload_buffer* %33 to i64*
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %65, i32 0, i32 2
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %69 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %77)
  %79 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %83 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %84)
  %86 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %90 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %91)
  %93 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %97 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %98)
  %100 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %104 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %105)
  %107 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %108 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %111 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %110, i32 0, i32 9
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64 %112)
  %114 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %118 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %117, i32 0, i32 10
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %119)
  %121 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %121, i32 0, i32 2
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %125 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %124, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i64 %126)
  %128 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %129 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %128, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %132 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %131, i32 0, i32 12
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i64 %133)
  %135 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %136 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %139 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %138, i32 0, i32 13
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i64 %140)
  %142 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %146 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %145, i32 0, i32 14
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 %147)
  %149 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %150 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %149, i32 0, i32 2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %153 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %152, i32 0, i32 15
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i64 %154)
  %156 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %157 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %156, i32 0, i32 2
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %160 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %159, i32 0, i32 16
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %158, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i64 %161)
  %163 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %164 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %163, i32 0, i32 2
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %167 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %166, i32 0, i32 17
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %165, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i64 %168)
  %170 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %171 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %170, i32 0, i32 2
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %174 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %173, i32 0, i32 18
  %175 = load i64, i64* %174, align 8
  %176 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i64 %175)
  %177 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %178 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %177, i32 0, i32 2
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %181 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %180, i32 0, i32 19
  %182 = load i64, i64* %181, align 8
  %183 = call i32 (%struct.TYPE_7__*, i8*, ...) @netdev_dbg(%struct.TYPE_7__* %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i64 %182)
  %184 = load %struct.device*, %struct.device** %3, align 8
  %185 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %186 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %185, i32 0, i32 3
  %187 = load i32, i32* @DMA_TO_DEVICE, align 4
  %188 = call i32 @dma_map_single(%struct.device* %184, %struct.TYPE_8__* %186, i32 96, i32 %187)
  %189 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %190 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.device*, %struct.device** %3, align 8
  %192 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %193 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @dma_mapping_error(%struct.device* %191, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %43
  %198 = load %struct.device*, %struct.device** %3, align 8
  %199 = call i32 @dev_err(%struct.device* %198, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  br label %453

200:                                              ; preds = %43
  %201 = call i8* @cpu_to_be32(i32 96)
  %202 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %203 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 11
  store i8* %201, i8** %204, align 8
  %205 = load i32, i32* @INITIAL_VERSION_IOB, align 4
  %206 = call i8* @cpu_to_be32(i32 %205)
  %207 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %208 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 10
  store i8* %206, i8** %209, align 8
  %210 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %211 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %214 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i64 %212, i64* %215, align 8
  %216 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %217 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %220 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  store i64 %218, i64* %221, align 8
  %222 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %223 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %226 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  store i64 %224, i64* %227, align 8
  %228 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %229 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %232 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 3
  store i64 %230, i64* %233, align 8
  %234 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %235 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %238 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 4
  store i64 %236, i64* %239, align 8
  %240 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %241 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %240, i32 0, i32 5
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %244 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 5
  store i64 %242, i64* %245, align 8
  %246 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %247 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %250 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 6
  store i64 %248, i64* %251, align 8
  %252 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %253 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %252, i32 0, i32 7
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %256 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 7
  store i64 %254, i64* %257, align 8
  %258 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %259 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 9
  store i64 0, i64* %260, align 8
  %261 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %262 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 8
  store i64 0, i64* %263, align 8
  %264 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %265 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @VNIC_PROBING, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %200
  %270 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %271 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %270, i32 0, i32 2
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %5, align 4
  %275 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %276 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %275, i32 0, i32 2
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  store i32 0, i32* %278, align 4
  br label %279

279:                                              ; preds = %269, %200
  %280 = load i32, i32* @NETIF_F_SG, align 4
  %281 = load i32, i32* @NETIF_F_GSO, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @NETIF_F_GRO, align 4
  %284 = or i32 %282, %283
  %285 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %286 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %285, i32 0, i32 2
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  store i32 %284, i32* %288, align 4
  %289 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %290 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %279
  %294 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %295 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %294, i32 0, i32 4
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %293, %279
  %299 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %300 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %301 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %300, i32 0, i32 2
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %299
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %298, %293
  %307 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %308 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %306
  %312 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %313 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %312, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %311, %306
  %317 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %318 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %319 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %318, i32 0, i32 2
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %317
  store i32 %323, i32* %321, align 4
  br label %324

324:                                              ; preds = %316, %311
  %325 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %326 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %325, i32 0, i32 2
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %331 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %332 = or i32 %330, %331
  %333 = and i32 %329, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %324
  %336 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %337 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %338 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %337, i32 0, i32 2
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, %336
  store i32 %342, i32* %340, align 4
  br label %343

343:                                              ; preds = %335, %324
  %344 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %345 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %344, i32 0, i32 6
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %356

348:                                              ; preds = %343
  %349 = load i32, i32* @NETIF_F_TSO, align 4
  %350 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %351 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %350, i32 0, i32 2
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = or i32 %354, %349
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %348, %343
  %357 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %4, align 8
  %358 = getelementptr inbounds %struct.ibmvnic_query_ip_offload_buffer, %struct.ibmvnic_query_ip_offload_buffer* %357, i32 0, i32 7
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %356
  %362 = load i32, i32* @NETIF_F_TSO6, align 4
  %363 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %364 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %363, i32 0, i32 2
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %367, %362
  store i32 %368, i32* %366, align 4
  br label %369

369:                                              ; preds = %361, %356
  %370 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %371 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @VNIC_PROBING, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %387

375:                                              ; preds = %369
  %376 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %377 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %376, i32 0, i32 2
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %382 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %381, i32 0, i32 2
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %380
  store i32 %386, i32* %384, align 4
  br label %434

387:                                              ; preds = %369
  %388 = load i32, i32* %5, align 4
  %389 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %390 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %389, i32 0, i32 2
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %388, %393
  br i1 %394, label %395, label %433

395:                                              ; preds = %387
  store i32 0, i32* %8, align 4
  %396 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %397 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %396, i32 0, i32 2
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %402 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %401, i32 0, i32 2
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = and i32 %405, %400
  store i32 %406, i32* %404, align 4
  %407 = load i32, i32* %5, align 4
  %408 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %409 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %408, i32 0, i32 2
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = xor i32 %407, %412
  %414 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %415 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %414, i32 0, i32 2
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = and i32 %413, %418
  store i32 %419, i32* %8, align 4
  %420 = load i32, i32* %8, align 4
  %421 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %422 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %421, i32 0, i32 2
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = and i32 %420, %425
  %427 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %428 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %427, i32 0, i32 2
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = or i32 %431, %426
  store i32 %432, i32* %430, align 4
  br label %433

433:                                              ; preds = %395, %387
  br label %434

434:                                              ; preds = %433, %375
  %435 = call i32 @memset(%union.ibmvnic_crq* %6, i32 0, i32 24)
  %436 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %437 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_5__*
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 3
  store i32 %436, i32* %438, align 4
  %439 = load i32, i32* @CONTROL_IP_OFFLOAD, align 4
  %440 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_5__*
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 8
  %442 = call i8* @cpu_to_be32(i32 96)
  %443 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_5__*
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 1
  store i8* %442, i8** %444, align 8
  %445 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %446 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = call i8* @cpu_to_be32(i32 %447)
  %449 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_5__*
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 0
  store i8* %448, i8** %450, align 8
  %451 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %452 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %451, %union.ibmvnic_crq* %6)
  br label %453

453:                                              ; preds = %434, %197
  ret void
}

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
