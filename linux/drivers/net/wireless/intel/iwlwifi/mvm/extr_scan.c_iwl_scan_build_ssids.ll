; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_scan_build_ssids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_scan_build_ssids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_scan_params = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.iwl_ssid_ie = type { i64, i32, i8* }

@PROBE_OPTION_MAX = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm_scan_params*, %struct.iwl_ssid_ie*, i32*)* @iwl_scan_build_ssids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_scan_build_ssids(%struct.iwl_mvm_scan_params* %0, %struct.iwl_ssid_ie* %1, i32* %2) #0 {
  %4 = alloca %struct.iwl_mvm_scan_params*, align 8
  %5 = alloca %struct.iwl_ssid_ie*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_mvm_scan_params* %0, %struct.iwl_mvm_scan_params** %4, align 8
  store %struct.iwl_ssid_ie* %1, %struct.iwl_ssid_ie** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %78, %3
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PROBE_OPTION_MAX, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %83

23:                                               ; preds = %21
  %24 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %78

35:                                               ; preds = %23
  %36 = load i8*, i8** @WLAN_EID_SSID, align 8
  %37 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %37, i64 %39
  %41 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %40, i32 0, i32 2
  store i8* %36, i8** %41, align 8
  %42 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %42, i32 0, i32 3
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %51, i64 %53
  %55 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %54, i32 0, i32 0
  store i64 %50, i64* %55, align 8
  %56 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %56, i64 %58
  %60 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %71, i64 %73
  %75 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memcpy(i32 %61, i32 %70, i64 %76)
  br label %78

78:                                               ; preds = %35, %34
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  br label %14

83:                                               ; preds = %21
  %84 = load i32*, i32** %6, align 8
  store i32 0, i32* %84, align 4
  %85 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %172, %83
  %90 = load i32, i32* %8, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @PROBE_OPTION_MAX, align 4
  %95 = icmp slt i32 %93, %94
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  br i1 %97, label %98, label %177

98:                                               ; preds = %96
  %99 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %100 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %116 = call i32 @iwl_ssid_exist(i32 %106, i64 %114, %struct.iwl_ssid_ie* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %165

119:                                              ; preds = %98
  %120 = load i8*, i8** @WLAN_EID_SSID, align 8
  %121 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %121, i64 %123
  %125 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %124, i32 0, i32 2
  store i8* %120, i8** %125, align 8
  %126 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %134, i64 %136
  %138 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %137, i32 0, i32 0
  store i64 %133, i64* %138, align 8
  %139 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %139, i64 %141
  %143 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %4, align 8
  %146 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.iwl_ssid_ie*, %struct.iwl_ssid_ie** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %153, i64 %155
  %157 = getelementptr inbounds %struct.iwl_ssid_ie, %struct.iwl_ssid_ie* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @memcpy(i32 %144, i32 %152, i64 %158)
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @BIT(i32 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %171

165:                                              ; preds = %98
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @BIT(i32 %166)
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %119
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %8, align 4
  br label %89

177:                                              ; preds = %96
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @iwl_ssid_exist(i32, i64, %struct.iwl_ssid_ie*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
