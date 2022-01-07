; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to copy WPA IE, too big\0A\00", align 1
@CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cmd: Set Wpa_ie_len=%d IE=%#x\0A\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@WLAN_EID_RSN = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"info: reset wpa_ie_len=%d IE=%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*, i32)* @mwifiex_set_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_set_wpa_ie(%struct.mwifiex_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %75

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ugt i64 %12, 8
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %102

20:                                               ; preds = %10
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memcpy(i64* %23, i32* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CMD, align 4
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %32, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36, i64 %41)
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %44 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %20
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %74

54:                                               ; preds = %20
  %55 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %56 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WLAN_EID_RSN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %73

66:                                               ; preds = %54
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %68 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %71 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %50
  br label %101

75:                                               ; preds = %3
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @memset(i64* %78, i32 0, i32 8)
  %80 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %81 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %80, i32 0, i32 1
  store i32 0, i32* %81, align 8
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @INFO, align 4
  %86 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %87 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %90 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %84, i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %88, i64 %93)
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %99 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %75, %74
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %14
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
