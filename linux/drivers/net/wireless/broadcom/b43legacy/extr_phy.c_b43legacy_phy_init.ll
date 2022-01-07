; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown PHYTYPE found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_phy_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 1
  store %struct.b43legacy_phy* %6, %struct.b43legacy_phy** %3, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %32 [
    i32 129, label %12
    i32 128, label %29
  ]

12:                                               ; preds = %1
  %13 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %14 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 2, label %16
    i32 4, label %19
    i32 5, label %22
    i32 6, label %25
  ]

16:                                               ; preds = %12
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %18 = call i32 @b43legacy_phy_initb2(%struct.b43legacy_wldev* %17)
  store i32 0, i32* %4, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = call i32 @b43legacy_phy_initb4(%struct.b43legacy_wldev* %20)
  store i32 0, i32* %4, align 4
  br label %28

22:                                               ; preds = %12
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = call i32 @b43legacy_phy_initb5(%struct.b43legacy_wldev* %23)
  store i32 0, i32* %4, align 4
  br label %28

25:                                               ; preds = %12
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %27 = call i32 @b43legacy_phy_initb6(%struct.b43legacy_wldev* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %12, %25, %22, %19, %16
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = call i32 @b43legacy_phy_initg(%struct.b43legacy_wldev* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %1, %29, %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @b43legacyerr(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @b43legacy_phy_initb2(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_initb4(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_initb5(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_initb6(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_initg(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
