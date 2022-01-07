; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_get_encryption.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_get_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i64, i32, i32, i32)*, i32 }
%struct.prism2_hostapd_param = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i64 0, align 8
@HOSTAP_CRYPT_ERR_UNKNOWN_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@HOSTAP_CRYPT_ALG_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.prism2_hostapd_param*, i32)* @prism2_ioctl_get_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_get_encryption(%struct.TYPE_11__* %0, %struct.prism2_hostapd_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.prism2_hostapd_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lib80211_crypt_data**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.prism2_hostapd_param* %1, %struct.prism2_hostapd_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %12 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %17 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %23 = bitcast %struct.prism2_hostapd_param* %22 to i8*
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 %15, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %182

34:                                               ; preds = %3
  %35 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %36 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @is_broadcast_ether_addr(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  store i8* null, i8** %9, align 8
  %41 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %42 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WEP_KEYS, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %54 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %40
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %60, align 8
  %62 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %63 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %61, i64 %66
  store %struct.lib80211_crypt_data** %67, %struct.lib80211_crypt_data*** %8, align 8
  br label %91

68:                                               ; preds = %34
  %69 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %70 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %77 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @ap_crypt_get_ptrs(i32 %75, i32 %78, i32 0, %struct.lib80211_crypt_data*** %8)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %68
  %83 = load i64, i64* @HOSTAP_CRYPT_ERR_UNKNOWN_ADDR, align 8
  %84 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %85 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  store i64 %83, i64* %87, align 8
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %182

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %93 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %92, align 8
  %94 = icmp eq %struct.lib80211_crypt_data* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %97 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %96, align 8
  %98 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = icmp eq %struct.TYPE_8__* %99, null
  br i1 %100, label %101, label %116

101:                                              ; preds = %95, %91
  %102 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %103 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i32 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %108 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %109 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  store i32 0, i32* %111, align 8
  %112 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %113 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i64 255, i64* %115, align 8
  br label %175

116:                                              ; preds = %95
  %117 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %118 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %123 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %122, align 8
  %124 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @HOSTAP_CRYPT_ALG_NAME_LEN, align 4
  %129 = call i32 @strncpy(i32 %121, i32 %127, i32 %128)
  %130 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %131 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  store i32 0, i32* %133, align 8
  %134 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %135 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @memset(i32 %138, i32 0, i32 8)
  %140 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %141 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %140, align 8
  %142 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %144, align 8
  %146 = icmp ne i32 (i64, i32, i32, i32)* %145, null
  br i1 %146, label %147, label %174

147:                                              ; preds = %116
  %148 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %149 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %148, align 8
  %150 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %152, align 8
  %154 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %155 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %161 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %166 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %165, align 8
  %167 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %153(i64 %158, i32 %159, i32 %164, i32 %168)
  %170 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %171 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 3
  store i32 %169, i32* %173, align 8
  br label %174

174:                                              ; preds = %147, %116
  br label %175

175:                                              ; preds = %174, %101
  %176 = load i8*, i8** %9, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 @hostap_handle_sta_release(i8* %179)
  br label %181

181:                                              ; preds = %178, %175
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %82, %31
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i8* @ap_crypt_get_ptrs(i32, i32, i32, %struct.lib80211_crypt_data***) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hostap_handle_sta_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
