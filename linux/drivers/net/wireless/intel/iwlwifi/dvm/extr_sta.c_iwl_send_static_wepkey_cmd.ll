; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_send_static_wepkey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_send_static_wepkey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.iwl_wep_cmd = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32*, i64 }
%struct.iwl_host_cmd = type { i64*, i32, i32 }

@WEP_KEYS_MAX = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i32 0, align 4
@WEP_KEY_WEP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*, i32)* @iwl_send_static_wepkey_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_static_wepkey_cmd(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_rxon_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.iwl_wep_cmd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.iwl_host_cmd, align 8
  %15 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @WEP_KEYS_MAX, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 16, %18
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = bitcast i32* %21 to %struct.iwl_wep_cmd*
  store %struct.iwl_wep_cmd* %22, %struct.iwl_wep_cmd** %12, align 8
  store i64 16, i64* %13, align 8
  %23 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  store i64* null, i64** %23, align 8
  %24 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 1
  %25 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %26 = ptrtoint %struct.iwl_wep_cmd* %25 to i32
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 2
  %28 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 4
  %31 = call i32 (...) @might_sleep()
  %32 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i32, i32* @WEP_KEYS_MAX, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  %37 = add i64 %33, %36
  %38 = call i32 @memset(%struct.iwl_wep_cmd* %32, i32 0, i64 %37)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %121, %3
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @WEP_KEYS_MAX, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %124

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %46 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 8
  %52 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %53 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %43
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %64 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  store i32 1, i32* %9, align 4
  br label %79

70:                                               ; preds = %43
  %71 = load i32, i32* @WEP_INVALID_OFFSET, align 4
  %72 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %73 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %61
  %80 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %81 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %89 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i64 %87, i64* %94, align 8
  %95 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %96 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %105 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %6, align 8
  %113 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @memcpy(i32* %103, i32 %111, i64 %119)
  br label %121

121:                                              ; preds = %79
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %39

124:                                              ; preds = %39
  %125 = load i32, i32* @WEP_KEY_WEP_TYPE, align 4
  %126 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %127 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @WEP_KEYS_MAX, align 4
  %129 = load %struct.iwl_wep_cmd*, %struct.iwl_wep_cmd** %12, align 8
  %130 = getelementptr inbounds %struct.iwl_wep_cmd, %struct.iwl_wep_cmd* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @WEP_KEYS_MAX, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = load i64, i64* %13, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %14, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  store i64 %136, i64* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %124
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142, %124
  %146 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %147 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %146, %struct.iwl_host_cmd* %14)
  store i32 %147, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %149

148:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %149

149:                                              ; preds = %148, %145
  %150 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @might_sleep(...) #2

declare dso_local i32 @memset(%struct.iwl_wep_cmd*, i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32, i64) #2

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
