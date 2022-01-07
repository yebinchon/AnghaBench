; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2057.c_r2057_get_chantabent_rev7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2057.c_r2057_get_chantabent_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }
%struct.b43_nphy_chantabent_rev7 = type { i64 }
%struct.b43_nphy_chantabent_rev7_2g = type { i64 }

@b43_nphy_chantab_phy_rev8_radio_rev5 = common dso_local global i8* null, align 8
@b43_nphy_chantab_phy_rev16_radio_rev9 = common dso_local global i8* null, align 8
@b43_nphy_chantab_phy_rev17_radio_rev14 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r2057_get_chantabent_rev7(%struct.b43_wldev* %0, i64 %1, %struct.b43_nphy_chantabent_rev7** %2, %struct.b43_nphy_chantabent_rev7_2g** %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.b43_nphy_chantabent_rev7**, align 8
  %8 = alloca %struct.b43_nphy_chantabent_rev7_2g**, align 8
  %9 = alloca %struct.b43_phy*, align 8
  %10 = alloca %struct.b43_nphy_chantabent_rev7*, align 8
  %11 = alloca %struct.b43_nphy_chantabent_rev7_2g*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.b43_nphy_chantabent_rev7** %2, %struct.b43_nphy_chantabent_rev7*** %7, align 8
  store %struct.b43_nphy_chantabent_rev7_2g** %3, %struct.b43_nphy_chantabent_rev7_2g*** %8, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  store %struct.b43_phy* %15, %struct.b43_phy** %9, align 8
  store %struct.b43_nphy_chantabent_rev7* null, %struct.b43_nphy_chantabent_rev7** %10, align 8
  store %struct.b43_nphy_chantabent_rev7_2g* null, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  %16 = load %struct.b43_nphy_chantabent_rev7**, %struct.b43_nphy_chantabent_rev7*** %7, align 8
  store %struct.b43_nphy_chantabent_rev7* null, %struct.b43_nphy_chantabent_rev7** %16, align 8
  %17 = load %struct.b43_nphy_chantabent_rev7_2g**, %struct.b43_nphy_chantabent_rev7_2g*** %8, align 8
  store %struct.b43_nphy_chantabent_rev7_2g* null, %struct.b43_nphy_chantabent_rev7_2g** %17, align 8
  %18 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %54 [
    i32 8, label %21
    i32 16, label %32
    i32 17, label %43
  ]

21:                                               ; preds = %4
  %22 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** @b43_nphy_chantab_phy_rev8_radio_rev5, align 8
  %28 = bitcast i8* %27 to %struct.b43_nphy_chantabent_rev7_2g*
  store %struct.b43_nphy_chantabent_rev7_2g* %28, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  %29 = load i8*, i8** @b43_nphy_chantab_phy_rev8_radio_rev5, align 8
  %30 = call i32 @ARRAY_SIZE(i8* %29)
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %26, %21
  br label %55

32:                                               ; preds = %4
  %33 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %34 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** @b43_nphy_chantab_phy_rev16_radio_rev9, align 8
  %39 = bitcast i8* %38 to %struct.b43_nphy_chantabent_rev7*
  store %struct.b43_nphy_chantabent_rev7* %39, %struct.b43_nphy_chantabent_rev7** %10, align 8
  %40 = load i8*, i8** @b43_nphy_chantab_phy_rev16_radio_rev9, align 8
  %41 = call i32 @ARRAY_SIZE(i8* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %37, %32
  br label %55

43:                                               ; preds = %4
  %44 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %45 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 14
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** @b43_nphy_chantab_phy_rev17_radio_rev14, align 8
  %50 = bitcast i8* %49 to %struct.b43_nphy_chantabent_rev7_2g*
  store %struct.b43_nphy_chantabent_rev7_2g* %50, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  %51 = load i8*, i8** @b43_nphy_chantab_phy_rev17_radio_rev14, align 8
  %52 = call i32 @ARRAY_SIZE(i8* %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %55

54:                                               ; preds = %4
  br label %55

55:                                               ; preds = %54, %53, %42, %31
  %56 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %10, align 8
  %57 = icmp ne %struct.b43_nphy_chantabent_rev7* %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %10, align 8
  %65 = getelementptr inbounds %struct.b43_nphy_chantabent_rev7, %struct.b43_nphy_chantabent_rev7* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %10, align 8
  %71 = load %struct.b43_nphy_chantabent_rev7**, %struct.b43_nphy_chantabent_rev7*** %7, align 8
  store %struct.b43_nphy_chantabent_rev7* %70, %struct.b43_nphy_chantabent_rev7** %71, align 8
  br label %106

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %13, align 4
  %76 = load %struct.b43_nphy_chantabent_rev7*, %struct.b43_nphy_chantabent_rev7** %10, align 8
  %77 = getelementptr inbounds %struct.b43_nphy_chantabent_rev7, %struct.b43_nphy_chantabent_rev7* %76, i32 1
  store %struct.b43_nphy_chantabent_rev7* %77, %struct.b43_nphy_chantabent_rev7** %10, align 8
  br label %59

78:                                               ; preds = %59
  br label %106

79:                                               ; preds = %55
  %80 = load %struct.b43_nphy_chantabent_rev7_2g*, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  %81 = icmp ne %struct.b43_nphy_chantabent_rev7_2g* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %97, %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load %struct.b43_nphy_chantabent_rev7_2g*, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  %89 = getelementptr inbounds %struct.b43_nphy_chantabent_rev7_2g, %struct.b43_nphy_chantabent_rev7_2g* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.b43_nphy_chantabent_rev7_2g*, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  %95 = load %struct.b43_nphy_chantabent_rev7_2g**, %struct.b43_nphy_chantabent_rev7_2g*** %8, align 8
  store %struct.b43_nphy_chantabent_rev7_2g* %94, %struct.b43_nphy_chantabent_rev7_2g** %95, align 8
  br label %106

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = load %struct.b43_nphy_chantabent_rev7_2g*, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  %101 = getelementptr inbounds %struct.b43_nphy_chantabent_rev7_2g, %struct.b43_nphy_chantabent_rev7_2g* %100, i32 1
  store %struct.b43_nphy_chantabent_rev7_2g* %101, %struct.b43_nphy_chantabent_rev7_2g** %11, align 8
  br label %83

102:                                              ; preds = %83
  br label %105

103:                                              ; preds = %79
  %104 = call i32 @B43_WARN_ON(i32 1)
  br label %105

105:                                              ; preds = %103, %102
  br label %106

106:                                              ; preds = %69, %93, %105, %78
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
