; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_80211_rx.c_hostap_rx_frame_wds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_80211_rx.c_hostap_rx_frame_wds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32*, i32 }
%struct.net_device = type { i32 }

@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@DEBUG_EXTRA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: received WDS frame with not own or broadcast %s=%pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"BSSID\00", align 1
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@HOSTAP_WDS_AP_CLIENT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DEBUG_EXTRA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: received WDS[4 addr] frame from unknown TA=%pM\0A\00", align 1
@WDS_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.ieee80211_hdr*, i32, %struct.net_device**)* @hostap_rx_frame_wds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostap_rx_frame_wds(%struct.TYPE_8__* %0, %struct.ieee80211_hdr* %1, i32 %2, %struct.net_device** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device**, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net_device** %3, %struct.net_device*** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %12 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %16 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IW_MODE_MASTER, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %19
  store i32 0, i32* %5, align 4
  br label %197

31:                                               ; preds = %25, %4
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ether_addr_equal(i32* %34, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %101, label %42

42:                                               ; preds = %31
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 255
  br i1 %48, label %84, label %49

49:                                               ; preds = %42
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 255
  br i1 %55, label %84, label %56

56:                                               ; preds = %49
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 255
  br i1 %62, label %84, label %63

63:                                               ; preds = %56
  %64 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 255
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 255
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 255
  br i1 %83, label %84, label %101

84:                                               ; preds = %77, %70, %63, %56, %49, %42
  %85 = load i32, i32* @DEBUG_EXTRA2, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %97 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 (i32, i8*, i32, i8*, ...) @PDEBUG(i32 %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %90, i8* %96, i32* %99)
  store i32 -1, i32* %5, align 4
  br label %197

101:                                              ; preds = %77, %31
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call %struct.net_device* @prism2_rx_get_wds(%struct.TYPE_8__* %102, i32 %105)
  %107 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* %106, %struct.net_device** %107, align 8
  %108 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %109 = load %struct.net_device*, %struct.net_device** %108, align 8
  %110 = icmp eq %struct.net_device* %109, null
  br i1 %110, label %111, label %171

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %171

116:                                              ; preds = %111
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IW_MODE_INFRA, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %139, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @HOSTAP_WDS_AP_CLIENT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %131 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ETH_ALEN, align 4
  %137 = call i64 @memcmp(i32 %132, i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %129, %122, %116
  %140 = load i32, i32* @DEBUG_EXTRA, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 (i32, i8*, i32, i8*, ...) @PDEBUG(i32 %140, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %145, i8* %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = icmp ne %struct.TYPE_9__* %154, null
  br i1 %155, label %156, label %170

156:                                              ; preds = %139
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %165 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %166 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @WDS_ADD, align 4
  %169 = call i32 @hostap_wds_link_oper(%struct.TYPE_8__* %164, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %163, %156, %139
  store i32 -1, i32* %5, align 4
  br label %197

171:                                              ; preds = %129, %111, %101
  %172 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %173 = load %struct.net_device*, %struct.net_device** %172, align 8
  %174 = icmp ne %struct.net_device* %173, null
  br i1 %174, label %175, label %196

175:                                              ; preds = %171
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = icmp ne %struct.TYPE_9__* %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %190 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @hostap_is_sta_assoc(%struct.TYPE_9__* %188, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %185
  %195 = load %struct.net_device**, %struct.net_device*** %9, align 8
  store %struct.net_device* null, %struct.net_device** %195, align 8
  br label %196

196:                                              ; preds = %194, %185, %180, %175, %171
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %196, %170, %84, %30
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i8*, ...) #1

declare dso_local %struct.net_device* @prism2_rx_get_wds(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @hostap_wds_link_oper(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @hostap_is_sta_assoc(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
