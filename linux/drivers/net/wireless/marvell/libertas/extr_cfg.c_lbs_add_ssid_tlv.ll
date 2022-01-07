; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_ssid_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_ssid_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrvl_ie_ssid_param_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@TLV_TYPE_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @lbs_add_ssid_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_add_ssid_tlv(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mrvl_ie_ssid_param_set*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.mrvl_ie_ssid_param_set*
  store %struct.mrvl_ie_ssid_param_set* %10, %struct.mrvl_ie_ssid_param_set** %7, align 8
  %11 = load i32, i32* @TLV_TYPE_SSID, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = load %struct.mrvl_ie_ssid_param_set*, %struct.mrvl_ie_ssid_param_set** %7, align 8
  %14 = getelementptr inbounds %struct.mrvl_ie_ssid_param_set, %struct.mrvl_ie_ssid_param_set* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.mrvl_ie_ssid_param_set*, %struct.mrvl_ie_ssid_param_set** %7, align 8
  %19 = getelementptr inbounds %struct.mrvl_ie_ssid_param_set, %struct.mrvl_ie_ssid_param_set* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.mrvl_ie_ssid_param_set*, %struct.mrvl_ie_ssid_param_set** %7, align 8
  %22 = getelementptr inbounds %struct.mrvl_ie_ssid_param_set, %struct.mrvl_ie_ssid_param_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @memcpy(i32 %23, i32* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 16, %28
  %30 = trunc i64 %29 to i32
  ret i32 %30
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
