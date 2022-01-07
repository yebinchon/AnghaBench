; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_usr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_usr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_vif = type { i32 }
%struct.cfg80211_wowlan = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@WOW_PATTERN_SIZE = common dso_local global i32 0, align 4
@WOW_LIST_ID = common dso_local global i32 0, align 4
@WOW_FILTER_OPTION_NWK_DISASSOC = common dso_local global i32 0, align 4
@WOW_FILTER_OPTION_MAGIC_PACKET = common dso_local global i32 0, align 4
@WOW_FILTER_OPTION_GTK_ERROR = common dso_local global i32 0, align 4
@WOW_FILTER_OPTION_EAP_REQ = common dso_local global i32 0, align 4
@WOW_FILTER_OPTION_8021X_4WAYHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.ath6kl_vif*, %struct.cfg80211_wowlan*, i32*)* @ath6kl_wow_usr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wow_usr(%struct.ath6kl* %0, %struct.ath6kl_vif* %1, %struct.cfg80211_wowlan* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca %struct.ath6kl_vif*, align 8
  %8 = alloca %struct.cfg80211_wowlan*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %6, align 8
  store %struct.ath6kl_vif* %1, %struct.ath6kl_vif** %7, align 8
  store %struct.cfg80211_wowlan* %2, %struct.cfg80211_wowlan** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @WOW_PATTERN_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %20

20:                                               ; preds = %95, %4
  %21 = load i64, i64* %14, align 8
  %22 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %23 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %20
  %27 = bitcast i32* %19 to i32**
  %28 = mul nuw i64 4, %17
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32** %27, i32 0, i32 %29)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %64, %26
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %34 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %33, i32 0, i32 6
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %32, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %31
  %42 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %43 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %42, i32 0, i32 6
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sdiv i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = srem i32 %54, 8
  %56 = shl i32 1, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %41
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %19, i64 %61
  store i32 255, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %31

67:                                               ; preds = %31
  %68 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %69 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %7, align 8
  %72 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WOW_LIST_ID, align 4
  %75 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %76 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %75, i32 0, i32 6
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %83 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %82, i32 0, i32 6
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ath6kl_wmi_add_wow_pattern_cmd(i32 %70, i32 %73, i32 %74, i32 %81, i32 0, i32 %88, i32* %19)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %67
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %149

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %14, align 8
  br label %20

98:                                               ; preds = %20
  %99 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %100 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32, i32* @WOW_FILTER_OPTION_NWK_DISASSOC, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %110 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* @WOW_FILTER_OPTION_MAGIC_PACKET, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %120 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32, i32* @WOW_FILTER_OPTION_GTK_ERROR, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %130 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32, i32* @WOW_FILTER_OPTION_EAP_REQ, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %8, align 8
  %140 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* @WOW_FILTER_OPTION_8021X_4WAYHS, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %138
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %149

149:                                              ; preds = %148, %92
  %150 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @ath6kl_wmi_add_wow_pattern_cmd(i32, i32, i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
