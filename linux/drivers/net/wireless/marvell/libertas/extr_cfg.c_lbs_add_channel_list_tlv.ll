; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_channel_list_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_add_channel_list_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.mrvl_ie_header = type { i8*, i8* }
%struct.chanscanparamset = type { i8*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TLV_TYPE_CHANLIST = common dso_local global i32 0, align 4
@CMD_SCAN_RADIO_TYPE_BG = common dso_local global i32 0, align 4
@LBS_DWELL_ACTIVE = common dso_local global i32 0, align 4
@LBS_DWELL_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32*, i32, i32)* @lbs_add_channel_list_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_add_channel_list_tlv(%struct.lbs_private* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mrvl_ie_header*, align 8
  %11 = alloca %struct.chanscanparamset*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 24, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = bitcast i8* %21 to %struct.mrvl_ie_header*
  store %struct.mrvl_ie_header* %22, %struct.mrvl_ie_header** %10, align 8
  %23 = load i32, i32* @TLV_TYPE_CHANLIST, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.mrvl_ie_header*, %struct.mrvl_ie_header** %10, align 8
  %26 = getelementptr inbounds %struct.mrvl_ie_header, %struct.mrvl_ie_header* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.mrvl_ie_header*, %struct.mrvl_ie_header** %10, align 8
  %30 = getelementptr inbounds %struct.mrvl_ie_header, %struct.mrvl_ie_header* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 16
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @memset(i32* %33, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %79, %4
  %37 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %38 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = bitcast i8* %44 to %struct.chanscanparamset*
  store %struct.chanscanparamset* %45, %struct.chanscanparamset** %11, align 8
  %46 = load i32, i32* @CMD_SCAN_RADIO_TYPE_BG, align 4
  %47 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %48 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %50 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %63 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %42
  %67 = load i32, i32* @LBS_DWELL_ACTIVE, align 4
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %70 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %79

71:                                               ; preds = %42
  %72 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %73 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @LBS_DWELL_PASSIVE, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.chanscanparamset*, %struct.chanscanparamset** %11, align 8
  %78 = getelementptr inbounds %struct.chanscanparamset, %struct.chanscanparamset* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 24
  store i32* %81, i32** %6, align 8
  %82 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %83 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %36

86:                                               ; preds = %36
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 16, %88
  %90 = trunc i64 %89 to i32
  ret i32 %90
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
