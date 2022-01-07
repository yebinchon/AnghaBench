; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_bringup_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_bringup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, i32, %struct.TYPE_6__, %struct.phy_device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.phy_device = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, %struct.phylink*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.phylink_link_state = type { i32, i32 }

@supported = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@phylink_phy_change = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PHY [%s] driver [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"phy: setting supported %*pb advertising %*pb\0A\00", align 1
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, %struct.phy_device*)* @phylink_bringup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_bringup_phy(%struct.phylink* %0, %struct.phy_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylink*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.phylink_link_state, align 4
  %7 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %4, align 8
  store %struct.phy_device* %1, %struct.phy_device** %5, align 8
  %8 = load i32, i32* @supported, align 4
  %9 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %8)
  %10 = call i32 @memset(%struct.phylink_link_state* %6, i32 0, i32 8)
  %11 = load i32, i32* @supported, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @linkmode_copy(i32 %11, i32 %14)
  %16 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @linkmode_copy(i32 %17, i32 %20)
  %22 = load %struct.phylink*, %struct.phylink** %4, align 8
  %23 = getelementptr inbounds %struct.phylink, %struct.phylink* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @supported, align 4
  %28 = load i32, i32* @Pause, align 4
  %29 = call i64 @phylink_test(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @Pause, align 4
  %35 = call i32 @phylink_set(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* @supported, align 4
  %38 = load i32, i32* @Asym_Pause, align 4
  %39 = call i64 @phylink_test(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @Asym_Pause, align 4
  %45 = call i32 @phylink_set(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.phylink*, %struct.phylink** %4, align 8
  %48 = load i32, i32* @supported, align 4
  %49 = call i32 @phylink_validate(%struct.phylink* %47, i32 %48, %struct.phylink_link_state* %6)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %122

54:                                               ; preds = %46
  %55 = load %struct.phylink*, %struct.phylink** %4, align 8
  %56 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 5
  store %struct.phylink* %55, %struct.phylink** %57, align 8
  %58 = load i32, i32* @phylink_phy_change, align 4
  %59 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.phylink*, %struct.phylink** %4, align 8
  %62 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @dev_name(i32* %64)
  %66 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %67 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @phylink_info(%struct.phylink* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %70)
  %72 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %73 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %72, i32 0, i32 1
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.phylink*, %struct.phylink** %4, align 8
  %76 = getelementptr inbounds %struct.phylink, %struct.phylink* %75, i32 0, i32 1
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %79 = load %struct.phylink*, %struct.phylink** %4, align 8
  %80 = getelementptr inbounds %struct.phylink, %struct.phylink* %79, i32 0, i32 3
  store %struct.phy_device* %78, %struct.phy_device** %80, align 8
  %81 = load %struct.phylink*, %struct.phylink** %4, align 8
  %82 = getelementptr inbounds %struct.phylink, %struct.phylink* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @supported, align 4
  %85 = call i32 @linkmode_copy(i32 %83, i32 %84)
  %86 = load %struct.phylink*, %struct.phylink** %4, align 8
  %87 = getelementptr inbounds %struct.phylink, %struct.phylink* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %6, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @linkmode_copy(i32 %89, i32 %91)
  %93 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @linkmode_copy(i32 %95, i32 %97)
  %99 = load %struct.phylink*, %struct.phylink** %4, align 8
  %100 = getelementptr inbounds %struct.phylink, %struct.phylink* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.phylink*, %struct.phylink** %4, align 8
  %106 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %107 = load %struct.phylink*, %struct.phylink** %4, align 8
  %108 = getelementptr inbounds %struct.phylink, %struct.phylink* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %111 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %112 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @phylink_dbg(%struct.phylink* %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %109, i32 %110, i32 %113)
  %115 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %116 = call i64 @phy_interrupt_is_valid(%struct.phy_device* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %54
  %119 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %120 = call i32 @phy_request_interrupt(%struct.phy_device* %119)
  br label %121

121:                                              ; preds = %118, %54
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %52
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i32 @memset(%struct.phylink_link_state*, i32, i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i64 @phylink_test(i32, i32) #1

declare dso_local i32 @phylink_set(i32, i32) #1

declare dso_local i32 @phylink_validate(%struct.phylink*, i32, %struct.phylink_link_state*) #1

declare dso_local i32 @phylink_info(%struct.phylink*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phylink_dbg(%struct.phylink*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @phy_interrupt_is_valid(%struct.phy_device*) #1

declare dso_local i32 @phy_request_interrupt(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
