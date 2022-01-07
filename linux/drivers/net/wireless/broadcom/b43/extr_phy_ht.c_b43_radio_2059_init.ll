; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2059_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_radio_2059_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@b43_radio_2059_init.routing = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@R2059_RFPLL_MISC_CAL_RESETN = common dso_local global i32 0, align 4
@R2059_XTAL_CONFIG2 = common dso_local global i32 0, align 4
@R2059_RFPLL_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_2059_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2059_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = call i32 @b43_radio_2059_init_pre(%struct.b43_wldev* %4)
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = call i32 @r2059_upload_inittabs(%struct.b43_wldev* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @b43_radio_2059_init.routing, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_radio_2059_init.routing, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 326
  %19 = call i32 @b43_radio_set(%struct.b43_wldev* %13, i32 %18, i32 3)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @R2059_RFPLL_MISC_CAL_RESETN, align 4
  %26 = call i32 @b43_radio_set(%struct.b43_wldev* %24, i32 %25, i32 120)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @R2059_XTAL_CONFIG2, align 4
  %29 = call i32 @b43_radio_set(%struct.b43_wldev* %27, i32 %28, i32 128)
  %30 = call i32 @msleep(i32 2)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load i32, i32* @R2059_RFPLL_MISC_CAL_RESETN, align 4
  %33 = call i32 @b43_radio_mask(%struct.b43_wldev* %31, i32 %32, i32 -121)
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = load i32, i32* @R2059_XTAL_CONFIG2, align 4
  %36 = call i32 @b43_radio_mask(%struct.b43_wldev* %34, i32 %35, i32 -129)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @b43_radio_2059_rcal(%struct.b43_wldev* %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @b43_radio_2057_rccal(%struct.b43_wldev* %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = load i32, i32* @R2059_RFPLL_MASTER, align 4
  %43 = call i32 @b43_radio_mask(%struct.b43_wldev* %41, i32 %42, i32 -9)
  ret void
}

declare dso_local i32 @b43_radio_2059_init_pre(%struct.b43_wldev*) #1

declare dso_local i32 @r2059_upload_inittabs(%struct.b43_wldev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_2059_rcal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_2057_rccal(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
