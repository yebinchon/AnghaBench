; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_override_one_to_many.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_override_one_to_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32)* @b43_nphy_rf_ctl_override_one_to_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rf_ctl_override_one_to_many(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.b43_phy*, align 8
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  store %struct.b43_phy* %14, %struct.b43_phy** %11, align 8
  %15 = load %struct.b43_phy*, %struct.b43_phy** %11, align 8
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 7
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43_WARN_ON(i32 %19)
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %113 [
    i32 132, label %22
    i32 130, label %38
    i32 128, label %63
    i32 131, label %83
    i32 129, label %98
  ]

22:                                               ; preds = %5
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %23, i32 32, i32 %24, i32 %25, i32 %26, i32 1)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %28, i32 16, i32 %29, i32 %30, i32 %31, i32 1)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %33, i32 8, i32 %34, i32 %35, i32 %36, i32 1)
  br label %113

38:                                               ; preds = %5
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %39, i32 4, i32 %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %44, i32 2, i32 %45, i32 %46, i32 %47, i32 1)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %49, i32 1, i32 %50, i32 %51, i32 %52, i32 1)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %54, i32 2, i32 %55, i32 %56, i32 %57, i32 2)
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %59, i32 2048, i32 0, i32 %60, i32 %61, i32 1)
  br label %113

63:                                               ; preds = %5
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %64, i32 4, i32 %65, i32 %66, i32 %67, i32 0)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %69, i32 2, i32 %70, i32 %71, i32 %72, i32 1)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %74, i32 1, i32 %75, i32 %76, i32 %77, i32 2)
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %79, i32 2048, i32 1, i32 %80, i32 %81, i32 1)
  br label %113

83:                                               ; preds = %5
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 255
  store i32 %85, i32* %12, align 4
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %86, i32 2048, i32 %87, i32 %88, i32 %89, i32 0)
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 8
  store i32 %92, i32* %12, align 4
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %93, i32 24576, i32 %94, i32 %95, i32 %96, i32 0)
  br label %113

98:                                               ; preds = %5
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 32767
  store i32 %100, i32* %12, align 4
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %101, i32 4096, i32 %102, i32 %103, i32 %104, i32 0)
  %106 = load i32, i32* %8, align 4
  %107 = ashr i32 %106, 14
  store i32 %107, i32* %12, align 4
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %108, i32 16384, i32 %109, i32 %110, i32 %111, i32 0)
  br label %113

113:                                              ; preds = %5, %98, %83, %63, %38, %22
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
