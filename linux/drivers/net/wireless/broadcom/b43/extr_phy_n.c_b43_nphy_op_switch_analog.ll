; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_switch_analog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_switch_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_op_switch_analog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_op_switch_analog(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  store %struct.b43_phy* %9, %struct.b43_phy** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 32767
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 13, i32 253
  store i32 %17, i32* %7, align 4
  %18 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 19
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 3
  br i1 %27, label %28, label %66

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @b43_phy_write(%struct.b43_wldev* %32, i32 %33, i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @b43_phy_write(%struct.b43_wldev* %40, i32 %41, i32 %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @b43_phy_write(%struct.b43_wldev* %44, i32 %45, i32 %46)
  br label %65

48:                                               ; preds = %28
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %50 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %50, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %53, i32 %54, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %57, i32 %58, i32 %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @b43_phy_write(%struct.b43_wldev* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %48, %31
  br label %71

66:                                               ; preds = %23
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @b43_phy_write(%struct.b43_wldev* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %65
  br label %72

72:                                               ; preds = %71, %22
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
