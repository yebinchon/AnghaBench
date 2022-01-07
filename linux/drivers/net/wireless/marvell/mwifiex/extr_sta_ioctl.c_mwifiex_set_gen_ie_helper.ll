; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_gen_ie_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_gen_ie_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee_types_vendor_header = type { i32, i64, i32 }

@__const.mwifiex_set_gen_ie_helper.wpa_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 1], align 16
@__const.mwifiex_set_gen_ie_helper.wps_oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 4], align 16
@WLAN_EID_RSN = common dso_local global i64 0, align 8
@WLAN_EID_BSS_AC_ACCESS_DELAY = common dso_local global i64 0, align 8
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS Session Enabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*, i32)* @mwifiex_set_gen_ie_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_set_gen_ie_helper(%struct.mwifiex_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee_types_vendor_header*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.mwifiex_set_gen_ie_helper.wpa_oui to i8*), i64 16, i1 false)
  %14 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([4 x i32]* @__const.mwifiex_set_gen_ie_helper.wps_oui to i8*), i64 16, i1 false)
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %159

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ule i64 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24
  store i32 -1, i32* %4, align 4
  br label %159

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to %struct.ieee_types_vendor_header*
  store %struct.ieee_types_vendor_header* %35, %struct.ieee_types_vendor_header** %8, align 8
  br label %36

36:                                               ; preds = %157, %33
  %37 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %38 = icmp ne %struct.ieee_types_vendor_header* %37, null
  br i1 %38, label %39, label %158

39:                                               ; preds = %36
  %40 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %41 = getelementptr inbounds %struct.ieee_types_vendor_header, %struct.ieee_types_vendor_header* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %47 = getelementptr inbounds %struct.ieee_types_vendor_header, %struct.ieee_types_vendor_header* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WLAN_EID_RSN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %39
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %53 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %54 = bitcast %struct.ieee_types_vendor_header* %53 to i32*
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @mwifiex_set_wpa_ie(%struct.mwifiex_private* %52, i32* %54, i32 %55)
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %58 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %142

60:                                               ; preds = %39
  %61 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %62 = getelementptr inbounds %struct.ieee_types_vendor_header, %struct.ieee_types_vendor_header* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WLAN_EID_BSS_AC_ACCESS_DELAY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %68 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %69 = bitcast %struct.ieee_types_vendor_header* %68 to i32*
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @mwifiex_set_wapi_ie(%struct.mwifiex_private* %67, i32* %69, i32 %70)
  br label %142

72:                                               ; preds = %60
  %73 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %74 = getelementptr inbounds %struct.ieee_types_vendor_header, %struct.ieee_types_vendor_header* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %72
  %79 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %80 = getelementptr inbounds %struct.ieee_types_vendor_header, %struct.ieee_types_vendor_header* %79, i32 0, i32 2
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %82 = call i32 @memcmp(i32* %80, i32* %81, i32 16)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  %85 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %86 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %87 = bitcast %struct.ieee_types_vendor_header* %86 to i32*
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @mwifiex_set_wpa_ie(%struct.mwifiex_private* %85, i32* %87, i32 %88)
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %142

93:                                               ; preds = %78
  %94 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %95 = getelementptr inbounds %struct.ieee_types_vendor_header, %struct.ieee_types_vendor_header* %94, i32 0, i32 2
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %97 = call i32 @memcmp(i32* %95, i32* %96, i32 16)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %93
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  %103 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %104 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MSG, align 4
  %107 = call i32 @mwifiex_dbg(i32 %105, i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %109 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %110 = bitcast %struct.ieee_types_vendor_header* %109 to i32*
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @mwifiex_set_wps_ie(%struct.mwifiex_private* %108, i32* %110, i32 %111)
  br label %142

113:                                              ; preds = %93
  br label %114

114:                                              ; preds = %113, %72
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %118 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = sub i64 8, %120
  %122 = icmp ult i64 %116, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %114
  %124 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %125 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %128 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %126, %130
  %132 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %133 = bitcast %struct.ieee_types_vendor_header* %132 to i32*
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @memcpy(i64 %131, i32* %133, i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %138 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %123, %114
  br label %142

142:                                              ; preds = %141, %99, %84, %66, %51
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ule i64 %147, 4
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store %struct.ieee_types_vendor_header* null, %struct.ieee_types_vendor_header** %8, align 8
  br label %157

150:                                              ; preds = %142
  %151 = load %struct.ieee_types_vendor_header*, %struct.ieee_types_vendor_header** %8, align 8
  %152 = bitcast %struct.ieee_types_vendor_header* %151 to i32*
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = bitcast i32* %155 to %struct.ieee_types_vendor_header*
  store %struct.ieee_types_vendor_header* %156, %struct.ieee_types_vendor_header** %8, align 8
  br label %157

157:                                              ; preds = %150, %149
  br label %36

158:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %31, %18
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mwifiex_set_wpa_ie(%struct.mwifiex_private*, i32*, i32) #2

declare dso_local i32 @mwifiex_set_wapi_ie(%struct.mwifiex_private*, i32*, i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #2

declare dso_local i32 @mwifiex_set_wps_ie(%struct.mwifiex_private*, i32*, i32) #2

declare dso_local i32 @memcpy(i64, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
