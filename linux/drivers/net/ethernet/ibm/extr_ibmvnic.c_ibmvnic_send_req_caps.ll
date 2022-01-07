; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_send_req_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_send_req_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%union.ibmvnic_crq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Fatal, invalid entries per sub-crq\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@IBMVNIC_MAX_LTB_SIZE = common dso_local global i32 0, align 4
@IBMVNIC_BUFFER_HLEN = common dso_local global i32 0, align 4
@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@REQUEST_CAPABILITY = common dso_local global i32 0, align 4
@REQ_TX_QUEUES = common dso_local global i32 0, align 4
@REQ_RX_QUEUES = common dso_local global i32 0, align 4
@REQ_RX_ADD_QUEUES = common dso_local global i32 0, align 4
@REQ_TX_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@REQ_RX_ADD_ENTRIES_PER_SUBCRQ = common dso_local global i32 0, align 4
@REQ_MTU = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PROMISC_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*, i32)* @ibmvnic_send_req_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvnic_send_req_caps(%struct.ibmvnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %union.ibmvnic_crq, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 17
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %209, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = mul nsw i32 4, %16
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %15
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %347

35:                                               ; preds = %26
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %36, i32 0, i32 16
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %42, i32 0, i32 16
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %58

48:                                               ; preds = %35
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 15
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_HLEN, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %59, i32 0, i32 16
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %68, i32 0, i32 16
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %58
  %72 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %72, i32 0, i32 16
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %81, i32 0, i32 16
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %77, %71
  %85 = load i32, i32* @IBMVNIC_MAX_LTB_SIZE, align 4
  %86 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IBMVNIC_BUFFER_HLEN, align 4
  %90 = add nsw i32 %88, %89
  %91 = sdiv i32 %85, %90
  store i32 %91, i32* %7, align 4
  %92 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IBMVNIC_BUFFER_HLEN, align 4
  %96 = add nsw i32 %94, %95
  %97 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %97, i32 0, i32 16
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %96, %100
  %102 = load i32, i32* @IBMVNIC_MAX_LTB_SIZE, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %106, i32 0, i32 16
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %84
  %110 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IBMVNIC_BUFFER_HLEN, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %115, i32 0, i32 16
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %114, %118
  %120 = load i32, i32* @IBMVNIC_MAX_LTB_SIZE, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %124, i32 0, i32 16
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  br label %127

127:                                              ; preds = %122, %109
  %128 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %128, i32 0, i32 16
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %134, i32 0, i32 16
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  br label %146

140:                                              ; preds = %127
  %141 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %133
  %147 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %147, i32 0, i32 16
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %153, i32 0, i32 16
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  br label %165

159:                                              ; preds = %146
  %160 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %164 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %152
  %166 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %167 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %166, i32 0, i32 16
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %172, i32 0, i32 16
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %177 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  br label %184

178:                                              ; preds = %165
  %179 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %183 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %178, %171
  %185 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %186 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %185, i32 0, i32 16
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %191, i32 0, i32 16
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 4
  br label %203

197:                                              ; preds = %184
  %198 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %199 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %202 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %197, %190
  %204 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %205 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %204, i32 0, i32 12
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %208 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %207, i32 0, i32 11
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %203, %2
  %210 = call i32 @memset(%union.ibmvnic_crq* %6, i32 0, i32 24)
  %211 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %212 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* @REQUEST_CAPABILITY, align 4
  %215 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* @REQ_TX_QUEUES, align 4
  %218 = call i8* @cpu_to_be16(i32 %217)
  %219 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  %221 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %222 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @cpu_to_be64(i32 %223)
  %225 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  %227 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %228 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %227, i32 0, i32 13
  %229 = call i32 @atomic_inc(i32* %228)
  %230 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %231 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %230, %union.ibmvnic_crq* %6)
  %232 = load i32, i32* @REQ_RX_QUEUES, align 4
  %233 = call i8* @cpu_to_be16(i32 %232)
  %234 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  %236 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %237 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @cpu_to_be64(i32 %238)
  %240 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  store i8* %239, i8** %241, align 8
  %242 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %243 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %242, i32 0, i32 13
  %244 = call i32 @atomic_inc(i32* %243)
  %245 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %246 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %245, %union.ibmvnic_crq* %6)
  %247 = load i32, i32* @REQ_RX_ADD_QUEUES, align 4
  %248 = call i8* @cpu_to_be16(i32 %247)
  %249 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %252 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %251, i32 0, i32 11
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @cpu_to_be64(i32 %253)
  %255 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i8* %254, i8** %256, align 8
  %257 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %258 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %257, i32 0, i32 13
  %259 = call i32 @atomic_inc(i32* %258)
  %260 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %261 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %260, %union.ibmvnic_crq* %6)
  %262 = load i32, i32* @REQ_TX_ENTRIES_PER_SUBCRQ, align 4
  %263 = call i8* @cpu_to_be16(i32 %262)
  %264 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  %266 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %267 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @cpu_to_be64(i32 %268)
  %270 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 0
  store i8* %269, i8** %271, align 8
  %272 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %273 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %272, i32 0, i32 13
  %274 = call i32 @atomic_inc(i32* %273)
  %275 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %276 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %275, %union.ibmvnic_crq* %6)
  %277 = load i32, i32* @REQ_RX_ADD_ENTRIES_PER_SUBCRQ, align 4
  %278 = call i8* @cpu_to_be16(i32 %277)
  %279 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  store i8* %278, i8** %280, align 8
  %281 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %282 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = call i8* @cpu_to_be64(i32 %283)
  %285 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  store i8* %284, i8** %286, align 8
  %287 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %288 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %287, i32 0, i32 13
  %289 = call i32 @atomic_inc(i32* %288)
  %290 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %291 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %290, %union.ibmvnic_crq* %6)
  %292 = load i32, i32* @REQ_MTU, align 4
  %293 = call i8* @cpu_to_be16(i32 %292)
  %294 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  %296 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %297 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i8* @cpu_to_be64(i32 %298)
  %300 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  store i8* %299, i8** %301, align 8
  %302 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %303 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %302, i32 0, i32 13
  %304 = call i32 @atomic_inc(i32* %303)
  %305 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %306 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %305, %union.ibmvnic_crq* %6)
  %307 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %308 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %307, i32 0, i32 15
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @IFF_PROMISC, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %334

