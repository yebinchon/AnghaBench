; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_set_phy_uninitted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_set_phy_uninitted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32**, i8*, i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SPURAVOID_DISABLE = common dso_local global i8* null, align 8
@SPURAVOID_AUTO = common dso_local global i8* null, align 8
@STATIC_NUM_RF = common dso_local global i32 0, align 4
@STATIC_NUM_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_set_phy_uninitted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_set_phy_uninitted(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 1
  store i32 65535, i32* %8, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 2
  store i32 2147483647, i32* %10, align 8
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 3
  store i32 65535, i32* %12, align 4
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 4
  store i32 65535, i32* %14, align 8
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 5
  store i32 -1, i32* %16, align 4
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = call i64 @ISNPHY(%struct.brcms_phy* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %1
  %21 = load i8*, i8** @SPURAVOID_DISABLE, align 8
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 10
  store i8* %21, i8** %23, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 14
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @NREV_GE(i32 %27, i32 3)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 14
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @NREV_LT(i32 %34, i32 7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i8*, i8** @SPURAVOID_AUTO, align 8
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %30, %20
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 13
  store i64 0, i64* %43, align 8
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %45 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 62856, i32* %47, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 62856, i32* %51, align 4
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 7
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 128, i32* %55, align 4
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 128, i32* %59, align 4
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 12
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 40, i32* %64, align 4
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 12
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 40, i32* %69, align 4
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  br label %76

72:                                               ; preds = %1
  %73 = load i8*, i8** @SPURAVOID_AUTO, align 8
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 10
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %72, %41
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 8
  store i32 65535, i32* %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %103, %76
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @STATIC_NUM_RF, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @STATIC_NUM_BB, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 9
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 -1, i32* %98, align 4
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %84

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %79

106:                                              ; preds = %79
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
