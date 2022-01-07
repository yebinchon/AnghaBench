; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_static_wepkey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_static_wepkey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.il_wep_cmd = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32*, i64 }
%struct.il_host_cmd = type { i64, i32, %struct.il_wep_cmd*, i32 }

@WEP_KEYS_MAX = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@C_WEPKEY = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i32 0, align 4
@WEP_KEY_WEP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32)* @il4965_static_wepkey_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_static_wepkey_cmd(%struct.il_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.il_wep_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.il_host_cmd, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @WEP_KEYS_MAX, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = add i64 16, %17
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = bitcast i64* %20 to %struct.il_wep_cmd*
  store %struct.il_wep_cmd* %21, %struct.il_wep_cmd** %9, align 8
  store i64 16, i64* %10, align 8
  %22 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 1
  %24 = load i32, i32* @CMD_SYNC, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 2
  %26 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  store %struct.il_wep_cmd* %26, %struct.il_wep_cmd** %25, align 8
  %27 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 3
  %28 = load i32, i32* @C_WEPKEY, align 4
  store i32 %28, i32* %27, align 8
  store i32 0, i32* %12, align 4
  %29 = call i32 (...) @might_sleep()
  %30 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* @WEP_KEYS_MAX, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = add i64 %31, %34
  %36 = call i32 @memset(%struct.il_wep_cmd* %30, i32 0, i64 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %108, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @WEP_KEYS_MAX, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %111

41:                                               ; preds = %37
  %42 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %53 = getelementptr inbounds %struct.il_wep_cmd, %struct.il_wep_cmd* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %51, i32* %58, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %41
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %64 = getelementptr inbounds %struct.il_wep_cmd, %struct.il_wep_cmd* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  store i32 1, i32* %12, align 4
  br label %79

70:                                               ; preds = %41
  %71 = load i32, i32* @WEP_INVALID_OFFSET, align 4
  %72 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %73 = getelementptr inbounds %struct.il_wep_cmd, %struct.il_wep_cmd* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %61
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %82 = getelementptr inbounds %struct.il_wep_cmd, %struct.il_wep_cmd* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i64 %80, i64* %87, align 8
  %88 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %89 = getelementptr inbounds %struct.il_wep_cmd, %struct.il_wep_cmd* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @memcpy(i32* %96, i32 %105, i64 %106)
  br label %108

108:                                              ; preds = %79
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %37

111:                                              ; preds = %37
  %112 = load i32, i32* @WEP_KEY_WEP_TYPE, align 4
  %113 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %114 = getelementptr inbounds %struct.il_wep_cmd, %struct.il_wep_cmd* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @WEP_KEYS_MAX, align 4
  %116 = load %struct.il_wep_cmd*, %struct.il_wep_cmd** %9, align 8
  %117 = getelementptr inbounds %struct.il_wep_cmd, %struct.il_wep_cmd* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @WEP_KEYS_MAX, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %11, i32 0, i32 0
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %111
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127, %111
  %131 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %132 = call i32 @il_send_cmd(%struct.il_priv* %131, %struct.il_host_cmd* %11)
  store i32 %132, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %134

133:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %134

134:                                              ; preds = %133, %130
  %135 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @might_sleep(...) #2

declare dso_local i32 @memset(%struct.il_wep_cmd*, i32, i64) #2

declare dso_local i32 @memcpy(i32*, i32, i64) #2

declare dso_local i32 @il_send_cmd(%struct.il_priv*, %struct.il_host_cmd*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
