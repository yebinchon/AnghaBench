; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_config_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_config_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i64, i32 }
%struct.mlxsw_config_profile = type { i32*, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64 }
%struct.mlxsw_res = type { i32 }

@KVD_SIZE = common dso_local global i32 0, align 4
@KVD_LINEAR_SIZE = common dso_local global i32 0, align 4
@KVD_SINGLE_SIZE = common dso_local global i32 0, align 4
@KVD_DOUBLE_SIZE = common dso_local global i32 0, align 4
@MLXSW_CONFIG_PROFILE_SWID_COUNT = common dso_local global i32 0, align 4
@MLXSW_PCI_CQE_V0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, i8*, %struct.mlxsw_config_profile*, %struct.mlxsw_res*)* @mlxsw_pci_config_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_config_profile(%struct.mlxsw_pci* %0, i8* %1, %struct.mlxsw_config_profile* %2, %struct.mlxsw_res* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_pci*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_config_profile*, align 8
  %9 = alloca %struct.mlxsw_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.mlxsw_config_profile* %2, %struct.mlxsw_config_profile** %8, align 8
  store %struct.mlxsw_res* %3, %struct.mlxsw_res** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @mlxsw_cmd_mbox_zero(i8* %12)
  %14 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %15 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %14, i32 0, i32 30
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_set(i8* %19, i32 1)
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %22, i32 0, i32 29
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlxsw_cmd_mbox_config_profile_max_vepa_channels_set(i8* %21, i32 %24)
  br label %26

26:                                               ; preds = %18, %4
  %27 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %27, i32 0, i32 28
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_mid_set(i8* %32, i32 1)
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %36 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %35, i32 0, i32 27
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mlxsw_cmd_mbox_config_profile_max_mid_set(i8* %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %41 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %40, i32 0, i32 26
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_pgt_set(i8* %45, i32 1)
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %49 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %48, i32 0, i32 25
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlxsw_cmd_mbox_config_profile_max_pgt_set(i8* %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %54 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %53, i32 0, i32 24
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_system_port_set(i8* %58, i32 1)
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %62 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %61, i32 0, i32 23
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mlxsw_cmd_mbox_config_profile_max_system_port_set(i8* %60, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %67 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %66, i32 0, i32 22
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_set(i8* %71, i32 1)
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %75 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %74, i32 0, i32 21
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @mlxsw_cmd_mbox_config_profile_max_vlan_groups_set(i8* %73, i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %80 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %79, i32 0, i32 20
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_regions_set(i8* %84, i32 1)
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %88 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %87, i32 0, i32 19
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mlxsw_cmd_mbox_config_profile_max_regions_set(i8* %86, i32 %89)
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %93 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %92, i32 0, i32 18
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @mlxsw_cmd_mbox_config_profile_set_flood_tables_set(i8* %97, i32 1)
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %101 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %100, i32 0, i32 17
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mlxsw_cmd_mbox_config_profile_max_flood_tables_set(i8* %99, i32 %102)
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %106 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @mlxsw_cmd_mbox_config_profile_max_vid_flood_tables_set(i8* %104, i32 %107)
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %111 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %110, i32 0, i32 15
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @mlxsw_cmd_mbox_config_profile_max_fid_offset_flood_tables_set(i8* %109, i32 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %116 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @mlxsw_cmd_mbox_config_profile_fid_offset_flood_table_size_set(i8* %114, i32 %117)
  %119 = load i8*, i8** %7, align 8
  %120 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %121 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %120, i32 0, i32 13
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mlxsw_cmd_mbox_config_profile_max_fid_flood_tables_set(i8* %119, i32 %122)
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %126 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %125, i32 0, i32 12
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @mlxsw_cmd_mbox_config_profile_fid_flood_table_size_set(i8* %124, i32 %127)
  br label %129

129:                                              ; preds = %96, %91
  %130 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %131 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %130, i32 0, i32 11
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @mlxsw_cmd_mbox_config_profile_set_flood_mode_set(i8* %135, i32 1)
  %137 = load i8*, i8** %7, align 8
  %138 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %139 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @mlxsw_cmd_mbox_config_profile_flood_mode_set(i8* %137, i32 %140)
  br label %142

142:                                              ; preds = %134, %129
  %143 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %144 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_ib_mc_set(i8* %148, i32 1)
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %152 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @mlxsw_cmd_mbox_config_profile_max_ib_mc_set(i8* %150, i32 %153)
  br label %155

155:                                              ; preds = %147, %142
  %156 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %157 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @mlxsw_cmd_mbox_config_profile_set_max_pkey_set(i8* %161, i32 1)
  %163 = load i8*, i8** %7, align 8
  %164 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %165 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @mlxsw_cmd_mbox_config_profile_max_pkey_set(i8* %163, i32 %166)
  br label %168

168:                                              ; preds = %160, %155
  %169 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %170 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @mlxsw_cmd_mbox_config_profile_set_ar_sec_set(i8* %174, i32 1)
  %176 = load i8*, i8** %7, align 8
  %177 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %178 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @mlxsw_cmd_mbox_config_profile_ar_sec_set(i8* %176, i32 %179)
  br label %181

181:                                              ; preds = %173, %168
  %182 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %183 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_set(i8* %187, i32 1)
  %189 = load i8*, i8** %7, align 8
  %190 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %191 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @mlxsw_cmd_mbox_config_profile_adaptive_routing_group_cap_set(i8* %189, i32 %192)
  br label %194

194:                                              ; preds = %186, %181
  %195 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %196 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %235

199:                                              ; preds = %194
  %200 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %201 = load i32, i32* @KVD_SIZE, align 4
  %202 = call i64 @MLXSW_RES_VALID(%struct.mlxsw_res* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %235

204:                                              ; preds = %199
  %205 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %206 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %207 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %208 = call i32 @mlxsw_pci_profile_get_kvd_sizes(%struct.mlxsw_pci* %205, %struct.mlxsw_config_profile* %206, %struct.mlxsw_res* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %5, align 4
  br label %271

213:                                              ; preds = %204
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @mlxsw_cmd_mbox_config_profile_set_kvd_linear_size_set(i8* %214, i32 1)
  %216 = load i8*, i8** %7, align 8
  %217 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %218 = load i32, i32* @KVD_LINEAR_SIZE, align 4
  %219 = call i32 @MLXSW_RES_GET(%struct.mlxsw_res* %217, i32 %218)
  %220 = call i32 @mlxsw_cmd_mbox_config_profile_kvd_linear_size_set(i8* %216, i32 %219)
  %221 = load i8*, i8** %7, align 8
  %222 = call i32 @mlxsw_cmd_mbox_config_profile_set_kvd_hash_single_size_set(i8* %221, i32 1)
  %223 = load i8*, i8** %7, align 8
  %224 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %225 = load i32, i32* @KVD_SINGLE_SIZE, align 4
  %226 = call i32 @MLXSW_RES_GET(%struct.mlxsw_res* %224, i32 %225)
  %227 = call i32 @mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set(i8* %223, i32 %226)
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 @mlxsw_cmd_mbox_config_profile_set_kvd_hash_double_size_set(i8* %228, i32 1)
  %230 = load i8*, i8** %7, align 8
  %231 = load %struct.mlxsw_res*, %struct.mlxsw_res** %9, align 8
  %232 = load i32, i32* @KVD_DOUBLE_SIZE, align 4
  %233 = call i32 @MLXSW_RES_GET(%struct.mlxsw_res* %231, i32 %232)
  %234 = call i32 @mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set(i8* %230, i32 %233)
  br label %235

235:                                              ; preds = %213, %199, %194
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %251, %235
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @MLXSW_CONFIG_PROFILE_SWID_COUNT, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %236
  %241 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %242 = load i8*, i8** %7, align 8
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.mlxsw_config_profile*, %struct.mlxsw_config_profile** %8, align 8
  %245 = getelementptr inbounds %struct.mlxsw_config_profile, %struct.mlxsw_config_profile* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = call i32 @mlxsw_pci_config_profile_swid_config(%struct.mlxsw_pci* %241, i8* %242, i32 %243, i32* %249)
  br label %251

251:                                              ; preds = %240
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  br label %236

254:                                              ; preds = %236
  %255 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %256 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @MLXSW_PCI_CQE_V0, align 8
  %259 = icmp sgt i64 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load i8*, i8** %7, align 8
  %262 = call i32 @mlxsw_cmd_mbox_config_profile_set_cqe_version_set(i8* %261, i32 1)
  %263 = load i8*, i8** %7, align 8
  %264 = call i32 @mlxsw_cmd_mbox_config_profile_cqe_version_set(i8* %263, i32 1)
  br label %265

265:                                              ; preds = %260, %254
  %266 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %267 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = call i32 @mlxsw_cmd_config_profile_set(i32 %268, i8* %269)
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %265, %211
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local i32 @mlxsw_cmd_mbox_zero(i8*) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_vepa_channels_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_mid_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_mid_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_pgt_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_pgt_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_system_port_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_system_port_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_vlan_groups_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_regions_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_regions_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_flood_tables_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_flood_tables_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_vid_flood_tables_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_fid_offset_flood_tables_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_fid_offset_flood_table_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_fid_flood_tables_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_fid_flood_table_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_flood_mode_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_flood_mode_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_ib_mc_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_ib_mc_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_max_pkey_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_max_pkey_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_ar_sec_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_ar_sec_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_adaptive_routing_group_cap_set(i8*, i32) #1

declare dso_local i64 @MLXSW_RES_VALID(%struct.mlxsw_res*, i32) #1

declare dso_local i32 @mlxsw_pci_profile_get_kvd_sizes(%struct.mlxsw_pci*, %struct.mlxsw_config_profile*, %struct.mlxsw_res*) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_kvd_linear_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_kvd_linear_size_set(i8*, i32) #1

declare dso_local i32 @MLXSW_RES_GET(%struct.mlxsw_res*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_kvd_hash_single_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_kvd_hash_double_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_pci_config_profile_swid_config(%struct.mlxsw_pci*, i8*, i32, i32*) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_set_cqe_version_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_mbox_config_profile_cqe_version_set(i8*, i32) #1

declare dso_local i32 @mlxsw_cmd_config_profile_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
