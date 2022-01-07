; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c___phylink_connect_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c___phylink_connect_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, i32, i64 }
%struct.phy_device = type { i32 }

@MLO_AN_FIXED = common dso_local global i64 0, align 8
@MLO_AN_INBAND = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, %struct.phy_device*, i32)* @__phylink_connect_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__phylink_connect_phy(%struct.phylink* %0, %struct.phy_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phylink*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %5, align 8
  store %struct.phy_device* %1, %struct.phy_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.phylink*, %struct.phylink** %5, align 8
  %10 = getelementptr inbounds %struct.phylink, %struct.phylink* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MLO_AN_FIXED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  %15 = load %struct.phylink*, %struct.phylink** %5, align 8
  %16 = getelementptr inbounds %struct.phylink, %struct.phylink* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLO_AN_INBAND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @phy_interface_mode_is_8023z(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i1 [ false, %14 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i1 [ true, %3 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %64

34:                                               ; preds = %26
  %35 = load %struct.phylink*, %struct.phylink** %5, align 8
  %36 = getelementptr inbounds %struct.phylink, %struct.phylink* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %34
  %43 = load %struct.phylink*, %struct.phylink** %5, align 8
  %44 = getelementptr inbounds %struct.phylink, %struct.phylink* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @phy_attach_direct(i32 %45, %struct.phy_device* %46, i32 0, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %42
  %54 = load %struct.phylink*, %struct.phylink** %5, align 8
  %55 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %56 = call i32 @phylink_bringup_phy(%struct.phylink* %54, %struct.phy_device* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %61 = call i32 @phy_detach(%struct.phy_device* %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %51, %39, %31
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i32) #1

declare dso_local i32 @phy_attach_direct(i32, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @phylink_bringup_phy(%struct.phylink*, %struct.phy_device*) #1

declare dso_local i32 @phy_detach(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
