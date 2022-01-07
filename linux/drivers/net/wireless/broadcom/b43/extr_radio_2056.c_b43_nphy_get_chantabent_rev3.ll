; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b43_nphy_get_chantabent_rev3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b43_nphy_get_chantabent_rev3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_nphy_channeltab_entry_rev3 = type { i64 }
%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32 }

@b43_nphy_channeltab_phy_rev3 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_phy_rev4 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_radio_rev5 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_radio_rev6 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_radio_rev7_9 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_radio_rev8 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8
@b43_nphy_channeltab_radio_rev11 = common dso_local global %struct.b43_nphy_channeltab_entry_rev3* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.b43_nphy_channeltab_entry_rev3* @b43_nphy_get_chantabent_rev3(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.b43_phy*, align 8
  %7 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  store %struct.b43_phy* %11, %struct.b43_phy** %6, align 8
  %12 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 3, label %15
    i32 4, label %19
  ]

15:                                               ; preds = %2
  %16 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_phy_rev3, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %16, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %17 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_phy_rev3, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %17)
  store i32 %18, i32* %8, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_phy_rev4, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %20, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %21 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_phy_rev4, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %21)
  store i32 %22, i32* %8, align 4
  br label %50

23:                                               ; preds = %2
  %24 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %47 [
    i32 5, label %27
    i32 6, label %31
    i32 7, label %35
    i32 9, label %35
    i32 8, label %39
    i32 11, label %43
  ]

27:                                               ; preds = %23
  %28 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev5, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %28, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %29 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev5, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %29)
  store i32 %30, i32* %8, align 4
  br label %49

31:                                               ; preds = %23
  %32 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev6, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %32, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %33 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev6, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %33)
  store i32 %34, i32* %8, align 4
  br label %49

35:                                               ; preds = %23, %23
  %36 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev7_9, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %36, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %37 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev7_9, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %37)
  store i32 %38, i32* %8, align 4
  br label %49

39:                                               ; preds = %23
  %40 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev8, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %40, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %41 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev8, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %41)
  store i32 %42, i32* %8, align 4
  br label %49

43:                                               ; preds = %23
  %44 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev11, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %44, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %45 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** @b43_nphy_channeltab_radio_rev11, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3* %45)
  store i32 %46, i32* %8, align 4
  br label %49

47:                                               ; preds = %23
  %48 = call i32 @B43_WARN_ON(i32 1)
  store %struct.b43_nphy_channeltab_entry_rev3* null, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  br label %70

49:                                               ; preds = %43, %39, %35, %31, %27
  br label %50

50:                                               ; preds = %49, %19, %15
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %57 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev3, %struct.b43_nphy_channeltab_entry_rev3* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %62, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  br label %70

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  %68 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev3, %struct.b43_nphy_channeltab_entry_rev3* %67, i32 1
  store %struct.b43_nphy_channeltab_entry_rev3* %68, %struct.b43_nphy_channeltab_entry_rev3** %7, align 8
  br label %51

69:                                               ; preds = %51
  store %struct.b43_nphy_channeltab_entry_rev3* null, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  br label %70

70:                                               ; preds = %69, %61, %47
  %71 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %3, align 8
  ret %struct.b43_nphy_channeltab_entry_rev3* %71
}

declare dso_local i32 @ARRAY_SIZE(%struct.b43_nphy_channeltab_entry_rev3*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
