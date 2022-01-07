; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_10__*, %struct.b43_phy }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.b43_phy = type { i32, i32, %struct.b43_phy_operations*, %struct.TYPE_9__* }
%struct.b43_phy_operations = type { {}*, {}*, i32 (%struct.b43_wldev*, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"PHY init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PHY init: Channel switch to default failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_phy_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca %struct.b43_phy_operations*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %4, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 2
  %11 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %10, align 8
  store %struct.b43_phy_operations* %11, %struct.b43_phy_operations** %5, align 8
  %12 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 3
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %27 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %26, i32 0, i32 3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %34 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %16, %1
  %36 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %37 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %36, i32 0, i32 2
  %38 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %37, align 8
  %39 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %38, i32 0, i32 2
  %40 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %39, align 8
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = call i32 %40(%struct.b43_wldev* %41, i32 1)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %44 = call i32 @b43_software_rfkill(%struct.b43_wldev* %43, i32 0)
  %45 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %46 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.b43_wldev*)**
  %48 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %47, align 8
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = call i32 %48(%struct.b43_wldev* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %35
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call i32 @b43err(%struct.TYPE_10__* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %90

58:                                               ; preds = %35
  %59 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %60 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %63 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @b43_switch_channel(%struct.b43_wldev* %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %70 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call i32 @b43err(%struct.TYPE_10__* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %74

73:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %94

74:                                               ; preds = %68
  %75 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %76 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %78 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %77, i32 0, i32 1
  %79 = bitcast {}** %78 to i32 (%struct.b43_wldev*)**
  %80 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %79, align 8
  %81 = icmp ne i32 (%struct.b43_wldev*)* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %84 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %83, i32 0, i32 1
  %85 = bitcast {}** %84 to i32 (%struct.b43_wldev*)**
  %86 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %85, align 8
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = call i32 %86(%struct.b43_wldev* %87)
  br label %89

89:                                               ; preds = %82, %74
  br label %90

90:                                               ; preds = %89, %53
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = call i32 @b43_software_rfkill(%struct.b43_wldev* %91, i32 1)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %73
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @b43_software_rfkill(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
