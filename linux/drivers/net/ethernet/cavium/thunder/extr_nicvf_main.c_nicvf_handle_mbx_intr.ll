; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_handle_mbx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_handle_mbx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.nicvf = type { i32, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_24__, %struct.nicvf*, %struct.nicvf**, i32, i32, i32, i32, %struct.TYPE_19__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%union.nic_mbx = type { %struct.TYPE_23__, [8 x i8] }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }

@__const.nicvf_handle_mbx_intr.mbx = private unnamed_addr constant { %struct.TYPE_26__, [20 x i8] } { %struct.TYPE_26__ zeroinitializer, [20 x i8] undef }, align 8
@NIC_VF_PF_MAILBOX_0_1 = common dso_local global i32 0, align 4
@NIC_PF_VF_MAILBOX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Mbox message: msg: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Link is Up %d Mbps %s duplex\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Link is Down\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid message from PF, msg 0x%x\0A\00", align 1
@NICVF_INTR_MBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_handle_mbx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_handle_mbx_intr(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %union.nic_mbx, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %7 = bitcast %union.nic_mbx* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast ({ %struct.TYPE_26__, [20 x i8] }* @__const.nicvf_handle_mbx_intr.mbx to i8*), i64 24, i1 false)
  %8 = load i32, i32* @NIC_VF_PF_MAILBOX_0_1, align 4
  store i32 %8, i32* %5, align 4
  %9 = bitcast %union.nic_mbx* %3 to i32*
  store i32* %9, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NIC_PF_VF_MAILBOX_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @nicvf_reg_read(%struct.nicvf* %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %30 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %29, i32 0, i32 5
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = bitcast %union.nic_mbx* %3 to %struct.TYPE_26__*
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netdev_dbg(%struct.TYPE_17__* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = bitcast %union.nic_mbx* %3 to %struct.TYPE_26__*
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %236 [
    i32 130, label %39
    i32 137, label %90
    i32 133, label %93
    i32 129, label %96
    i32 134, label %105
    i32 135, label %111
    i32 136, label %184
    i32 128, label %192
    i32 131, label %206
    i32 132, label %215
  ]

39:                                               ; preds = %28
  %40 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %41 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = bitcast %union.nic_mbx* %3 to %struct.TYPE_18__*
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 127
  %46 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %47 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = bitcast %union.nic_mbx* %3 to %struct.TYPE_18__*
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 127
  %52 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %53 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = bitcast %union.nic_mbx* %3 to %struct.TYPE_18__*
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %58 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %57, i32 0, i32 17
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %60 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %59, i32 0, i32 16
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %39
  %64 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %65 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %64, i32 0, i32 5
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %union.nic_mbx* %3 to %struct.TYPE_18__*
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ether_addr_copy(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %63, %39
  %74 = bitcast %union.nic_mbx* %3 to %struct.TYPE_18__*
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %78 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %77, i32 0, i32 15
  store i32 %76, i32* %78, align 8
  %79 = bitcast %union.nic_mbx* %3 to %struct.TYPE_18__*
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %83 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %82, i32 0, i32 14
  store i32 %81, i32* %83, align 4
  %84 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %85 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %84, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %87 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %86, i32 0, i32 10
  store i32 0, i32* %87, align 4
  %88 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %89 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %88, i32 0, i32 11
  store i32 0, i32* %89, align 8
  br label %244

90:                                               ; preds = %28
  %91 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %92 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %244

93:                                               ; preds = %28
  %94 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %95 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %94, i32 0, i32 4
  store i32 1, i32* %95, align 8
  br label %244

96:                                               ; preds = %28
  %97 = bitcast %union.nic_mbx* %3 to %struct.TYPE_20__*
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %101 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %100, i32 0, i32 13
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %104 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %244

105:                                              ; preds = %28
  %106 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %107 = bitcast %union.nic_mbx* %3 to i32*
  %108 = call i32 @nicvf_read_bgx_stats(%struct.nicvf* %106, i32* %107)
  %109 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %110 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %244

111:                                              ; preds = %28
  %112 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %113 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %115 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = bitcast %union.nic_mbx* %3 to %struct.TYPE_21__*
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %183

121:                                              ; preds = %111
  %122 = bitcast %union.nic_mbx* %3 to %struct.TYPE_21__*
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %126 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = bitcast %union.nic_mbx* %3 to %struct.TYPE_21__*
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %131 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %130, i32 0, i32 10
  store i32 %129, i32* %131, align 4
  %132 = bitcast %union.nic_mbx* %3 to %struct.TYPE_21__*
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %136 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %135, i32 0, i32 11
  store i32 %134, i32* %136, align 8
  %137 = bitcast %union.nic_mbx* %3 to %struct.TYPE_21__*
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %141 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %140, i32 0, i32 12
  store i32 %139, i32* %141, align 4
  %142 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %143 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %121
  %147 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %148 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %147, i32 0, i32 5
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %151 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %154 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @DUPLEX_FULL, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %160 = call i32 (%struct.TYPE_17__*, i8*, ...) @netdev_info(%struct.TYPE_17__* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %152, i8* %159)
  %161 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %162 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %161, i32 0, i32 5
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  %164 = call i32 @netif_carrier_on(%struct.TYPE_17__* %163)
  %165 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %166 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %165, i32 0, i32 5
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = call i32 @netif_tx_start_all_queues(%struct.TYPE_17__* %167)
  br label %182

169:                                              ; preds = %121
  %170 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %171 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %170, i32 0, i32 5
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = call i32 (%struct.TYPE_17__*, i8*, ...) @netdev_info(%struct.TYPE_17__* %172, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %174 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %175 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %174, i32 0, i32 5
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = call i32 @netif_carrier_off(%struct.TYPE_17__* %176)
  %178 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %179 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %178, i32 0, i32 5
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = call i32 @netif_tx_stop_all_queues(%struct.TYPE_17__* %180)
  br label %182

182:                                              ; preds = %169, %146
  br label %183

183:                                              ; preds = %182, %111
  br label %244

184:                                              ; preds = %28
  %185 = bitcast %union.nic_mbx* %3 to %struct.TYPE_22__*
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %189 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 8
  %190 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %191 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  br label %244

192:                                              ; preds = %28
  %193 = bitcast %union.nic_mbx* %3 to %struct.TYPE_23__*
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to %struct.nicvf*
  %197 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %198 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %197, i32 0, i32 8
  %199 = load %struct.nicvf**, %struct.nicvf*** %198, align 8
  %200 = bitcast %union.nic_mbx* %3 to %struct.TYPE_23__*
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.nicvf*, %struct.nicvf** %199, i64 %202
  store %struct.nicvf* %196, %struct.nicvf** %203, align 8
  %204 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %205 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  br label %244

206:                                              ; preds = %28
  %207 = bitcast %union.nic_mbx* %3 to %struct.TYPE_23__*
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.nicvf*
  %211 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %212 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %211, i32 0, i32 7
  store %struct.nicvf* %210, %struct.nicvf** %212, align 8
  %213 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %214 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  br label %244

215:                                              ; preds = %28
  %216 = bitcast %union.nic_mbx* %3 to %struct.TYPE_25__*
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %220 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %219, i32 0, i32 6
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 2
  store i32 %218, i32* %221, align 8
  %222 = bitcast %union.nic_mbx* %3 to %struct.TYPE_25__*
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %226 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  %228 = bitcast %union.nic_mbx* %3 to %struct.TYPE_25__*
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %232 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %235 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  br label %244

236:                                              ; preds = %28
  %237 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %238 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %237, i32 0, i32 5
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %238, align 8
  %240 = bitcast %union.nic_mbx* %3 to %struct.TYPE_26__*
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @netdev_err(%struct.TYPE_17__* %239, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %236, %215, %206, %192, %184, %183, %105, %96, %93, %90, %73
  %245 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %246 = load i32, i32* @NICVF_INTR_MBOX, align 4
  %247 = call i32 @nicvf_clear_intr(%struct.nicvf* %245, i32 %246, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nicvf_reg_read(%struct.nicvf*, i32) #2

declare dso_local i32 @netdev_dbg(%struct.TYPE_17__*, i8*, i32) #2

declare dso_local i32 @ether_addr_copy(i32, i32) #2

declare dso_local i32 @nicvf_read_bgx_stats(%struct.nicvf*, i32*) #2

declare dso_local i32 @netdev_info(%struct.TYPE_17__*, i8*, ...) #2

declare dso_local i32 @netif_carrier_on(%struct.TYPE_17__*) #2

declare dso_local i32 @netif_tx_start_all_queues(%struct.TYPE_17__*) #2

declare dso_local i32 @netif_carrier_off(%struct.TYPE_17__*) #2

declare dso_local i32 @netif_tx_stop_all_queues(%struct.TYPE_17__*) #2

declare dso_local i32 @netdev_err(%struct.TYPE_17__*, i8*, i32) #2

declare dso_local i32 @nicvf_clear_intr(%struct.nicvf*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
