; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_cap_queries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_cap_queries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32 }
%union.ibmvnic_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@QUERY_CAPABILITY = common dso_local global i32 0, align 4
@MIN_TX_QUEUES = common dso_local global i32 0, align 4
@MIN_RX_QUEUES = common dso_local global i32 0, align 4
@MIN_RX_ADD_QUEUES = common dso_local global i32 0, align 4
@MAX_TX_QUEUES = common dso_local global i32 0, align 4
@MAX_RX_QUEUES = common dso_local global i32 0, align 4
@MAX_RX_ADD_QUEUES = common dso_local global i32 0, align 4
@MIN_TX_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@MIN_RX_ADD_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@MAX_TX_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@MAX_RX_ADD_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@TCP_IP_OFFLOAD = common dso_local global i32 0, align 4
@PROMISC_SUPPORTED = common dso_local global i32 0, align 4
@MIN_MTU = common dso_local global i32 0, align 4
@MAX_MTU = common dso_local global i32 0, align 4
@MAX_MULTICAST_FILTERS = common dso_local global i32 0, align 4
@VLAN_HEADER_INSERTION = common dso_local global i32 0, align 4
@RX_VLAN_HEADER_INSERTION = common dso_local global i32 0, align 4
@MAX_TX_SG_ENTRIES = common dso_local global i32 0, align 4
@RX_SG_SUPPORTED = common dso_local global i32 0, align 4
@OPT_TX_COMP_SUB_QUEUES = common dso_local global i32 0, align 4
@OPT_RX_COMP_QUEUES = common dso_local global i32 0, align 4
@OPT_RX_BUFADD_Q_PER_RX_COMP_Q = common dso_local global i32 0, align 4
@OPT_TX_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@OPT_RXBA_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@TX_RX_DESC_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @send_cap_queries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_cap_queries(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %union.ibmvnic_crq, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %4 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %4, i32 0, i32 0
  %6 = call i32 @atomic_set(i32* %5, i32 0)
  %7 = call i32 @memset(%union.ibmvnic_crq* %3, i32 0, i32 16)
  %8 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %9 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @QUERY_CAPABILITY, align 4
  %12 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @MIN_TX_QUEUES, align 4
  %15 = call i8* @cpu_to_be16(i32 %14)
  %16 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 0
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %22 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %21, %union.ibmvnic_crq* %3)
  %23 = load i32, i32* @MIN_RX_QUEUES, align 4
  %24 = call i8* @cpu_to_be16(i32 %23)
  %25 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %31 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %30, %union.ibmvnic_crq* %3)
  %32 = load i32, i32* @MIN_RX_ADD_QUEUES, align 4
  %33 = call i8* @cpu_to_be16(i32 %32)
  %34 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %36, i32 0, i32 0
  %38 = call i32 @atomic_inc(i32* %37)
  %39 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %40 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %39, %union.ibmvnic_crq* %3)
  %41 = load i32, i32* @MAX_TX_QUEUES, align 4
  %42 = call i8* @cpu_to_be16(i32 %41)
  %43 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %49 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %48, %union.ibmvnic_crq* %3)
  %50 = load i32, i32* @MAX_RX_QUEUES, align 4
  %51 = call i8* @cpu_to_be16(i32 %50)
  %52 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %54, i32 0, i32 0
  %56 = call i32 @atomic_inc(i32* %55)
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %58 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %57, %union.ibmvnic_crq* %3)
  %59 = load i32, i32* @MAX_RX_ADD_QUEUES, align 4
  %60 = call i8* @cpu_to_be16(i32 %59)
  %61 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %63, i32 0, i32 0
  %65 = call i32 @atomic_inc(i32* %64)
  %66 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %67 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %66, %union.ibmvnic_crq* %3)
  %68 = load i32, i32* @MIN_TX_ENTRIES_PER_SUBCRQ, align 4
  %69 = call i8* @cpu_to_be16(i32 %68)
  %70 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %72, i32 0, i32 0
  %74 = call i32 @atomic_inc(i32* %73)
  %75 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %76 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %75, %union.ibmvnic_crq* %3)
  %77 = load i32, i32* @MIN_RX_ADD_ENTRIES_PER_SUBCRQ, align 4
  %78 = call i8* @cpu_to_be16(i32 %77)
  %79 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %81, i32 0, i32 0
  %83 = call i32 @atomic_inc(i32* %82)
  %84 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %85 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %84, %union.ibmvnic_crq* %3)
  %86 = load i32, i32* @MAX_TX_ENTRIES_PER_SUBCRQ, align 4
  %87 = call i8* @cpu_to_be16(i32 %86)
  %88 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %90, i32 0, i32 0
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %94 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %93, %union.ibmvnic_crq* %3)
  %95 = load i32, i32* @MAX_RX_ADD_ENTRIES_PER_SUBCRQ, align 4
  %96 = call i8* @cpu_to_be16(i32 %95)
  %97 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %99, i32 0, i32 0
  %101 = call i32 @atomic_inc(i32* %100)
  %102 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %103 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %102, %union.ibmvnic_crq* %3)
  %104 = load i32, i32* @TCP_IP_OFFLOAD, align 4
  %105 = call i8* @cpu_to_be16(i32 %104)
  %106 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %108, i32 0, i32 0
  %110 = call i32 @atomic_inc(i32* %109)
  %111 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %112 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %111, %union.ibmvnic_crq* %3)
  %113 = load i32, i32* @PROMISC_SUPPORTED, align 4
  %114 = call i8* @cpu_to_be16(i32 %113)
  %115 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %118 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %117, i32 0, i32 0
  %119 = call i32 @atomic_inc(i32* %118)
  %120 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %121 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %120, %union.ibmvnic_crq* %3)
  %122 = load i32, i32* @MIN_MTU, align 4
  %123 = call i8* @cpu_to_be16(i32 %122)
  %124 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %126, i32 0, i32 0
  %128 = call i32 @atomic_inc(i32* %127)
  %129 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %130 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %129, %union.ibmvnic_crq* %3)
  %131 = load i32, i32* @MAX_MTU, align 4
  %132 = call i8* @cpu_to_be16(i32 %131)
  %133 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %136 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %135, i32 0, i32 0
  %137 = call i32 @atomic_inc(i32* %136)
  %138 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %139 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %138, %union.ibmvnic_crq* %3)
  %140 = load i32, i32* @MAX_MULTICAST_FILTERS, align 4
  %141 = call i8* @cpu_to_be16(i32 %140)
  %142 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %145 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %144, i32 0, i32 0
  %146 = call i32 @atomic_inc(i32* %145)
  %147 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %148 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %147, %union.ibmvnic_crq* %3)
  %149 = load i32, i32* @VLAN_HEADER_INSERTION, align 4
  %150 = call i8* @cpu_to_be16(i32 %149)
  %151 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %154 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %153, i32 0, i32 0
  %155 = call i32 @atomic_inc(i32* %154)
  %156 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %157 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %156, %union.ibmvnic_crq* %3)
  %158 = load i32, i32* @RX_VLAN_HEADER_INSERTION, align 4
  %159 = call i8* @cpu_to_be16(i32 %158)
  %160 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %163 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %162, i32 0, i32 0
  %164 = call i32 @atomic_inc(i32* %163)
  %165 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %166 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %165, %union.ibmvnic_crq* %3)
  %167 = load i32, i32* @MAX_TX_SG_ENTRIES, align 4
  %168 = call i8* @cpu_to_be16(i32 %167)
  %169 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %172 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %171, i32 0, i32 0
  %173 = call i32 @atomic_inc(i32* %172)
  %174 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %175 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %174, %union.ibmvnic_crq* %3)
  %176 = load i32, i32* @RX_SG_SUPPORTED, align 4
  %177 = call i8* @cpu_to_be16(i32 %176)
  %178 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  %180 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %181 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %180, i32 0, i32 0
  %182 = call i32 @atomic_inc(i32* %181)
  %183 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %184 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %183, %union.ibmvnic_crq* %3)
  %185 = load i32, i32* @OPT_TX_COMP_SUB_QUEUES, align 4
  %186 = call i8* @cpu_to_be16(i32 %185)
  %187 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %190 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %189, i32 0, i32 0
  %191 = call i32 @atomic_inc(i32* %190)
  %192 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %193 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %192, %union.ibmvnic_crq* %3)
  %194 = load i32, i32* @OPT_RX_COMP_QUEUES, align 4
  %195 = call i8* @cpu_to_be16(i32 %194)
  %196 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  %198 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %199 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %198, i32 0, i32 0
  %200 = call i32 @atomic_inc(i32* %199)
  %201 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %202 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %201, %union.ibmvnic_crq* %3)
  %203 = load i32, i32* @OPT_RX_BUFADD_Q_PER_RX_COMP_Q, align 4
  %204 = call i8* @cpu_to_be16(i32 %203)
  %205 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  %207 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %208 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %207, i32 0, i32 0
  %209 = call i32 @atomic_inc(i32* %208)
  %210 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %211 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %210, %union.ibmvnic_crq* %3)
  %212 = load i32, i32* @OPT_TX_ENTRIES_PER_SUBCRQ, align 4
  %213 = call i8* @cpu_to_be16(i32 %212)
  %214 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %217 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %216, i32 0, i32 0
  %218 = call i32 @atomic_inc(i32* %217)
  %219 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %220 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %219, %union.ibmvnic_crq* %3)
  %221 = load i32, i32* @OPT_RXBA_ENTRIES_PER_SUBCRQ, align 4
  %222 = call i8* @cpu_to_be16(i32 %221)
  %223 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  store i8* %222, i8** %224, align 8
  %225 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %226 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %225, i32 0, i32 0
  %227 = call i32 @atomic_inc(i32* %226)
  %228 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %229 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %228, %union.ibmvnic_crq* %3)
  %230 = load i32, i32* @TX_RX_DESC_REQ, align 4
  %231 = call i8* @cpu_to_be16(i32 %230)
  %232 = bitcast %union.ibmvnic_crq* %3 to %struct.TYPE_2__*
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %235 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %234, i32 0, i32 0
  %236 = call i32 @atomic_inc(i32* %235)
  %237 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %238 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %237, %union.ibmvnic_crq* %3)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
