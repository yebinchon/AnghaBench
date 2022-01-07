; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2059_rcal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2059_rcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@R2059_C3 = common dso_local global i32 0, align 4
@R2059_RCAL_CONFIG = common dso_local global i32 0, align 4
@R2059_RCAL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Radio 0x2059 rcal timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_2059_rcal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2059_rcal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = load i32, i32* @R2059_C3, align 4
  %5 = load i32, i32* @R2059_RCAL_CONFIG, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @b43_radio_set(%struct.b43_wldev* %3, i32 %6, i32 1)
  %8 = call i32 @usleep_range(i32 10, i32 20)
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @R2059_C3, align 4
  %11 = or i32 %10, 191
  %12 = call i32 @b43_radio_set(%struct.b43_wldev* %9, i32 %11, i32 1)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* @R2059_C3, align 4
  %15 = or i32 %14, 411
  %16 = call i32 @b43_radio_maskset(%struct.b43_wldev* %13, i32 %15, i32 3, i32 2)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = load i32, i32* @R2059_C3, align 4
  %19 = load i32, i32* @R2059_RCAL_CONFIG, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @b43_radio_set(%struct.b43_wldev* %17, i32 %20, i32 2)
  %22 = call i32 @usleep_range(i32 100, i32 200)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @R2059_C3, align 4
  %25 = load i32, i32* @R2059_RCAL_CONFIG, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @b43_radio_mask(%struct.b43_wldev* %23, i32 %26, i32 -3)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @R2059_C3, align 4
  %30 = load i32, i32* @R2059_RCAL_STATUS, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %28, i32 %31, i32 1, i32 1, i32 100, i32 1000000)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %1
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @b43err(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = load i32, i32* @R2059_C3, align 4
  %42 = load i32, i32* @R2059_RCAL_CONFIG, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @b43_radio_mask(%struct.b43_wldev* %40, i32 %43, i32 -2)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = call i32 @b43_radio_set(%struct.b43_wldev* %45, i32 10, i32 96)
  ret void
}

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_wait_value(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
