; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_recv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.ibmvmc_hmc = type { i64, i64, i64*, i64, i32, %struct.ibmvmc_buffer* }
%struct.ibmvmc_buffer = type { i64, i64, i64, i64, i32, i32 }
%struct.crq_server_adapter = type { i32, i32, i32 }
%struct.ibmvmc_crq_msg = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Recv_msg: msg from HV 0x%016llx 0x%016llx\0A\00", align 1
@ibmvmc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Recv_msg: invalid hmc_index = 0x%x\0A\00", align 1
@VMC_MSG_INVALID_HMC_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Recv_msg: invalid buffer_id = 0x%x\0A\00", align 1
@VMC_MSG_INVALID_BUFFER_ID = common dso_local global i32 0, align 4
@hmcs = common dso_local global %struct.ibmvmc_hmc* null, align 8
@ibmhmc_state_free = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Recv_msg: invalid hmc state = 0x%x\0A\00", align 1
@VMC_BUF_OWNER_ALPHA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Recv_msg: not valid, or not HV.  0x%x 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Recv_msg: msg_len = 0x%x, buffer_id = 0x%x, queue_head = 0x%x, hmc_idx = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Failure in recv_msg: h_copy_rdma = 0x%x\0A\00", align 1
@ibmvmc_max_buf_pool_size = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"outbound buffer queue wrapped.\0A\00", align 1
@ibmvmc_read_wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*)* @ibmvmc_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_recv_msg(%struct.crq_server_adapter* %0, %struct.ibmvmc_crq_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crq_server_adapter*, align 8
  %5 = alloca %struct.ibmvmc_crq_msg*, align 8
  %6 = alloca %struct.ibmvmc_buffer*, align 8
  %7 = alloca %struct.ibmvmc_hmc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %4, align 8
  store %struct.ibmvmc_crq_msg* %1, %struct.ibmvmc_crq_msg** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %15 = icmp ne %struct.ibmvmc_crq_msg* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %223

17:                                               ; preds = %2
  %18 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %22 = bitcast %struct.ibmvmc_crq_msg* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @be64_to_cpu(i64 %23)
  %25 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %26 = bitcast %struct.ibmvmc_crq_msg* %25 to i64*
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @be64_to_cpu(i64 %28)
  %30 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %35 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be16_to_cpu(i32 %40)
  store i64 %41, i64* %11, align 8
  %42 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %5, align 8
  %43 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @be32_to_cpu(i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ibmvmc, i32 0, i32 0), align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %17
  %51 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %57 = load i32, i32* @VMC_MSG_INVALID_HMC_INDEX, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @ibmvmc_send_add_buffer_resp(%struct.crq_server_adapter* %56, i32 %57, i64 %58, i64 %59, i64 %60)
  store i32 -1, i32* %3, align 4
  br label %223

62:                                               ; preds = %17
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ibmvmc, i32 0, i32 1), align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %73 = load i32, i32* @VMC_MSG_INVALID_BUFFER_ID, align 4
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @ibmvmc_send_add_buffer_resp(%struct.crq_server_adapter* %72, i32 %73, i64 %74, i64 %75, i64 %76)
  store i32 -1, i32* %3, align 4
  br label %223

78:                                               ; preds = %62
  %79 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** @hmcs, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %79, i64 %80
  store %struct.ibmvmc_hmc* %81, %struct.ibmvmc_hmc** %7, align 8
  %82 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %83 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %82, i32 0, i32 4
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %87 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ibmhmc_state_free, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %78
  %92 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %96 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %97)
  %99 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %100 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %99, i32 0, i32 4
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  store i32 -1, i32* %3, align 4
  br label %223

103:                                              ; preds = %78
  %104 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %105 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %104, i32 0, i32 5
  %106 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %106, i64 %107
  store %struct.ibmvmc_buffer* %108, %struct.ibmvmc_buffer** %6, align 8
  %109 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %110 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %103
  %114 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %115 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VMC_BUF_OWNER_ALPHA, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %113, %103
  %120 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %124 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %127 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %125, i64 %128)
  %130 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %131 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %130, i32 0, i32 4
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  store i32 -1, i32* %3, align 4
  br label %223

134:                                              ; preds = %113
  %135 = load i64, i64* %8, align 8
  %136 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %137 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %140 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %143 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %146 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @h_copy_rdma(i64 %135, i32 %138, i32 %141, i32 %144, i32 %147)
  store i32 %148, i32* %13, align 4
  %149 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %150 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %8, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i64, i64* %11, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %157 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i64, i64* %9, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %151, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %153, i32 %155, i32 %159, i32 %161)
  %163 = load i64, i64* %8, align 8
  %164 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %165 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  %166 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %167 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load i64, i64* @VMC_BUF_OWNER_ALPHA, align 8
  %169 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %170 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %134
  %174 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %175 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 (i32, i8*, ...) @dev_err(i32 %176, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %177)
  %179 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %180 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %179, i32 0, i32 4
  %181 = load i64, i64* %12, align 8
  %182 = call i32 @spin_unlock_irqrestore(i32* %180, i64 %181)
  store i32 -1, i32* %3, align 4
  br label %223

183:                                              ; preds = %134
  %184 = load i64, i64* %11, align 8
  %185 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %186 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %189 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i64, i64* %187, i64 %190
  store i64 %184, i64* %191, align 8
  %192 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %193 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %193, align 8
  %196 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %197 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @ibmvmc_max_buf_pool_size, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %183
  %202 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %203 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %202, i32 0, i32 1
  store i64 0, i64* %203, align 8
  br label %204

204:                                              ; preds = %201, %183
  %205 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %206 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %209 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %207, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %214 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 (i32, i8*, ...) @dev_err(i32 %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %217

217:                                              ; preds = %212, %204
  %218 = load %struct.ibmvmc_hmc*, %struct.ibmvmc_hmc** %7, align 8
  %219 = getelementptr inbounds %struct.ibmvmc_hmc, %struct.ibmvmc_hmc* %218, i32 0, i32 4
  %220 = load i64, i64* %12, align 8
  %221 = call i32 @spin_unlock_irqrestore(i32* %219, i64 %220)
  %222 = call i32 @wake_up_interruptible(i32* @ibmvmc_read_wait)
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %217, %173, %119, %91, %66, %50, %16
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @be64_to_cpu(i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ibmvmc_send_add_buffer_resp(%struct.crq_server_adapter*, i32, i64, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @h_copy_rdma(i64, i32, i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
