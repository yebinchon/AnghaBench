; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, i32, i64, i64, i32, i64, i64, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"configuring for %s/%s link mode\0A\00", align 1
@PHYLINK_DISABLE_STOPPED = common dso_local global i32 0, align 4
@MLO_AN_FIXED = common dso_local global i64 0, align 8
@phylink_link_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"netdev link\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phylink_start(%struct.phylink* %0) #0 {
  %2 = alloca %struct.phylink*, align 8
  %3 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.phylink*, %struct.phylink** %2, align 8
  %6 = load %struct.phylink*, %struct.phylink** %2, align 8
  %7 = getelementptr inbounds %struct.phylink, %struct.phylink* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @phylink_an_mode_str(i64 %8)
  %10 = load %struct.phylink*, %struct.phylink** %2, align 8
  %11 = getelementptr inbounds %struct.phylink, %struct.phylink* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @phy_modes(i32 %13)
  %15 = call i32 @phylink_info(%struct.phylink* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14)
  %16 = load %struct.phylink*, %struct.phylink** %2, align 8
  %17 = getelementptr inbounds %struct.phylink, %struct.phylink* %16, i32 0, i32 9
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.phylink*, %struct.phylink** %2, align 8
  %22 = getelementptr inbounds %struct.phylink, %struct.phylink* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @netif_carrier_off(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.phylink*, %struct.phylink** %2, align 8
  %27 = load %struct.phylink*, %struct.phylink** %2, align 8
  %28 = getelementptr inbounds %struct.phylink, %struct.phylink* %27, i32 0, i32 8
  %29 = call i32 @phylink_resolve_flow(%struct.phylink* %26, %struct.TYPE_3__* %28)
  %30 = load %struct.phylink*, %struct.phylink** %2, align 8
  %31 = load %struct.phylink*, %struct.phylink** %2, align 8
  %32 = getelementptr inbounds %struct.phylink, %struct.phylink* %31, i32 0, i32 8
  %33 = call i32 @phylink_mac_config(%struct.phylink* %30, %struct.TYPE_3__* %32)
  %34 = load %struct.phylink*, %struct.phylink** %2, align 8
  %35 = call i32 @phylink_mac_an_restart(%struct.phylink* %34)
  %36 = load i32, i32* @PHYLINK_DISABLE_STOPPED, align 4
  %37 = load %struct.phylink*, %struct.phylink** %2, align 8
  %38 = getelementptr inbounds %struct.phylink, %struct.phylink* %37, i32 0, i32 7
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.phylink*, %struct.phylink** %2, align 8
  %41 = call i32 @phylink_run_resolve(%struct.phylink* %40)
  %42 = load %struct.phylink*, %struct.phylink** %2, align 8
  %43 = getelementptr inbounds %struct.phylink, %struct.phylink* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MLO_AN_FIXED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %25
  %48 = load %struct.phylink*, %struct.phylink** %2, align 8
  %49 = getelementptr inbounds %struct.phylink, %struct.phylink* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load %struct.phylink*, %struct.phylink** %2, align 8
  %54 = getelementptr inbounds %struct.phylink, %struct.phylink* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @gpiod_to_irq(i64 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @phylink_link_handler, align 4
  %62 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %63 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.phylink*, %struct.phylink** %2, align 8
  %66 = call i32 @request_irq(i32 %60, i32 %61, i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.phylink* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.phylink*, %struct.phylink** %2, align 8
  %71 = getelementptr inbounds %struct.phylink, %struct.phylink* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %73, %52
  %75 = load i32, i32* %3, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.phylink*, %struct.phylink** %2, align 8
  %79 = getelementptr inbounds %struct.phylink, %struct.phylink* %78, i32 0, i32 4
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* @HZ, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @mod_timer(i32* %79, i64 %82)
  br label %84

84:                                               ; preds = %77, %74
  br label %85

85:                                               ; preds = %84, %47, %25
  %86 = load %struct.phylink*, %struct.phylink** %2, align 8
  %87 = getelementptr inbounds %struct.phylink, %struct.phylink* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MLO_AN_FIXED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.phylink*, %struct.phylink** %2, align 8
  %93 = getelementptr inbounds %struct.phylink, %struct.phylink* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.phylink*, %struct.phylink** %2, align 8
  %98 = getelementptr inbounds %struct.phylink, %struct.phylink* %97, i32 0, i32 4
  %99 = load i64, i64* @jiffies, align 8
  %100 = load i64, i64* @HZ, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @mod_timer(i32* %98, i64 %101)
  br label %103

103:                                              ; preds = %96, %91, %85
  %104 = load %struct.phylink*, %struct.phylink** %2, align 8
  %105 = getelementptr inbounds %struct.phylink, %struct.phylink* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.phylink*, %struct.phylink** %2, align 8
  %110 = getelementptr inbounds %struct.phylink, %struct.phylink* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @phy_start(i64 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.phylink*, %struct.phylink** %2, align 8
  %115 = getelementptr inbounds %struct.phylink, %struct.phylink* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.phylink*, %struct.phylink** %2, align 8
  %120 = getelementptr inbounds %struct.phylink, %struct.phylink* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @sfp_upstream_start(i64 %121)
  br label %123

123:                                              ; preds = %118, %113
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @phylink_info(%struct.phylink*, i8*, i32, i32) #1

declare dso_local i32 @phylink_an_mode_str(i64) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @netif_carrier_off(i64) #1

declare dso_local i32 @phylink_resolve_flow(%struct.phylink*, %struct.TYPE_3__*) #1

declare dso_local i32 @phylink_mac_config(%struct.phylink*, %struct.TYPE_3__*) #1

declare dso_local i32 @phylink_mac_an_restart(%struct.phylink*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @phylink_run_resolve(%struct.phylink*) #1

declare dso_local i32 @gpiod_to_irq(i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.phylink*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @sfp_upstream_start(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
