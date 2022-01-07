; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_rf_sector_set_selected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_rf_sector_set_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.wil6210_priv = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.wil6210_vif = type { i64, i32 }
%struct.nlattr = type { i32 }

@QCA_ATTR_DMG_RF_SECTOR_MAX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_FW_CAPABILITY_RF_SECTORS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@wil_rf_sector_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid rf sector ATTR\0A\00", align 1
@QCA_ATTR_DMG_RF_SECTOR_INDEX = common dso_local global i64 0, align 8
@QCA_ATTR_DMG_RF_SECTOR_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid rf sector spec\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WIL_MAX_RF_SECTORS = common dso_local global i64 0, align 8
@WMI_INVALID_RF_SECTOR_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid sector index %d\0A\00", align 1
@QCA_ATTR_DMG_RF_SECTOR_TYPE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid sector type %d\0A\00", align 1
@QCA_ATTR_MAC_ADDR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid MAC address %pM\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"broadcast MAC valid only with unlocking\0A\00", align 1
@wil_vif_fwconnected = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"must specify MAC address when connected\0A\00", align 1
@WIL_CID_ALL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"unlock cid %d failed with status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i8*, i32)* @wil_rf_sector_set_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_rf_sector_set_selected(%struct.wiphy* %0, %struct.wireless_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wil6210_priv*, align 8
  %11 = alloca %struct.wil6210_vif*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %22 = call %struct.wil6210_priv* @wdev_to_wil(%struct.wireless_dev* %21)
  store %struct.wil6210_priv* %22, %struct.wil6210_priv** %10, align 8
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %25 = call %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv* %23, %struct.wireless_dev* %24)
  store %struct.wil6210_vif* %25, %struct.wil6210_vif** %11, align 8
  %26 = load i32, i32* @QCA_ATTR_DMG_RF_SECTOR_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca %struct.nlattr*, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %34 = load i32, i32* @WMI_FW_CAPABILITY_RF_SECTORS, align 4
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %36 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @test_bit(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

43:                                               ; preds = %4
  %44 = load i32, i32* @QCA_ATTR_DMG_RF_SECTOR_MAX, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @wil_rf_sector_policy, align 4
  %48 = call i32 @nla_parse_deprecated(%struct.nlattr** %30, i32 %44, i8* %45, i32 %46, i32 %47, i32* null)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %53 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

55:                                               ; preds = %43
  %56 = load i64, i64* @QCA_ATTR_DMG_RF_SECTOR_INDEX, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i64, i64* @QCA_ATTR_DMG_RF_SECTOR_TYPE, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %67 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

70:                                               ; preds = %60
  %71 = load i64, i64* @QCA_ATTR_DMG_RF_SECTOR_INDEX, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i64 @nla_get_u16(%struct.nlattr* %73)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @WIL_MAX_RF_SECTORS, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* @WMI_INVALID_RF_SECTOR_INDEX, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %84 = load i64, i64* %15, align 8
  %85 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

88:                                               ; preds = %78, %70
  %89 = load i64, i64* @QCA_ATTR_DMG_RF_SECTOR_TYPE, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = call i64 @nla_get_u8(%struct.nlattr* %91)
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* @QCA_ATTR_DMG_RF_SECTOR_TYPE_MAX, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %98 = load i64, i64* %16, align 8
  %99 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

102:                                              ; preds = %88
  %103 = load i64, i64* @QCA_ATTR_MAC_ADDR, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %107, label %140

107:                                              ; preds = %102
  %108 = load i64, i64* @QCA_ATTR_MAC_ADDR, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = call i32 @nla_data(%struct.nlattr* %110)
  %112 = call i32 @ether_addr_copy(i64* %33, i32 %111)
  %113 = call i32 @is_broadcast_ether_addr(i64* %33)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %107
  %116 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %117 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %118 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @wil_find_cid(%struct.wil6210_priv* %116, i64 %119, i64* %33)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %125 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64* %33)
  %126 = load i32, i32* @ENOENT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

128:                                              ; preds = %115
  br label %139

129:                                              ; preds = %107
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @WMI_INVALID_RF_SECTOR_INDEX, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %135 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

138:                                              ; preds = %129
  store i32 -1, i32* %19, align 4
  br label %139

139:                                              ; preds = %138, %128
  br label %153

140:                                              ; preds = %102
  %141 = load i32, i32* @wil_vif_fwconnected, align 4
  %142 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %143 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @test_bit(i32 %141, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %149 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152, %139
  %154 = load i32, i32* %19, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %158 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %159 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* %16, align 8
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = call i32 @wil_rf_sector_wmi_set_selected(%struct.wil6210_priv* %157, i64 %160, i64 %161, i64 %162, i64 %164)
  store i32 %165, i32* %12, align 4
  br label %221

166:                                              ; preds = %153
  %167 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %168 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %169 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @WMI_INVALID_RF_SECTOR_INDEX, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* @WIL_CID_ALL, align 8
  %174 = call i32 @wil_rf_sector_wmi_set_selected(%struct.wil6210_priv* %167, i64 %170, i64 %171, i64 %172, i64 %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %220

179:                                              ; preds = %166
  store i64 0, i64* %18, align 8
  br label %180

180:                                              ; preds = %216, %179
  %181 = load i64, i64* %18, align 8
  %182 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %183 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %186, label %219

186:                                              ; preds = %180
  %187 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %188 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %187, i32 0, i32 1
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i64, i64* %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %195 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %216

199:                                              ; preds = %186
  %200 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %201 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %202 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @WMI_INVALID_RF_SECTOR_INDEX, align 8
  %205 = load i64, i64* %16, align 8
  %206 = load i64, i64* %18, align 8
  %207 = call i32 @wil_rf_sector_wmi_set_selected(%struct.wil6210_priv* %200, i64 %203, i64 %204, i64 %205, i64 %206)
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %199
  %211 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %212 = load i64, i64* %18, align 8
  %213 = load i32, i32* %12, align 4
  %214 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %211, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %212, i32 %213)
  br label %219

215:                                              ; preds = %199
  br label %216

216:                                              ; preds = %215, %198
  %217 = load i64, i64* %18, align 8
  %218 = add nsw i64 %217, 1
  store i64 %218, i64* %18, align 8
  br label %180

219:                                              ; preds = %210, %180
  br label %220

220:                                              ; preds = %219, %166
  br label %221

221:                                              ; preds = %220, %156
  %222 = load i32, i32* %12, align 4
  store i32 %222, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %223

223:                                              ; preds = %221, %147, %133, %123, %96, %82, %65, %51, %40
  %224 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local %struct.wil6210_priv* @wdev_to_wil(%struct.wireless_dev*) #1

declare dso_local %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv*, %struct.wireless_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @ether_addr_copy(i64*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @is_broadcast_ether_addr(i64*) #1

declare dso_local i32 @wil_find_cid(%struct.wil6210_priv*, i64, i64*) #1

declare dso_local i32 @wil_rf_sector_wmi_set_selected(%struct.wil6210_priv*, i64, i64, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
