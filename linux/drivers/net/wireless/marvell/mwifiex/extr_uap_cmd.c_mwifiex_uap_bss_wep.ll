; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_bss_wep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_bss_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_tlv_wep_key = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.mwifiex_uap_bss_param = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP40 = common dso_local global i64 0, align 8
@WLAN_KEY_LEN_WEP104 = common dso_local global i64 0, align 8
@TLV_TYPE_UAP_WEP_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i8*, i32*)* @mwifiex_uap_bss_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_uap_bss_wep(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.host_cmd_tlv_wep_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mwifiex_uap_bss_param*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32**, i32*** %4, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.mwifiex_uap_bss_param*
  store %struct.mwifiex_uap_bss_param* %17, %struct.mwifiex_uap_bss_param** %11, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %140, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NUM_WEP_KEYS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %143

22:                                               ; preds = %18
  %23 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %24 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %139

32:                                               ; preds = %22
  %33 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %34 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WLAN_KEY_LEN_WEP40, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %32
  %44 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %45 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WLAN_KEY_LEN_WEP104, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %139

54:                                               ; preds = %43, %32
  %55 = load i32*, i32** %10, align 8
  %56 = bitcast i32* %55 to %struct.host_cmd_tlv_wep_key*
  store %struct.host_cmd_tlv_wep_key* %56, %struct.host_cmd_tlv_wep_key** %7, align 8
  %57 = load i64, i64* @TLV_TYPE_UAP_WEP_KEY, align 8
  %58 = call i8* @cpu_to_le16(i64 %57)
  %59 = load %struct.host_cmd_tlv_wep_key*, %struct.host_cmd_tlv_wep_key** %7, align 8
  %60 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, %struct.host_cmd_tlv_wep_key* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %63 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 2
  %71 = call i8* @cpu_to_le16(i64 %70)
  %72 = load %struct.host_cmd_tlv_wep_key*, %struct.host_cmd_tlv_wep_key** %7, align 8
  %73 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, %struct.host_cmd_tlv_wep_key* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  %75 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %76 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.host_cmd_tlv_wep_key*, %struct.host_cmd_tlv_wep_key** %7, align 8
  %84 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, %struct.host_cmd_tlv_wep_key* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %86 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.host_cmd_tlv_wep_key*, %struct.host_cmd_tlv_wep_key** %7, align 8
  %94 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, %struct.host_cmd_tlv_wep_key* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.host_cmd_tlv_wep_key*, %struct.host_cmd_tlv_wep_key** %7, align 8
  %96 = getelementptr inbounds %struct.host_cmd_tlv_wep_key, %struct.host_cmd_tlv_wep_key* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %99 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %107 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @memcpy(i32 %97, i32 %105, i64 %113)
  %115 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %116 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 6, %122
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  %128 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %11, align 8
  %129 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add i64 6, %135
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 %136
  store i32* %138, i32** %10, align 8
  br label %139

139:                                              ; preds = %54, %43, %22
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %18

143:                                              ; preds = %18
  %144 = load i32, i32* %8, align 4
  %145 = load i32*, i32** %6, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32*, i32** %10, align 8
  %147 = load i32**, i32*** %4, align 8
  store i32* %146, i32** %147, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
