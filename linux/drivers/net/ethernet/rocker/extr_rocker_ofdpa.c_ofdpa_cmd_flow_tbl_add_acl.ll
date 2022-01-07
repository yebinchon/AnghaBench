; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_cmd_flow_tbl_add_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_desc_info = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@ROCKER_TLV_OF_DPA_IN_PPORT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IN_PPORT_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_SRC_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_SRC_MAC_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_DST_MAC = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_DST_MAC_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_ETHERTYPE = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_VLAN_ID = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_VLAN_ID_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IP_PROTO = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IP_PROTO_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IP_DSCP = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IP_DSCP_MASK = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IP_ECN = common dso_local global i32 0, align 4
@ROCKER_TLV_OF_DPA_IP_ECN_MASK = common dso_local global i32 0, align 4
@ROCKER_GROUP_NONE = common dso_local global i64 0, align 8
@ROCKER_TLV_OF_DPA_GROUP_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_desc_info*, %struct.ofdpa_flow_tbl_entry*)* @ofdpa_cmd_flow_tbl_add_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_cmd_flow_tbl_add_acl(%struct.rocker_desc_info* %0, %struct.ofdpa_flow_tbl_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker_desc_info*, align 8
  %5 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  store %struct.rocker_desc_info* %0, %struct.rocker_desc_info** %4, align 8
  store %struct.ofdpa_flow_tbl_entry* %1, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %6 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %7 = load i32, i32* @ROCKER_TLV_OF_DPA_IN_PPORT, align 4
  %8 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %9 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %6, i32 %7, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %240

18:                                               ; preds = %2
  %19 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %20 = load i32, i32* @ROCKER_TLV_OF_DPA_IN_PPORT_MASK, align 4
  %21 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %22 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %19, i32 %20, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %240

31:                                               ; preds = %18
  %32 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %33 = load i32, i32* @ROCKER_TLV_OF_DPA_SRC_MAC, align 4
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %32, i32 %33, i32 %34, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %240

45:                                               ; preds = %31
  %46 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %47 = load i32, i32* @ROCKER_TLV_OF_DPA_SRC_MAC_MASK, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %50 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %46, i32 %47, i32 %48, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %240

59:                                               ; preds = %45
  %60 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %61 = load i32, i32* @ROCKER_TLV_OF_DPA_DST_MAC, align 4
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %64 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 11
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %60, i32 %61, i32 %62, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i32, i32* @EMSGSIZE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %240

73:                                               ; preds = %59
  %74 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %75 = load i32, i32* @ROCKER_TLV_OF_DPA_DST_MAC_MASK, align 4
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %78 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @rocker_tlv_put(%struct.rocker_desc_info* %74, i32 %75, i32 %76, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %240

87:                                               ; preds = %73
  %88 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %89 = load i32, i32* @ROCKER_TLV_OF_DPA_ETHERTYPE, align 4
  %90 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %91 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %88, i32 %89, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @EMSGSIZE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %240

100:                                              ; preds = %87
  %101 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %102 = load i32, i32* @ROCKER_TLV_OF_DPA_VLAN_ID, align 4
  %103 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %104 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %101, i32 %102, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* @EMSGSIZE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %240

113:                                              ; preds = %100
  %114 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %115 = load i32, i32* @ROCKER_TLV_OF_DPA_VLAN_ID_MASK, align 4
  %116 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %117 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @rocker_tlv_put_be16(%struct.rocker_desc_info* %114, i32 %115, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i32, i32* @EMSGSIZE, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %240

126:                                              ; preds = %113
  %127 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %128 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ntohs(i32 %131)
  switch i32 %132, label %218 [
    i32 129, label %133
    i32 128, label %133
  ]

133:                                              ; preds = %126, %126
  %134 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %135 = load i32, i32* @ROCKER_TLV_OF_DPA_IP_PROTO, align 4
  %136 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %137 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @rocker_tlv_put_u8(%struct.rocker_desc_info* %134, i32 %135, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %133
  %144 = load i32, i32* @EMSGSIZE, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %240

146:                                              ; preds = %133
  %147 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %148 = load i32, i32* @ROCKER_TLV_OF_DPA_IP_PROTO_MASK, align 4
  %149 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %150 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @rocker_tlv_put_u8(%struct.rocker_desc_info* %147, i32 %148, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* @EMSGSIZE, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %240

159:                                              ; preds = %146
  %160 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %161 = load i32, i32* @ROCKER_TLV_OF_DPA_IP_DSCP, align 4
  %162 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %163 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, 63
  %168 = call i32 @rocker_tlv_put_u8(%struct.rocker_desc_info* %160, i32 %161, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %159
  %171 = load i32, i32* @EMSGSIZE, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %240

173:                                              ; preds = %159
  %174 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %175 = load i32, i32* @ROCKER_TLV_OF_DPA_IP_DSCP_MASK, align 4
  %176 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %177 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 63
  %182 = call i32 @rocker_tlv_put_u8(%struct.rocker_desc_info* %174, i32 %175, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %173
  %185 = load i32, i32* @EMSGSIZE, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %240

187:                                              ; preds = %173
  %188 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %189 = load i32, i32* @ROCKER_TLV_OF_DPA_IP_ECN, align 4
  %190 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %191 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 192
  %196 = ashr i32 %195, 6
  %197 = call i32 @rocker_tlv_put_u8(%struct.rocker_desc_info* %188, i32 %189, i32 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %187
  %200 = load i32, i32* @EMSGSIZE, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %240

202:                                              ; preds = %187
  %203 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %204 = load i32, i32* @ROCKER_TLV_OF_DPA_IP_ECN_MASK, align 4
  %205 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %206 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 192
  %211 = ashr i32 %210, 6
  %212 = call i32 @rocker_tlv_put_u8(%struct.rocker_desc_info* %203, i32 %204, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %202
  %215 = load i32, i32* @EMSGSIZE, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %240

217:                                              ; preds = %202
  br label %218

218:                                              ; preds = %126, %217
  %219 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %220 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 6
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @ROCKER_GROUP_NONE, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %239

226:                                              ; preds = %218
  %227 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %4, align 8
  %228 = load i32, i32* @ROCKER_TLV_OF_DPA_GROUP_ID, align 4
  %229 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %5, align 8
  %230 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @rocker_tlv_put_u32(%struct.rocker_desc_info* %227, i32 %228, i64 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %226
  %237 = load i32, i32* @EMSGSIZE, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %3, align 4
  br label %240

239:                                              ; preds = %226, %218
  store i32 0, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %236, %214, %199, %184, %170, %156, %143, %123, %110, %97, %84, %70, %56, %42, %28, %15
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i64 @rocker_tlv_put_u32(%struct.rocker_desc_info*, i32, i64) #1

declare dso_local i64 @rocker_tlv_put(%struct.rocker_desc_info*, i32, i32, i32) #1

declare dso_local i64 @rocker_tlv_put_be16(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rocker_tlv_put_u8(%struct.rocker_desc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
