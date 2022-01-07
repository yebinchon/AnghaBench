; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_set_interference_mitigation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_set_interference_mitigation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i64, i64, i32, i32, i32, i32, i32 }

@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_radio_set_interference_mitigation(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43legacy_phy*, align 8
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %6, align 8
  %10 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %11 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %17 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %22 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %15, %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %77

28:                                               ; preds = %20
  %29 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %30 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %43 [
    i32 131, label %32
    i32 129, label %42
    i32 128, label %42
    i32 130, label %42
  ]

32:                                               ; preds = %28
  %33 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %34 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %36 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 130, i32* %5, align 4
  br label %41

40:                                               ; preds = %32
  store i32 129, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %46

42:                                               ; preds = %28, %28, %28
  br label %46

43:                                               ; preds = %28
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %77

46:                                               ; preds = %42, %41
  %47 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %48 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %77

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 129
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @b43legacy_radio_interference_mitigation_disable(%struct.b43legacy_wldev* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %66 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %65, i32 0, i32 3
  store i32 0, i32* %66, align 4
  %67 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %68 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %67, i32 0, i32 5
  store i32 0, i32* %68, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @b43legacy_radio_interference_mitigation_enable(%struct.b43legacy_wldev* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %76 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %53, %43, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @b43legacy_radio_interference_mitigation_disable(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_radio_interference_mitigation_enable(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
