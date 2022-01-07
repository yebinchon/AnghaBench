; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_new_radio_nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_hwsim_new_radio_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, i32 }
%struct.hwsim_new_radio_params = type { i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i32, i8*, i32 }

@HWSIM_ATTR_REG_STRICT_REG = common dso_local global i64 0, align 8
@HWSIM_ATTR_SUPPORT_P2P_DEVICE = common dso_local global i64 0, align 8
@channels = common dso_local global i32 0, align 4
@HWSIM_ATTR_DESTROY_RADIO_ON_CLOSE = common dso_local global i64 0, align 8
@HWSIM_ATTR_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"must have at least one channel\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CFG80211_MAX_NUM_DIFFERENT_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"too many channels specified\00", align 1
@HWSIM_ATTR_NO_VIF = common dso_local global i64 0, align 8
@HWSIM_ATTR_USE_CHANCTX = common dso_local global i64 0, align 8
@HWSIM_ATTR_REG_HINT_ALPHA2 = common dso_local global i64 0, align 8
@HWSIM_ATTR_REG_CUSTOM_REG = common dso_local global i64 0, align 8
@hwsim_world_regdom_custom = common dso_local global i32* null, align 8
@HWSIM_ATTR_PERM_ADDR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"MAC is no valid source addr\00", align 1
@HWSIM_ATTR_IFTYPE_SUPPORT = common dso_local global i64 0, align 8
@HWSIM_IFTYPE_SUPPORT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"cannot support more iftypes than kernel\00", align 1
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@HWSIM_ATTR_CIPHER_SUPPORT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"bad cipher list length\00", align 1
@hwsim_ciphers = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"too many ciphers specified\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unsupported ciphers specified\00", align 1
@HWSIM_ATTR_RADIO_NAME = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @hwsim_new_radio_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwsim_new_radio_nl(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.hwsim_new_radio_params, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = bitcast %struct.hwsim_new_radio_params* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 88, i1 false)
  store i8* null, i8** %7, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @HWSIM_ATTR_REG_STRICT_REG, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @HWSIM_ATTR_SUPPORT_P2P_DEVICE, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @channels, align 4
  %27 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @HWSIM_ATTR_DESTROY_RADIO_ON_CLOSE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @HWSIM_ATTR_CHANNELS, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %2
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @HWSIM_ATTR_CHANNELS, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @nla_get_u32(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  br label %52

52:                                               ; preds = %42, %2
  %53 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %58 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %371

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CFG80211_MAX_NUM_DIFFERENT_CHANNELS, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %371

71:                                               ; preds = %61
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @HWSIM_ATTR_NO_VIF, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 4
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %79, %71
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @HWSIM_ATTR_USE_CHANCTX, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 5
  store i32 1, i32* %90, align 4
  br label %97

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 1
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 5
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %89
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @HWSIM_ATTR_REG_HINT_ALPHA2, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %107 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @HWSIM_ATTR_REG_HINT_ALPHA2, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @nla_data(i32 %111)
  %113 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 12
  store i8* %112, i8** %113, align 8
  br label %114

114:                                              ; preds = %105, %97
  %115 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %116 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @HWSIM_ATTR_REG_CUSTOM_REG, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %114
  %123 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %124 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @HWSIM_ATTR_REG_CUSTOM_REG, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @nla_get_u32(i32 %128)
  %130 = ptrtoint i8* %129 to i64
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i32*, i32** @hwsim_world_regdom_custom, align 8
  %133 = call i64 @ARRAY_SIZE(i32* %132)
  %134 = icmp uge i64 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %371

138:                                              ; preds = %122
  %139 = load i64, i64* %9, align 8
  %140 = load i32*, i32** @hwsim_world_regdom_custom, align 8
  %141 = call i64 @ARRAY_SIZE(i32* %140)
  %142 = call i64 @array_index_nospec(i64 %139, i64 %141)
  store i64 %142, i64* %9, align 8
  %143 = load i32*, i32** @hwsim_world_regdom_custom, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 11
  store i32 %146, i32* %147, align 8
  br label %148

148:                                              ; preds = %138, %114
  %149 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %150 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @HWSIM_ATTR_PERM_ADDR, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %190

156:                                              ; preds = %148
  %157 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %158 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @HWSIM_ATTR_PERM_ADDR, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @nla_data(i32 %162)
  %164 = call i32 @is_valid_ether_addr(i8* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %156
  %167 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %168 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %167, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %170 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %173 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @HWSIM_ATTR_PERM_ADDR, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @NL_SET_BAD_ATTR(i32 %171, i32 %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %371

181:                                              ; preds = %156
  %182 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %183 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @HWSIM_ATTR_PERM_ADDR, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @nla_data(i32 %187)
  %189 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 10
  store i8* %188, i8** %189, align 8
  br label %190

190:                                              ; preds = %181, %148
  %191 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %192 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* @HWSIM_ATTR_IFTYPE_SUPPORT, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %228

198:                                              ; preds = %190
  %199 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %200 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* @HWSIM_ATTR_IFTYPE_SUPPORT, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @nla_get_u32(i32 %204)
  %206 = ptrtoint i8* %205 to i32
  %207 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 6
  store i32 %206, i32* %207, align 8
  %208 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @HWSIM_IFTYPE_SUPPORT_MASK, align 4
  %211 = xor i32 %210, -1
  %212 = and i32 %209, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %198
  %215 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %216 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %219 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @HWSIM_ATTR_IFTYPE_SUPPORT, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %217, i32 %223, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %371

227:                                              ; preds = %198
  br label %231

228:                                              ; preds = %190
  %229 = load i32, i32* @HWSIM_IFTYPE_SUPPORT_MASK, align 4
  %230 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 6
  store i32 %229, i32* %230, align 8
  br label %231

231:                                              ; preds = %228, %227
  %232 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %239 = call i32 @BIT(i32 %238)
  %240 = and i32 %237, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %235, %231
  %243 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %244 = call i32 @BIT(i32 %243)
  %245 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %244
  store i32 %247, i32* %245, align 8
  %248 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 1
  store i32 1, i32* %248, align 4
  br label %249

249:                                              ; preds = %242, %235
  %250 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %251 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* @HWSIM_ATTR_CIPHER_SUPPORT, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %332

257:                                              ; preds = %249
  %258 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %259 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @HWSIM_ATTR_CIPHER_SUPPORT, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @nla_len(i32 %263)
  store i64 %264, i64* %10, align 8
  %265 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %266 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* @HWSIM_ATTR_CIPHER_SUPPORT, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @nla_data(i32 %270)
  %272 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 9
  store i8* %271, i8** %272, align 8
  %273 = load i64, i64* %10, align 8
  %274 = urem i64 %273, 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %257
  %277 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %278 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %281 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @HWSIM_ATTR_CIPHER_SUPPORT, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %279, i32 %285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %287 = load i32, i32* @EINVAL, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %3, align 4
  br label %371

289:                                              ; preds = %257
  %290 = load i64, i64* %10, align 8
  %291 = udiv i64 %290, 8
  %292 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 7
  store i64 %291, i64* %292, align 8
  %293 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 7
  %294 = load i64, i64* %293, align 8
  %295 = load i32*, i32** @hwsim_ciphers, align 8
  %296 = call i64 @ARRAY_SIZE(i32* %295)
  %297 = icmp ugt i64 %294, %296
  br i1 %297, label %298, label %311

298:                                              ; preds = %289
  %299 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %300 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %303 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* @HWSIM_ATTR_CIPHER_SUPPORT, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %301, i32 %307, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %309 = load i32, i32* @EINVAL, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %3, align 4
  br label %371

311:                                              ; preds = %289
  %312 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 9
  %313 = load i8*, i8** %312, align 8
  %314 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 7
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @hwsim_known_ciphers(i8* %313, i64 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %331, label %318

318:                                              ; preds = %311
  %319 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %320 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %323 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = load i64, i64* @HWSIM_ATTR_CIPHER_SUPPORT, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @NL_SET_ERR_MSG_ATTR(i32 %321, i32 %327, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %329 = load i32, i32* @EINVAL, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %3, align 4
  br label %371

331:                                              ; preds = %311
  br label %332

332:                                              ; preds = %331, %249
  %333 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %334 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load i64, i64* @HWSIM_ATTR_RADIO_NAME, align 8
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %365

340:                                              ; preds = %332
  %341 = load i32, i32* @GFP_KERNEL, align 4
  %342 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %343 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = load i64, i64* @HWSIM_ATTR_RADIO_NAME, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i64 @nla_len(i32 %347)
  %349 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %350 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = load i64, i64* @HWSIM_ATTR_RADIO_NAME, align 8
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = call i8* @nla_data(i32 %354)
  %356 = call i8* @kasprintf(i32 %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %348, i8* %355)
  store i8* %356, i8** %7, align 8
  %357 = load i8*, i8** %7, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %362, label %359

359:                                              ; preds = %340
  %360 = load i32, i32* @ENOMEM, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* %3, align 4
  br label %371

362:                                              ; preds = %340
  %363 = load i8*, i8** %7, align 8
  %364 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %6, i32 0, i32 8
  store i8* %363, i8** %364, align 8
  br label %365

365:                                              ; preds = %362, %332
  %366 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %367 = call i32 @mac80211_hwsim_new_radio(%struct.genl_info* %366, %struct.hwsim_new_radio_params* %6)
  store i32 %367, i32* %8, align 4
  %368 = load i8*, i8** %7, align 8
  %369 = call i32 @kfree(i8* %368)
  %370 = load i32, i32* %8, align 4
  store i32 %370, i32* %3, align 4
  br label %371

371:                                              ; preds = %365, %359, %318, %298, %276, %214, %166, %135, %66, %56
  %372 = load i32, i32* %3, align 4
  ret i32 %372
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @nla_get_u32(i32) #2

declare dso_local i32 @GENL_SET_ERR_MSG(%struct.genl_info*, i8*) #2

declare dso_local i8* @nla_data(i32) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @array_index_nospec(i64, i64) #2

declare dso_local i32 @is_valid_ether_addr(i8*) #2

declare dso_local i32 @NL_SET_BAD_ATTR(i32, i32) #2

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(i32, i32, i8*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i64 @nla_len(i32) #2

declare dso_local i32 @hwsim_known_ciphers(i8*, i64) #2

declare dso_local i8* @kasprintf(i32, i8*, i64, i8*) #2

declare dso_local i32 @mac80211_hwsim_new_radio(%struct.genl_info*, %struct.hwsim_new_radio_params*) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
