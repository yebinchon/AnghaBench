; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { {}* }
%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.TYPE_7__* }

@ENODEV = common dso_local global i32 0, align 4
@b43_phyops_ac = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_g = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_ht = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_lcn = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_lp = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@b43_phyops_n = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_phy_allocate(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  store %struct.b43_phy* %7, %struct.b43_phy** %4, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %10 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %19 [
    i32 132, label %13
    i32 128, label %14
    i32 129, label %15
    i32 131, label %16
    i32 130, label %17
    i32 133, label %18
  ]

13:                                               ; preds = %1
  br label %19

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  br label %19

16:                                               ; preds = %1
  br label %19

17:                                               ; preds = %1
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %1, %18, %17, %16, %15, %14, %13
  %20 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %21 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @B43_WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %33 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.b43_wldev*)**
  %37 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %36, align 8
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = call i32 %37(%struct.b43_wldev* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %44 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %43, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %44, align 8
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %28
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
