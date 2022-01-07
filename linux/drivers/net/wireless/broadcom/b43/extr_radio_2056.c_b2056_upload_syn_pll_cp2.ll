; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b2056_upload_syn_pll_cp2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2056.c_b2056_upload_syn_pll_cp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b2056_inittabs_pts = type { %struct.b2056_inittab_entry* }
%struct.b2056_inittab_entry = type { i32, i32 }

@B2056_SYN_PLL_CP2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2056_upload_syn_pll_cp2(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b2056_inittabs_pts*, align 8
  %6 = alloca %struct.b2056_inittab_entry*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = call %struct.b2056_inittabs_pts* @b43_nphy_get_inittabs_rev3(%struct.b43_wldev* %7)
  store %struct.b2056_inittabs_pts* %8, %struct.b2056_inittabs_pts** %5, align 8
  %9 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %5, align 8
  %10 = icmp ne %struct.b2056_inittabs_pts* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @B43_WARN_ON(i32 1)
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %5, align 8
  %15 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %14, i32 0, i32 0
  %16 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %15, align 8
  %17 = load i64, i64* @B2056_SYN_PLL_CP2, align 8
  %18 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %16, i64 %17
  store %struct.b2056_inittab_entry* %18, %struct.b2056_inittab_entry** %6, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i64, i64* @B2056_SYN_PLL_CP2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %6, align 8
  %25 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load %struct.b2056_inittab_entry*, %struct.b2056_inittab_entry** %6, align 8
  %29 = getelementptr inbounds %struct.b2056_inittab_entry, %struct.b2056_inittab_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  %33 = call i32 @b43_radio_write(%struct.b43_wldev* %19, i64 %20, i32 %32)
  br label %34

34:                                               ; preds = %31, %11
  ret void
}

declare dso_local %struct.b2056_inittabs_pts* @b43_nphy_get_inittabs_rev3(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
