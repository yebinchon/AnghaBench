; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_prepare_phy_data_for_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_prepare_phy_data_for_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@B43legacy_LO_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @prepare_phy_data_for_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_phy_data_for_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 0
  store %struct.b43legacy_phy* %6, %struct.b43legacy_phy** %3, align 8
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %8 = call i32 @b43legacy_default_baseband_attenuation(%struct.b43legacy_wldev* %7)
  %9 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %9, i32 0, i32 18
  store i32 %8, i32* %10, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %12 = call i32 @b43legacy_default_radio_attenuation(%struct.b43legacy_wldev* %11)
  %13 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %14 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %13, i32 0, i32 17
  store i32 %12, i32* %14, align 4
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = call i32 @b43legacy_default_txctl1(%struct.b43legacy_wldev* %15)
  %17 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %18 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %17, i32 0, i32 16
  store i32 %16, i32* %18, align 8
  %19 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %20 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %19, i32 0, i32 0
  store i32 65535, i32* %20, align 8
  %21 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %21, i32 0, i32 15
  store i64 0, i64* %22, align 8
  %23 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %24 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %23, i32 0, i32 14
  store i64 0, i64* %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %39, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %28 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %34 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 -1000, i32* %38, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %25

42:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %46 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %53 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %63 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %62, i32 0, i32 3
  store i32 65535, i32* %63, align 8
  %64 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %65 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %64, i32 0, i32 4
  store i32 65535, i32* %65, align 4
  %66 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %67 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %66, i32 0, i32 5
  store i32 0, i32* %67, align 8
  %68 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %69 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %68, i32 0, i32 6
  store i32 0, i32* %69, align 4
  %70 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %71 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %70, i32 0, i32 7
  store i32 0, i32* %71, align 8
  %72 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %73 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %72, i32 0, i32 8
  store i32 65535, i32* %73, align 4
  %74 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %75 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %74, i32 0, i32 13
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memset(i64 %76, i32 255, i32 8)
  %78 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %79 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %78, i32 0, i32 12
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @memset(i64 %80, i32 0, i32 8)
  %82 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %83 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %82, i32 0, i32 11
  store i64 0, i64* %83, align 8
  %84 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %85 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %84, i32 0, i32 10
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %61
  %89 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %90 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @B43legacy_LO_COUNT, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memset(i64 %91, i32 0, i32 %95)
  br label %97

97:                                               ; preds = %88, %61
  %98 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %99 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @memset(i64 %100, i32 0, i32 8)
  ret void
}

declare dso_local i32 @b43legacy_default_baseband_attenuation(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_default_radio_attenuation(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_default_txctl1(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
