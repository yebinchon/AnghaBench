; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_beginscan_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_beginscan_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.ath6kl* }
%struct.ath6kl = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_begin_scan_cmd = type { i32, i32, i32*, %struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32*, i32 }

@ATH6KL_FW_CAPABILITY_STA_P2PDEV_DUPLEX = common dso_local global i32 0, align 4
@WMI_LONG_SCAN = common dso_local global i32 0, align 4
@WMI_SHORT_SCAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WMI_MAX_CHANNELS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@ATH6KL_NUM_BANDS = common dso_local global i32 0, align 4
@WMI_BEGIN_SCAN_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_beginscan_cmd(%struct.wmi* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.wmi*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.ieee80211_supported_band*, align 8
  %25 = alloca %struct.sk_buff*, align 8
  %26 = alloca %struct.wmi_begin_scan_cmd*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ath6kl*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  %35 = load %struct.wmi*, %struct.wmi** %13, align 8
  %36 = getelementptr inbounds %struct.wmi, %struct.wmi* %35, i32 0, i32 0
  %37 = load %struct.ath6kl*, %struct.ath6kl** %36, align 8
  store %struct.ath6kl* %37, %struct.ath6kl** %32, align 8
  %38 = load i32, i32* @ATH6KL_FW_CAPABILITY_STA_P2PDEV_DUPLEX, align 4
  %39 = load %struct.ath6kl*, %struct.ath6kl** %32, align 8
  %40 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %11
  %45 = load %struct.wmi*, %struct.wmi** %13, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32*, i32** %21, align 8
  %54 = call i32 @ath6kl_wmi_startscan_cmd(%struct.wmi* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32* %53)
  store i32 %54, i32* %12, align 4
  br label %235

55:                                               ; preds = %11
  store i32 64, i32* %27, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @WMI_LONG_SCAN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @WMI_SHORT_SCAN, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  br label %235

66:                                               ; preds = %59, %55
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* @WMI_MAX_CHANNELS, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %235

73:                                               ; preds = %66
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = load i32, i32* %27, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %27, align 4
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i32, i32* %27, align 4
  %87 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %25, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  br label %235

93:                                               ; preds = %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.wmi_begin_scan_cmd*
  store %struct.wmi_begin_scan_cmd* %97, %struct.wmi_begin_scan_cmd** %26, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %100 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %104 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %103, i32 0, i32 8
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i8* @cpu_to_le32(i32 %105)
  %107 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %108 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %112 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %19, align 4
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %116 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %22, align 4
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %120 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %20, align 4
  %122 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %123 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %30, align 4
  br label %124

124:                                              ; preds = %203, %93
  %125 = load i32, i32* %30, align 4
  %126 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %206

128:                                              ; preds = %124
  %129 = load %struct.ath6kl*, %struct.ath6kl** %32, align 8
  %130 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %129, i32 0, i32 0
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %132, align 8
  %134 = load i32, i32* %30, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %133, i64 %135
  %137 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %136, align 8
  store %struct.ieee80211_supported_band* %137, %struct.ieee80211_supported_band** %24, align 8
  %138 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %24, align 8
  %139 = icmp ne %struct.ieee80211_supported_band* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %128
  br label %203

141:                                              ; preds = %128
  %142 = load i32, i32* %30, align 4
  %143 = load i32, i32* @ATH6KL_NUM_BANDS, align 4
  %144 = icmp sge i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i64 @WARN_ON(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %206

149:                                              ; preds = %141
  %150 = load i32*, i32** %23, align 8
  %151 = load i32, i32* %30, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %34, align 4
  %155 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %156 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %155, i32 0, i32 3
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %30, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %28, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %29, align 4
  br label %163

163:                                              ; preds = %191, %149
  %164 = load i32, i32* %29, align 4
  %165 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %24, align 8
  %166 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %163
  %170 = load i32, i32* %29, align 4
  %171 = call i32 @BIT(i32 %170)
  %172 = load i32, i32* %34, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %191

176:                                              ; preds = %169
  %177 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %24, align 8
  %178 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %177, i32 0, i32 1
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load i32, i32* %29, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sdiv i32 %184, 5
  %186 = load i32*, i32** %28, align 8
  %187 = load i32, i32* %33, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %33, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %176, %175
  %192 = load i32, i32* %29, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %29, align 4
  br label %163

194:                                              ; preds = %163
  %195 = load i32, i32* %33, align 4
  %196 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %197 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %196, i32 0, i32 3
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %30, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  store i32 %195, i32* %202, align 8
  br label %203

203:                                              ; preds = %194, %140
  %204 = load i32, i32* %30, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %30, align 4
  br label %124

206:                                              ; preds = %148, %124
  store i32 0, i32* %29, align 4
  br label %207

207:                                              ; preds = %224, %206
  %208 = load i32, i32* %29, align 4
  %209 = load i32, i32* %20, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %227

211:                                              ; preds = %207
  %212 = load i32*, i32** %21, align 8
  %213 = load i32, i32* %29, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @cpu_to_le16(i32 %216)
  %218 = load %struct.wmi_begin_scan_cmd*, %struct.wmi_begin_scan_cmd** %26, align 8
  %219 = getelementptr inbounds %struct.wmi_begin_scan_cmd, %struct.wmi_begin_scan_cmd* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %29, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %217, i32* %223, align 4
  br label %224

224:                                              ; preds = %211
  %225 = load i32, i32* %29, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %29, align 4
  br label %207

227:                                              ; preds = %207
  %228 = load %struct.wmi*, %struct.wmi** %13, align 8
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %231 = load i32, i32* @WMI_BEGIN_SCAN_CMDID, align 4
  %232 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %233 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %228, i32 %229, %struct.sk_buff* %230, i32 %231, i32 %232)
  store i32 %233, i32* %31, align 4
  %234 = load i32, i32* %31, align 4
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %227, %90, %70, %63, %44
  %236 = load i32, i32* %12, align 4
  ret i32 %236
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath6kl_wmi_startscan_cmd(%struct.wmi*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
