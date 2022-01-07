; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_force_rf_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_force_rf_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@b43_nphy_force_rf_sequence.trigger = internal constant [134 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139], align 16
@B43_NPHY_RFSEQMODE = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_CAOVER = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_TROVER = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQTR = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RF sequence status timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_force_rf_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_force_rf_sequence(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %9 = call i32 @b43_phy_read(%struct.b43_wldev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([134 x i32], [134 x i32]* @b43_nphy_force_rf_sequence.trigger, i64 0, i64 0))
  %12 = icmp uge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @B43_WARN_ON(i32 %13)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %17 = load i32, i32* @B43_NPHY_RFSEQMODE_CAOVER, align 4
  %18 = load i32, i32* @B43_NPHY_RFSEQMODE_TROVER, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @b43_phy_set(%struct.b43_wldev* %15, i32 %16, i32 %19)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %22 = load i32, i32* @B43_NPHY_RFSEQTR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [134 x i32], [134 x i32]* @b43_nphy_force_rf_sequence.trigger, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @b43_phy_set(%struct.b43_wldev* %21, i32 %22, i32 %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %44, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 200
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = load i32, i32* @B43_NPHY_RFSEQST, align 4
  %34 = call i32 @b43_phy_read(%struct.b43_wldev* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [134 x i32], [134 x i32]* @b43_nphy_force_rf_sequence.trigger, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %52

42:                                               ; preds = %31
  %43 = call i32 @msleep(i32 1)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @b43err(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %41
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %54 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
