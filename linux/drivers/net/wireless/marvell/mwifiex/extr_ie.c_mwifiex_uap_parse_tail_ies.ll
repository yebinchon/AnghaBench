; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_uap_parse_tail_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_uap_parse_tail_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i32* }
%struct.mwifiex_ie = type { i8*, i8*, i8*, i64 }
%struct.ieee_types_header = type { i32, i32 }
%struct.ieee80211_vendor_ie = type { i32, i32 }

@MWIFIEX_AUTO_IDX_MASK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WLAN_OUI_MICROSOFT = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_MICROSOFT_WMM = common dso_local global i32 0, align 4
@IEEE_MAX_IE_SIZE = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_MICROSOFT_WPA = common dso_local global i32 0, align 4
@MGMT_MASK_BEACON = common dso_local global i32 0, align 4
@MGMT_MASK_PROBE_RESP = common dso_local global i32 0, align 4
@MGMT_MASK_ASSOC_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cfg80211_beacon_data*)* @mwifiex_uap_parse_tail_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_uap_parse_tail_ies(%struct.mwifiex_private* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.cfg80211_beacon_data*, align 8
  %6 = alloca %struct.mwifiex_ie*, align 8
  %7 = alloca %struct.ieee_types_header*, align 8
  %8 = alloca %struct.ieee80211_vendor_ie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %5, align 8
  %15 = load i32, i32* @MWIFIEX_AUTO_IDX_MASK, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %17 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %22 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %186

26:                                               ; preds = %20
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mwifiex_ie* @kzalloc(i32 32, i32 %27)
  store %struct.mwifiex_ie* %28, %struct.mwifiex_ie** %6, align 8
  %29 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %30 = icmp ne %struct.mwifiex_ie* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %186

34:                                               ; preds = %26
  %35 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %36 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %100, %34
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %40, 8
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  %43 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %44 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = bitcast i32* %48 to i8*
  %50 = bitcast i8* %49 to %struct.ieee_types_header*
  store %struct.ieee_types_header* %50, %struct.ieee_types_header** %7, align 8
  %51 = load %struct.ieee_types_header*, %struct.ieee_types_header** %7, align 8
  %52 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %182

63:                                               ; preds = %42
  %64 = load %struct.ieee_types_header*, %struct.ieee_types_header** %7, align 8
  %65 = getelementptr inbounds %struct.ieee_types_header, %struct.ieee_types_header* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %78 [
    i32 132, label %67
    i32 131, label %67
    i32 138, label %67
    i32 133, label %67
    i32 137, label %67
    i32 136, label %67
    i32 135, label %67
    i32 134, label %67
    i32 129, label %67
    i32 128, label %67
    i32 130, label %68
  ]

67:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63, %63, %63
  br label %100

68:                                               ; preds = %63
  %69 = load i32, i32* @WLAN_OUI_MICROSOFT, align 4
  %70 = load i32, i32* @WLAN_OUI_TYPE_MICROSOFT_WMM, align 4
  %71 = load %struct.ieee_types_header*, %struct.ieee_types_header** %7, align 8
  %72 = bitcast %struct.ieee_types_header* %71 to i32*
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @cfg80211_find_vendor_ie(i32 %69, i32 %70, i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %100

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %63, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %79, %80
  %82 = load i32, i32* @IEEE_MAX_IE_SIZE, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %182

87:                                               ; preds = %78
  %88 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %89 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load %struct.ieee_types_header*, %struct.ieee_types_header** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @memcpy(i64 %93, %struct.ieee_types_header* %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %87, %76, %67
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %38

107:                                              ; preds = %38
  %108 = load i32, i32* @WLAN_OUI_MICROSOFT, align 4
  %109 = load i32, i32* @WLAN_OUI_TYPE_MICROSOFT_WPA, align 4
  %110 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %111 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %114 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @cfg80211_find_vendor_ie(i32 %108, i32 %109, i32* %112, i32 %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = bitcast i8* %117 to %struct.ieee80211_vendor_ie*
  store %struct.ieee80211_vendor_ie* %118, %struct.ieee80211_vendor_ie** %8, align 8
  %119 = load %struct.ieee80211_vendor_ie*, %struct.ieee80211_vendor_ie** %8, align 8
  %120 = icmp ne %struct.ieee80211_vendor_ie* %119, null
  br i1 %120, label %121, label %150

121:                                              ; preds = %107
  %122 = load %struct.ieee80211_vendor_ie*, %struct.ieee80211_vendor_ie** %8, align 8
  %123 = getelementptr inbounds %struct.ieee80211_vendor_ie, %struct.ieee80211_vendor_ie* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %13, align 4
  %130 = add i32 %128, %129
  %131 = load i32, i32* @IEEE_MAX_IE_SIZE, align 4
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %14, align 4
  br label %182

136:                                              ; preds = %121
  %137 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %138 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = load %struct.ieee80211_vendor_ie*, %struct.ieee80211_vendor_ie** %8, align 8
  %144 = bitcast %struct.ieee80211_vendor_ie* %143 to %struct.ieee_types_header*
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @memcpy(i64 %142, %struct.ieee_types_header* %144, i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %136, %107
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  br label %182

154:                                              ; preds = %150
  %155 = load i32, i32* %9, align 4
  %156 = call i8* @cpu_to_le16(i32 %155)
  %157 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %158 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @MGMT_MASK_BEACON, align 4
  %160 = load i32, i32* @MGMT_MASK_PROBE_RESP, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @MGMT_MASK_ASSOC_RESP, align 4
  %163 = or i32 %161, %162
  %164 = call i8* @cpu_to_le16(i32 %163)
  %165 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %166 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i8* @cpu_to_le16(i32 %167)
  %169 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %170 = getelementptr inbounds %struct.mwifiex_ie, %struct.mwifiex_ie* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %172 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %173 = call i64 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private* %171, %struct.mwifiex_ie* %172, i32* %9, i32* null, i32* null, i32* null, i32* null)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %154
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %14, align 4
  br label %182

178:                                              ; preds = %154
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %181 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %175, %153, %133, %84, %60
  %183 = load %struct.mwifiex_ie*, %struct.mwifiex_ie** %6, align 8
  %184 = call i32 @kfree(%struct.mwifiex_ie* %183)
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %31, %25
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.mwifiex_ie* @kzalloc(i32, i32) #1

declare dso_local i64 @cfg80211_find_vendor_ie(i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i64, %struct.ieee_types_header*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @mwifiex_update_uap_custom_ie(%struct.mwifiex_private*, %struct.mwifiex_ie*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.mwifiex_ie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
