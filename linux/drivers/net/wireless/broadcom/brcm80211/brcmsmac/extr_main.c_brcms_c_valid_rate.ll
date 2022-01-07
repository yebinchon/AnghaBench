; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_valid_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_valid_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.brcms_c_rateset }
%struct.brcms_c_rateset = type { i64, i64*, i32 }
%struct.TYPE_5__ = type { i32, %struct.brcms_c_rateset }

@BRCM_BAND_AUTO = common dso_local global i32 0, align 4
@RSPEC_RATE_MASK = common dso_local global i32 0, align 4
@MCS_TABLE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"wl%d: valid_rate: rate spec 0x%x not in hw_rateset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32, i32, i32)* @brcms_c_valid_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_valid_rate(%struct.brcms_c_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_c_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcms_c_rateset*, align 8
  %11 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @BRCM_BAND_AUTO, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %18 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15, %4
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %25 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store %struct.brcms_c_rateset* %27, %struct.brcms_c_rateset** %10, align 8
  br label %46

28:                                               ; preds = %15
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %30 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %37 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %40 = call i64 @OTHERBANDUNIT(%struct.brcms_c_info* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.brcms_c_rateset* %43, %struct.brcms_c_rateset** %10, align 8
  br label %45

44:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %105

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @is_mcs_rate(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RSPEC_RATE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @MCS_TABLE_SIZE, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %88

57:                                               ; preds = %50
  %58 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %10, align 8
  %59 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @RSPEC_RATE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @isset(i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %105

65:                                               ; preds = %46
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %10, align 8
  %69 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %10, align 8
  %74 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @rspec2rate(i32 %79)
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %105

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %66

87:                                               ; preds = %66
  br label %88

88:                                               ; preds = %87, %56
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %93 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %98 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @brcms_err(i32 %96, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %91, %88
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %82, %57, %44
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @OTHERBANDUNIT(%struct.brcms_c_info*) #1

declare dso_local i64 @is_mcs_rate(i32) #1

declare dso_local i32 @isset(i32, i32) #1

declare dso_local i64 @rspec2rate(i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
