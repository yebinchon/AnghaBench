; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_phy_lookup_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy-core.c_phy_lookup_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_setting = type { i64, i32, i32 }

@settings = common dso_local global %struct.phy_setting* null, align 8
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_setting* @phy_lookup_setting(i32 %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.phy_setting*, align 8
  %10 = alloca %struct.phy_setting*, align 8
  %11 = alloca %struct.phy_setting*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.phy_setting* null, %struct.phy_setting** %10, align 8
  store %struct.phy_setting* null, %struct.phy_setting** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.phy_setting*, %struct.phy_setting** @settings, align 8
  store %struct.phy_setting* %13, %struct.phy_setting** %9, align 8
  br label %14

14:                                               ; preds = %72, %4
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.phy_setting*, %struct.phy_setting** @settings, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.phy_setting* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %14
  %20 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %21 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %27 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = call i64 @test_bit(i64 %28, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %25
  %33 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  store %struct.phy_setting* %33, %struct.phy_setting** %11, align 8
  %34 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %35 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %41 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  store %struct.phy_setting* %46, %struct.phy_setting** %10, align 8
  br label %77

47:                                               ; preds = %39, %32
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = load %struct.phy_setting*, %struct.phy_setting** %10, align 8
  %52 = icmp ne %struct.phy_setting* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %55 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  store %struct.phy_setting* %60, %struct.phy_setting** %10, align 8
  br label %61

61:                                               ; preds = %59, %53, %50
  %62 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %63 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %77

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %47
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %25, %19
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = load %struct.phy_setting*, %struct.phy_setting** %9, align 8
  %76 = getelementptr inbounds %struct.phy_setting, %struct.phy_setting* %75, i32 1
  store %struct.phy_setting* %76, %struct.phy_setting** %9, align 8
  br label %14

77:                                               ; preds = %67, %45, %14
  %78 = load %struct.phy_setting*, %struct.phy_setting** %10, align 8
  %79 = icmp ne %struct.phy_setting* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load %struct.phy_setting*, %struct.phy_setting** %11, align 8
  store %struct.phy_setting* %84, %struct.phy_setting** %10, align 8
  br label %85

85:                                               ; preds = %83, %80, %77
  %86 = load %struct.phy_setting*, %struct.phy_setting** %10, align 8
  ret %struct.phy_setting* %86
}

declare dso_local i32 @ARRAY_SIZE(%struct.phy_setting*) #1

declare dso_local i64 @test_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
