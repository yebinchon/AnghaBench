; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_set_keyparamset_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_set_keyparamset_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mwifiex_ie_type_key_param_set = type { i64*, i8*, i8*, i8*, i8*, i8* }

@NUM_WEP_KEYS = common dso_local global i64 0, align 8
@WLAN_KEY_LEN_WEP40 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP104 = common dso_local global i32 0, align 4
@TLV_TYPE_KEY_MATERIAL = common dso_local global i32 0, align 4
@KEY_TYPE_ID_WEP = common dso_local global i32 0, align 4
@KEY_ENABLED = common dso_local global i32 0, align 4
@KEY_UNICAST = common dso_local global i32 0, align 4
@KEY_MCAST = common dso_local global i32 0, align 4
@HostCmd_WEP_KEY_INDEX_MASK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"key%d Length = %d is incorrect\0A\00", align 1
@KEYPARAMSET_WEP_FIXED_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ie_type_key_param_set*, i32*)* @mwifiex_set_keyparamset_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_set_keyparamset_wep(%struct.mwifiex_private* %0, %struct.mwifiex_ie_type_key_param_set* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_ie_type_key_param_set*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_ie_type_key_param_set* %1, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %162, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* @NUM_WEP_KEYS, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %165

14:                                               ; preds = %10
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WLAN_KEY_LEN_WEP104, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %136

34:                                               ; preds = %24, %14
  %35 = load i32, i32* @TLV_TYPE_KEY_MATERIAL, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %38 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 8
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %49 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @KEY_TYPE_ID_WEP, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %53 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @KEY_ENABLED, align 4
  %55 = load i32, i32* @KEY_UNICAST, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @KEY_MCAST, align 4
  %58 = or i32 %56, %57
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %61 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %71 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %74 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 %72, i64* %76, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %79 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HostCmd_WEP_KEY_INDEX_MASK, align 8
  %82 = and i64 %80, %81
  %83 = icmp eq i64 %77, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %34
  %85 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %86 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  store i64 1, i64* %88, align 8
  br label %94

89:                                               ; preds = %34
  %90 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %91 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %96 = getelementptr inbounds %struct.mwifiex_ie_type_key_param_set, %struct.mwifiex_ie_type_key_param_set* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = bitcast i64* %98 to i32*
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %108 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memmove(i32* %99, i32 %106, i32 %113)
  %115 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %116 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 8
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 4
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load %struct.mwifiex_ie_type_key_param_set*, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  %131 = bitcast %struct.mwifiex_ie_type_key_param_set* %130 to i64*
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = bitcast i64* %134 to %struct.mwifiex_ie_type_key_param_set*
  store %struct.mwifiex_ie_type_key_param_set* %135, %struct.mwifiex_ie_type_key_param_set** %6, align 8
  br label %161

136:                                              ; preds = %24
  %137 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %138 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  br label %162

146:                                              ; preds = %136
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %148 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @ERROR, align 4
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %151, 1
  %153 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %154 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %153, i32 0, i32 1
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i64, i64* %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mwifiex_dbg(i32 %149, i32 %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %152, i32 %159)
  store i32 -1, i32* %4, align 4
  br label %166

161:                                              ; preds = %94
  br label %162

162:                                              ; preds = %161, %145
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %10

165:                                              ; preds = %10
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memmove(i32*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
