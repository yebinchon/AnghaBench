; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_mbx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_mbx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_9__, i32, %struct.hclgevf_mbx_resp_status }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.hclgevf_cmq_ring }
%struct.hclgevf_cmq_ring = type { i64, %struct.hclgevf_desc* }
%struct.hclgevf_desc = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32** }
%struct.hclgevf_mbx_resp_status = type { i32, i32, i32, i32* }
%struct.hclge_mbx_pf_to_vf_cmd = type { i32* }

@HCLGEVF_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf crq need init\0A\00", align 1
@HCLGEVF_CMDQ_RX_OUTVLD_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"dropped invalid mailbox message, code = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"VF mbx resp flag not clear(%d)\0A\00", align 1
@HCLGE_MBX_MAX_RESP_DATA_SIZE = common dso_local global i32 0, align 4
@HCLGE_MBX_MAX_ARQ_MSG_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Async Q full, dropping msg(%d)\0A\00", align 1
@HCLGE_MBX_MAX_ARQ_MSG_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"VF received unsupported(%d) mbx msg from PF\0A\00", align 1
@HCLGEVF_NIC_CRQ_HEAD_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclgevf_mbx_handler(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  %3 = alloca %struct.hclgevf_mbx_resp_status*, align 8
  %4 = alloca %struct.hclge_mbx_pf_to_vf_cmd*, align 8
  %5 = alloca %struct.hclgevf_cmq_ring*, align 8
  %6 = alloca %struct.hclgevf_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 5
  store %struct.hclgevf_mbx_resp_status* %12, %struct.hclgevf_mbx_resp_status** %3, align 8
  %13 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.hclgevf_cmq_ring* %16, %struct.hclgevf_cmq_ring** %5, align 8
  br label %17

17:                                               ; preds = %219, %65, %1
  %18 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %18, i32 0, i32 1
  %20 = call i32 @hclgevf_cmd_crq_empty(%struct.TYPE_8__* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %230

23:                                               ; preds = %17
  %24 = load i32, i32* @HCLGEVF_STATE_CMD_DISABLE, align 4
  %25 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %26 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %25, i32 0, i32 4
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %31 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %238

35:                                               ; preds = %23
  %36 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %37 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %36, i32 0, i32 1
  %38 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %37, align 8
  %39 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %40 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %38, i64 %41
  store %struct.hclgevf_desc* %42, %struct.hclgevf_desc** %6, align 8
  %43 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %6, align 8
  %44 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.hclge_mbx_pf_to_vf_cmd*
  store %struct.hclge_mbx_pf_to_vf_cmd* %46, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %47 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %48 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %47, i32 0, i32 1
  %49 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %48, align 8
  %50 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %51 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %49, i64 %52
  %54 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @le16_to_cpu(i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @HCLGEVF_CMDQ_RX_OUTVLD_B, align 4
  %59 = call i32 @hnae3_get_bit(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %35
  %66 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %67 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %77 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %76, i32 0, i32 1
  %78 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %77, align 8
  %79 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %80 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %78, i64 %81
  %83 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %85 = call i32 @hclge_mbx_ring_ptr_move_crq(%struct.hclgevf_cmq_ring* %84)
  br label %17

86:                                               ; preds = %35
  %87 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %208 [
    i32 129, label %92
    i32 131, label %158
    i32 132, label %158
    i32 130, label %158
    i32 128, label %158
  ]

92:                                               ; preds = %86
  %93 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %3, align 8
  %94 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %99 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_warn(i32* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %97, %92
  %109 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %3, align 8
  %110 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 16
  %117 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %3, align 8
  %118 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %120 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %3, align 8
  %125 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %129 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %3, align 8
  %134 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %136 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  store i32* %138, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %154, %108
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @HCLGE_MBX_MAX_RESP_DATA_SIZE, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %3, align 8
  %147 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %9, align 8
  br label %154

154:                                              ; preds = %143
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %139

157:                                              ; preds = %139
  br label %219

158:                                              ; preds = %86, %86, %86, %86
  %159 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %160 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %162 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = call i32 @atomic_read(i32* %163)
  %165 = load i32, i32* @HCLGE_MBX_MAX_ARQ_MSG_NUM, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %169 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %168, i32 0, i32 2
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %173 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @dev_warn(i32* %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  br label %219

178:                                              ; preds = %158
  %179 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %180 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32**, i32*** %181, align 8
  %183 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %184 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32*, i32** %182, i64 %186
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %7, align 8
  %189 = load i32*, i32** %7, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %192 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* @HCLGE_MBX_MAX_ARQ_MSG_SIZE, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memcpy(i32* %190, i32* %193, i32 %197)
  %199 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %200 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %199, i32 0, i32 3
  %201 = call i32 @hclge_mbx_tail_ptr_move_arq(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %200)
  %202 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %203 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = call i32 @atomic_inc(i32* %204)
  %206 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %207 = call i32 @hclgevf_mbx_task_schedule(%struct.hclgevf_dev* %206)
  br label %219

208:                                              ; preds = %86
  %209 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %210 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %209, i32 0, i32 2
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %4, align 8
  %214 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @dev_err(i32* %212, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %208, %178, %167, %157
  %220 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %221 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %220, i32 0, i32 1
  %222 = load %struct.hclgevf_desc*, %struct.hclgevf_desc** %221, align 8
  %223 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %224 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %222, i64 %225
  %227 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %226, i32 0, i32 0
  store i64 0, i64* %227, align 8
  %228 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %229 = call i32 @hclge_mbx_ring_ptr_move_crq(%struct.hclgevf_cmq_ring* %228)
  br label %17

230:                                              ; preds = %17
  %231 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %232 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %231, i32 0, i32 1
  %233 = load i32, i32* @HCLGEVF_NIC_CRQ_HEAD_REG, align 4
  %234 = load %struct.hclgevf_cmq_ring*, %struct.hclgevf_cmq_ring** %5, align 8
  %235 = getelementptr inbounds %struct.hclgevf_cmq_ring, %struct.hclgevf_cmq_ring* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @hclgevf_write_dev(%struct.TYPE_8__* %232, i32 %233, i64 %236)
  br label %238

238:                                              ; preds = %230, %29
  ret void
}

declare dso_local i32 @hclgevf_cmd_crq_empty(%struct.TYPE_8__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hnae3_get_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @hclge_mbx_ring_ptr_move_crq(%struct.hclgevf_cmq_ring*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclge_mbx_tail_ptr_move_arq(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @hclgevf_mbx_task_schedule(%struct.hclgevf_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclgevf_write_dev(%struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
