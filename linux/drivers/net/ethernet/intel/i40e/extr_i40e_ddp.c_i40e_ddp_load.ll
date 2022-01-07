; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_metadata_segment = type { i32 }
%struct.i40e_profile_segment = type { i32, i32 }
%struct.i40e_profile_info = type { i32, i32, i32, i32 }
%struct.i40e_package_header = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid DDP recipe size.\00", align 1
@SEGMENT_TYPE_METADATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to find metadata segment in DDP recipe.\00", align 1
@SEGMENT_TYPE_I40E = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to find profile segment in DDP recipe.\00", align 1
@I40E_DDP_ADD_TRACKID = common dso_local global i32 0, align 4
@I40E_DDP_REMOVE_TRACKID = common dso_local global i32 0, align 4
@I40E_DDP_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to fetch loaded profiles.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"DDP profile already loaded.\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"DDP profile overlaps with existing one.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"DDP profile for deletion does not exist.\00", align 1
@I40E_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"Profile is not supported by the device.\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to write DDP profile.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to remove DDP profile.\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to add DDP profile info.\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Failed to restore DDP profile info.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_ddp_load(%struct.net_device* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [20 x i32], align 16
  %11 = alloca %struct.i40e_metadata_segment*, align 8
  %12 = alloca %struct.i40e_profile_segment*, align 8
  %13 = alloca %struct.i40e_profile_info, align 4
  %14 = alloca %struct.i40e_package_header*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.i40e_netdev_priv*, align 8
  %17 = alloca %struct.i40e_vsi*, align 8
  %18 = alloca %struct.i40e_pf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.i40e_netdev_priv* %22, %struct.i40e_netdev_priv** %16, align 8
  %23 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %16, align 8
  %24 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %23, i32 0, i32 0
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %24, align 8
  store %struct.i40e_vsi* %25, %struct.i40e_vsi** %17, align 8
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %17, align 8
  %27 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %26, i32 0, i32 0
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %27, align 8
  store %struct.i40e_pf* %28, %struct.i40e_pf** %18, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to %struct.i40e_package_header*
  store %struct.i40e_package_header* %30, %struct.i40e_package_header** %14, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load %struct.i40e_package_header*, %struct.i40e_package_header** %14, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @i40e_ddp_is_pkg_hdr_valid(%struct.net_device* %31, %struct.i40e_package_header* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %219

39:                                               ; preds = %4
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %40, 16
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i32 @netdev_err(%struct.net_device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %219

47:                                               ; preds = %39
  %48 = load i32, i32* @SEGMENT_TYPE_METADATA, align 4
  %49 = load %struct.i40e_package_header*, %struct.i40e_package_header** %14, align 8
  %50 = call i64 @i40e_find_segment_in_package(i32 %48, %struct.i40e_package_header* %49)
  %51 = inttoptr i64 %50 to %struct.i40e_metadata_segment*
  store %struct.i40e_metadata_segment* %51, %struct.i40e_metadata_segment** %11, align 8
  %52 = load %struct.i40e_metadata_segment*, %struct.i40e_metadata_segment** %11, align 8
  %53 = icmp ne %struct.i40e_metadata_segment* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %219

59:                                               ; preds = %47
  %60 = load %struct.i40e_metadata_segment*, %struct.i40e_metadata_segment** %11, align 8
  %61 = getelementptr inbounds %struct.i40e_metadata_segment, %struct.i40e_metadata_segment* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* @SEGMENT_TYPE_I40E, align 4
  %64 = load %struct.i40e_package_header*, %struct.i40e_package_header** %14, align 8
  %65 = call i64 @i40e_find_segment_in_package(i32 %63, %struct.i40e_package_header* %64)
  %66 = inttoptr i64 %65 to %struct.i40e_profile_segment*
  store %struct.i40e_profile_segment* %66, %struct.i40e_profile_segment** %12, align 8
  %67 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %12, align 8
  %68 = icmp ne %struct.i40e_profile_segment* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %59
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = call i32 @netdev_err(%struct.net_device* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %219

74:                                               ; preds = %59
  %75 = load i32, i32* %19, align 4
  %76 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %13, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %12, align 8
  %78 = getelementptr inbounds %struct.i40e_profile_segment, %struct.i40e_profile_segment* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %13, i32 0, i32 2
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @I40E_DDP_ADD_TRACKID, align 4
  %85 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %13, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  br label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @I40E_DDP_REMOVE_TRACKID, align 4
  %88 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %13, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %12, align 8
  %93 = getelementptr inbounds %struct.i40e_profile_segment, %struct.i40e_profile_segment* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @I40E_DDP_NAME_SIZE, align 4
  %96 = call i32 @memcpy(i32 %91, i32 %94, i32 %95)
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %98 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %97, i32 0, i32 0
  %99 = call i32 @i40e_ddp_does_profile_exist(i32* %98, %struct.i40e_profile_info* %13)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %89
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = call i32 @netdev_err(%struct.net_device* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* %20, align 4
  store i32 %105, i32* %5, align 4
  br label %219

106:                                              ; preds = %89
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %106
  %110 = load i32, i32* %20, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = call i32 @netdev_err(%struct.net_device* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %219

117:                                              ; preds = %109
  %118 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %119 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %118, i32 0, i32 0
  %120 = call i32 @i40e_ddp_does_profile_overlap(i32* %119, %struct.i40e_profile_info* %13)
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %20, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = call i32 @netdev_err(%struct.net_device* %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %20, align 4
  store i32 %126, i32* %5, align 4
  br label %219

127:                                              ; preds = %117
  %128 = load i32, i32* %20, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = call i32 @netdev_err(%struct.net_device* %131, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %219

135:                                              ; preds = %127
  br label %145

136:                                              ; preds = %106
  %137 = load i32, i32* %20, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = call i32 @netdev_err(%struct.net_device* %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %219

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %135
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %145
  %149 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %150 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %149, i32 0, i32 0
  %151 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %12, align 8
  %152 = load i32, i32* %19, align 4
  %153 = call i64 @i40e_write_profile(i32* %150, %struct.i40e_profile_segment* %151, i32 %152)
  store i64 %153, i64* %15, align 8
  %154 = load i64, i64* %15, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %148
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* @I40E_ERR_DEVICE_NOT_SUPPORTED, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = call i32 @netdev_err(%struct.net_device* %161, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %163 = load i32, i32* @EPERM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %5, align 4
  br label %219

165:                                              ; preds = %156
  %166 = load %struct.net_device*, %struct.net_device** %6, align 8
  %167 = call i32 @netdev_err(%struct.net_device* %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %219

170:                                              ; preds = %148
  br label %185

171:                                              ; preds = %145
  %172 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %173 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %172, i32 0, i32 0
  %174 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %12, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i64 @i40e_rollback_profile(i32* %173, %struct.i40e_profile_segment* %174, i32 %175)
  store i64 %176, i64* %15, align 8
  %177 = load i64, i64* %15, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %171
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = call i32 @netdev_err(%struct.net_device* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %5, align 4
  br label %219

184:                                              ; preds = %171
  br label %185

185:                                              ; preds = %184, %170
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %185
  %189 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %190 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %189, i32 0, i32 0
  %191 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %12, align 8
  %192 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %193 = load i32, i32* %19, align 4
  %194 = call i64 @i40e_add_pinfo(i32* %190, %struct.i40e_profile_segment* %191, i32* %192, i32 %193)
  store i64 %194, i64* %15, align 8
  %195 = load i64, i64* %15, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %188
  %198 = load %struct.net_device*, %struct.net_device** %6, align 8
  %199 = call i32 @netdev_err(%struct.net_device* %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %5, align 4
  br label %219

202:                                              ; preds = %188
  br label %218

203:                                              ; preds = %185
  %204 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %205 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %204, i32 0, i32 0
  %206 = load %struct.i40e_profile_segment*, %struct.i40e_profile_segment** %12, align 8
  %207 = getelementptr inbounds [20 x i32], [20 x i32]* %10, i64 0, i64 0
  %208 = load i32, i32* %19, align 4
  %209 = call i64 @i40e_del_pinfo(i32* %205, %struct.i40e_profile_segment* %206, i32* %207, i32 %208)
  store i64 %209, i64* %15, align 8
  %210 = load i64, i64* %15, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %203
  %213 = load %struct.net_device*, %struct.net_device** %6, align 8
  %214 = call i32 @netdev_err(%struct.net_device* %213, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %215 = load i32, i32* @EIO, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %5, align 4
  br label %219

217:                                              ; preds = %203
  br label %218

218:                                              ; preds = %217, %202
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %218, %212, %197, %179, %165, %160, %139, %130, %123, %112, %102, %69, %54, %42, %36
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_ddp_is_pkg_hdr_valid(%struct.net_device*, %struct.i40e_package_header*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @i40e_find_segment_in_package(i32, %struct.i40e_package_header*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @i40e_ddp_does_profile_exist(i32*, %struct.i40e_profile_info*) #1

declare dso_local i32 @i40e_ddp_does_profile_overlap(i32*, %struct.i40e_profile_info*) #1

declare dso_local i64 @i40e_write_profile(i32*, %struct.i40e_profile_segment*, i32) #1

declare dso_local i64 @i40e_rollback_profile(i32*, %struct.i40e_profile_segment*, i32) #1

declare dso_local i64 @i40e_add_pinfo(i32*, %struct.i40e_profile_segment*, i32*, i32) #1

declare dso_local i64 @i40e_del_pinfo(i32*, %struct.i40e_profile_segment*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