315:                                              ; preds = %209
  %316 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %317 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %316, i32 0, i32 14
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %315
  %321 = load i32, i32* @PROMISC_REQUESTED, align 4
  %322 = call i8* @cpu_to_be16(i32 %321)
  %323 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  store i8* %322, i8** %324, align 8
  %325 = call i8* @cpu_to_be64(i32 1)
  %326 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  store i8* %325, i8** %327, align 8
  %328 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %329 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %328, i32 0, i32 13
  %330 = call i32 @atomic_inc(i32* %329)
  %331 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %332 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %331, %union.ibmvnic_crq* %6)
  br label %333

333:                                              ; preds = %320, %315
  br label %347

334:                                              ; preds = %209
  %335 = load i32, i32* @PROMISC_REQUESTED, align 4
  %336 = call i8* @cpu_to_be16(i32 %335)
  %337 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 1
  store i8* %336, i8** %338, align 8
  %339 = call i8* @cpu_to_be64(i32 0)
  %340 = bitcast %union.ibmvnic_crq* %6 to %struct.TYPE_8__*
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  store i8* %339, i8** %341, align 8
  %342 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %343 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %342, i32 0, i32 13
  %344 = call i32 @atomic_inc(i32* %343)
  %345 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %346 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %345, %union.ibmvnic_crq* %6)
  br label %347

347:                                              ; preds = %32, %334, %333
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
