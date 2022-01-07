; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_mbx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_mbx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_7__, %struct.TYPE_6__*, i32, %struct.hclge_vport*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.hclge_cmq_ring }
%struct.hclge_cmq_ring = type { i64, %struct.hclge_desc* }
%struct.hclge_desc = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.hclge_vport = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32*, i64 }

@HCLGE_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"command queue needs re-initializing\0A\00", align 1
@HCLGE_CMDQ_RX_OUTVLD_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"dropped invalid mailbox message, code = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"PF fail(%d) to set VF promisc mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PF fail(%d) to set VF UC MAC Addr\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PF fail(%d) to set VF MC MAC Addr\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PF failed(%d) to config VF's VLAN\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"PF failed(%d) to set VF's ALIVE\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"PF failed(%d) to get Q info for VF\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"PF failed(%d) to get Q depth for VF\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"PF failed(%d) to get TC info for VF\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"PF fail(%d) to get link stat for VF\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"VF fail(%d) to set mtu\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"PF failed(%d) to get qid for VF\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"PF fail(%d) to get rss key for VF\0A\00", align 1
@HCLGE_MAC_ADDR_UC = common dso_local global i32 0, align 4
@HCLGE_MAC_ADDR_MC = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"PF fail(%d) to media type for VF\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"un-supported mailbox message, code = %d\0A\00", align 1
@HCLGE_NIC_CRQ_HEAD_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_mbx_handler(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_cmq_ring*, align 8
  %4 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hclge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.hclge_cmq_ring* %12, %struct.hclge_cmq_ring** %3, align 8
  br label %13

13:                                               ; preds = %334, %61, %1
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 0
  %16 = call i32 @hclge_cmd_crq_empty(%struct.TYPE_7__* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %345

19:                                               ; preds = %13
  %20 = load i32, i32* @HCLGE_STATE_CMD_DISABLE, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 4
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_warn(i32* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %353

31:                                               ; preds = %19
  %32 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %33 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %32, i32 0, i32 1
  %34 = load %struct.hclge_desc*, %struct.hclge_desc** %33, align 8
  %35 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %36 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %34, i64 %37
  store %struct.hclge_desc* %38, %struct.hclge_desc** %6, align 8
  %39 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %40 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.hclge_mbx_vf_to_pf_cmd*
  store %struct.hclge_mbx_vf_to_pf_cmd* %42, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %43 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %44 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %43, i32 0, i32 1
  %45 = load %struct.hclge_desc*, %struct.hclge_desc** %44, align 8
  %46 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %47 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %45, i64 %48
  %50 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @le16_to_cpu(i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @HCLGE_CMDQ_RX_OUTVLD_B, align 4
  %55 = call i32 @hnae3_get_bit(i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %31
  %62 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %63 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_warn(i32* %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %73 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %72, i32 0, i32 1
  %74 = load %struct.hclge_desc*, %struct.hclge_desc** %73, align 8
  %75 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %76 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %74, i64 %77
  %79 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %81 = call i32 @hclge_mbx_ring_ptr_move_crq(%struct.hclge_cmq_ring* %80)
  br label %13

82:                                               ; preds = %31
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %84 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %83, i32 0, i32 3
  %85 = load %struct.hclge_vport*, %struct.hclge_vport** %84, align 8
  %86 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %87 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %85, i64 %88
  store %struct.hclge_vport* %89, %struct.hclge_vport** %5, align 8
  %90 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %323 [
    i32 139, label %95
    i32 128, label %99
    i32 131, label %103
    i32 130, label %117
    i32 132, label %131
    i32 129, label %145
    i32 134, label %159
    i32 144, label %173
    i32 146, label %187
    i32 142, label %201
    i32 148, label %215
    i32 136, label %229
    i32 135, label %233
    i32 140, label %237
    i32 133, label %241
    i32 145, label %255
    i32 143, label %269
    i32 149, label %283
    i32 141, label %287
    i32 147, label %302
    i32 137, label %316
    i32 138, label %320
  ]

95:                                               ; preds = %82
  %96 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %97 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %98 = call i32 @hclge_map_unmap_ring_to_vf_vector(%struct.hclge_vport* %96, i32 1, %struct.hclge_mbx_vf_to_pf_cmd* %97)
  store i32 %98, i32* %8, align 4
  br label %334

99:                                               ; preds = %82
  %100 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %101 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %102 = call i32 @hclge_map_unmap_ring_to_vf_vector(%struct.hclge_vport* %100, i32 0, %struct.hclge_mbx_vf_to_pf_cmd* %101)
  store i32 %102, i32* %8, align 4
  br label %334

103:                                              ; preds = %82
  %104 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %105 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %106 = call i32 @hclge_set_vf_promisc_mode(%struct.hclge_vport* %104, %struct.hclge_mbx_vf_to_pf_cmd* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %111 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %109, %103
  br label %334

117:                                              ; preds = %82
  %118 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %119 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %120 = call i32 @hclge_set_vf_uc_mac_addr(%struct.hclge_vport* %118, %struct.hclge_mbx_vf_to_pf_cmd* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %125 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %123, %117
  br label %334

131:                                              ; preds = %82
  %132 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %133 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %134 = call i32 @hclge_set_vf_mc_mac_addr(%struct.hclge_vport* %132, %struct.hclge_mbx_vf_to_pf_cmd* %133, i32 0)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %139 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %137, %131
  br label %334

145:                                              ; preds = %82
  %146 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %147 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %148 = call i32 @hclge_set_vf_vlan_cfg(%struct.hclge_vport* %146, %struct.hclge_mbx_vf_to_pf_cmd* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %153 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %151, %145
  br label %334

159:                                              ; preds = %82
  %160 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %161 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %162 = call i32 @hclge_set_vf_alive(%struct.hclge_vport* %160, %struct.hclge_mbx_vf_to_pf_cmd* %161, i32 0)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %167 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @dev_err(i32* %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %165, %159
  br label %334

173:                                              ; preds = %82
  %174 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %175 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %176 = call i32 @hclge_get_vf_queue_info(%struct.hclge_vport* %174, %struct.hclge_mbx_vf_to_pf_cmd* %175, i32 1)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %181 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @dev_err(i32* %183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %179, %173
  br label %334

187:                                              ; preds = %82
  %188 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %189 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %190 = call i32 @hclge_get_vf_queue_depth(%struct.hclge_vport* %188, %struct.hclge_mbx_vf_to_pf_cmd* %189, i32 1)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %187
  %194 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %195 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %194, i32 0, i32 1
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @dev_err(i32* %197, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %193, %187
  br label %334

201:                                              ; preds = %82
  %202 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %203 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %204 = call i32 @hclge_get_vf_tcinfo(%struct.hclge_vport* %202, %struct.hclge_mbx_vf_to_pf_cmd* %203, i32 1)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %201
  %208 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %209 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %208, i32 0, i32 1
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %8, align 4
  %213 = call i32 @dev_err(i32* %211, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %207, %201
  br label %334

215:                                              ; preds = %82
  %216 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %217 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %218 = call i32 @hclge_get_link_info(%struct.hclge_vport* %216, %struct.hclge_mbx_vf_to_pf_cmd* %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %215
  %222 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %223 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %222, i32 0, i32 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @dev_err(i32* %225, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %221, %215
  br label %334

229:                                              ; preds = %82
  %230 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %231 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %232 = call i32 @hclge_mbx_reset_vf_queue(%struct.hclge_vport* %230, %struct.hclge_mbx_vf_to_pf_cmd* %231)
  br label %334

233:                                              ; preds = %82
  %234 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %235 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %236 = call i32 @hclge_reset_vf(%struct.hclge_vport* %234, %struct.hclge_mbx_vf_to_pf_cmd* %235)
  br label %334

237:                                              ; preds = %82
  %238 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %239 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %240 = call i32 @hclge_vf_keep_alive(%struct.hclge_vport* %238, %struct.hclge_mbx_vf_to_pf_cmd* %239)
  br label %334

241:                                              ; preds = %82
  %242 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %243 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %244 = call i32 @hclge_set_vf_mtu(%struct.hclge_vport* %242, %struct.hclge_mbx_vf_to_pf_cmd* %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %241
  %248 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %249 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %248, i32 0, i32 1
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @dev_err(i32* %251, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %247, %241
  br label %334

255:                                              ; preds = %82
  %256 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %257 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %258 = call i32 @hclge_get_queue_id_in_pf(%struct.hclge_vport* %256, %struct.hclge_mbx_vf_to_pf_cmd* %257)
  store i32 %258, i32* %8, align 4
  %259 = load i32, i32* %8, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %255
  %262 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %263 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %262, i32 0, i32 1
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @dev_err(i32* %265, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %261, %255
  br label %334

269:                                              ; preds = %82
  %270 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %271 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %272 = call i32 @hclge_get_rss_key(%struct.hclge_vport* %270, %struct.hclge_mbx_vf_to_pf_cmd* %271)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %269
  %276 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %277 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %276, i32 0, i32 1
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @dev_err(i32* %279, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %275, %269
  br label %334

283:                                              ; preds = %82
  %284 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %285 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %286 = call i32 @hclge_get_link_mode(%struct.hclge_vport* %284, %struct.hclge_mbx_vf_to_pf_cmd* %285)
  br label %334

287:                                              ; preds = %82
  %288 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %289 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %288, i32 0, i32 2
  %290 = call i32 @mutex_lock(i32* %289)
  %291 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %292 = load i32, i32* @HCLGE_MAC_ADDR_UC, align 4
  %293 = call i32 @hclge_rm_vport_all_mac_table(%struct.hclge_vport* %291, i32 1, i32 %292)
  %294 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %295 = load i32, i32* @HCLGE_MAC_ADDR_MC, align 4
  %296 = call i32 @hclge_rm_vport_all_mac_table(%struct.hclge_vport* %294, i32 1, i32 %295)
  %297 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %298 = call i32 @hclge_rm_vport_all_vlan_table(%struct.hclge_vport* %297, i32 1)
  %299 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %300 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %299, i32 0, i32 2
  %301 = call i32 @mutex_unlock(i32* %300)
  br label %334

302:                                              ; preds = %82
  %303 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %304 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %305 = call i32 @hclge_get_vf_media_type(%struct.hclge_vport* %303, %struct.hclge_mbx_vf_to_pf_cmd* %304)
  store i32 %305, i32* %8, align 4
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %302
  %309 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %310 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %309, i32 0, i32 1
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %8, align 4
  %314 = call i32 @dev_err(i32* %312, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %308, %302
  br label %334

316:                                              ; preds = %82
  %317 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %318 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %319 = call i32 @hclge_handle_link_change_event(%struct.hclge_dev* %317, %struct.hclge_mbx_vf_to_pf_cmd* %318)
  br label %334

320:                                              ; preds = %82
  %321 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %322 = call i32 @hclge_handle_ncsi_error(%struct.hclge_dev* %321)
  br label %334

323:                                              ; preds = %82
  %324 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %325 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %324, i32 0, i32 1
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %329 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @dev_err(i32* %327, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %323, %320, %316, %315, %287, %283, %282, %268, %254, %237, %233, %229, %228, %214, %200, %186, %172, %158, %144, %130, %116, %99, %95
  %335 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %336 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %335, i32 0, i32 1
  %337 = load %struct.hclge_desc*, %struct.hclge_desc** %336, align 8
  %338 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %339 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %337, i64 %340
  %342 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %341, i32 0, i32 0
  store i64 0, i64* %342, align 8
  %343 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %344 = call i32 @hclge_mbx_ring_ptr_move_crq(%struct.hclge_cmq_ring* %343)
  br label %13

345:                                              ; preds = %13
  %346 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %347 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %346, i32 0, i32 0
  %348 = load i32, i32* @HCLGE_NIC_CRQ_HEAD_REG, align 4
  %349 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %3, align 8
  %350 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = call i32 @hclge_write_dev(%struct.TYPE_7__* %347, i32 %348, i64 %351)
  br label %353

353:                                              ; preds = %345, %25
  ret void
}

declare dso_local i32 @hclge_cmd_crq_empty(%struct.TYPE_7__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hnae3_get_bit(i32, i32) #1

declare dso_local i32 @hclge_mbx_ring_ptr_move_crq(%struct.hclge_cmq_ring*) #1

declare dso_local i32 @hclge_map_unmap_ring_to_vf_vector(%struct.hclge_vport*, i32, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_set_vf_promisc_mode(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_set_vf_uc_mac_addr(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_set_vf_mc_mac_addr(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32) #1

declare dso_local i32 @hclge_set_vf_vlan_cfg(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_set_vf_alive(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32) #1

declare dso_local i32 @hclge_get_vf_queue_info(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32) #1

declare dso_local i32 @hclge_get_vf_queue_depth(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32) #1

declare dso_local i32 @hclge_get_vf_tcinfo(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32) #1

declare dso_local i32 @hclge_get_link_info(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_mbx_reset_vf_queue(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_reset_vf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_vf_keep_alive(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_set_vf_mtu(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_get_queue_id_in_pf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_get_rss_key(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_get_link_mode(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hclge_rm_vport_all_mac_table(%struct.hclge_vport*, i32, i32) #1

declare dso_local i32 @hclge_rm_vport_all_vlan_table(%struct.hclge_vport*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hclge_get_vf_media_type(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_handle_link_change_event(%struct.hclge_dev*, %struct.hclge_mbx_vf_to_pf_cmd*) #1

declare dso_local i32 @hclge_handle_ncsi_error(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_write_dev(%struct.TYPE_7__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
