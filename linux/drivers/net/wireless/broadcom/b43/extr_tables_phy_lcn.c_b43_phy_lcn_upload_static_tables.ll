; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_phy_lcn.c_b43_phy_lcn_upload_static_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_phy_lcn.c_b43_phy_lcn_upload_static_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@b43_lcntab_0x02 = common dso_local global i32 0, align 4
@b43_lcntab_0x01 = common dso_local global i32 0, align 4
@b43_lcntab_0x0b = common dso_local global i32 0, align 4
@b43_lcntab_0x0c = common dso_local global i32 0, align 4
@b43_lcntab_0x0d = common dso_local global i32 0, align 4
@b43_lcntab_0x0e = common dso_local global i32 0, align 4
@b43_lcntab_0x0f = common dso_local global i32 0, align 4
@b43_lcntab_0x10 = common dso_local global i32 0, align 4
@b43_lcntab_0x11 = common dso_local global i32 0, align 4
@b43_lcntab_0x12 = common dso_local global i32 0, align 4
@b43_lcntab_0x14 = common dso_local global i32 0, align 4
@b43_lcntab_0x17 = common dso_local global i32 0, align 4
@b43_lcntab_0x00 = common dso_local global i32 0, align 4
@b43_lcntab_0x18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_lcn_upload_static_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_upload_static_tables(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = call i32 @B43_LCNTAB16(i32 2, i32 0)
  %5 = load i32, i32* @b43_lcntab_0x02, align 4
  %6 = call i32 @lcntab_upload(%struct.b43_wldev* %3, i32 %4, i32 %5)
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = call i32 @B43_LCNTAB16(i32 1, i32 0)
  %9 = load i32, i32* @b43_lcntab_0x01, align 4
  %10 = call i32 @lcntab_upload(%struct.b43_wldev* %7, i32 %8, i32 %9)
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = call i32 @B43_LCNTAB32(i32 11, i32 0)
  %13 = load i32, i32* @b43_lcntab_0x0b, align 4
  %14 = call i32 @lcntab_upload(%struct.b43_wldev* %11, i32 %12, i32 %13)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = call i32 @B43_LCNTAB32(i32 12, i32 0)
  %17 = load i32, i32* @b43_lcntab_0x0c, align 4
  %18 = call i32 @lcntab_upload(%struct.b43_wldev* %15, i32 %16, i32 %17)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = call i32 @B43_LCNTAB32(i32 13, i32 0)
  %21 = load i32, i32* @b43_lcntab_0x0d, align 4
  %22 = call i32 @lcntab_upload(%struct.b43_wldev* %19, i32 %20, i32 %21)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = call i32 @B43_LCNTAB16(i32 14, i32 0)
  %25 = load i32, i32* @b43_lcntab_0x0e, align 4
  %26 = call i32 @lcntab_upload(%struct.b43_wldev* %23, i32 %24, i32 %25)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = call i32 @B43_LCNTAB16(i32 15, i32 0)
  %29 = load i32, i32* @b43_lcntab_0x0f, align 4
  %30 = call i32 @lcntab_upload(%struct.b43_wldev* %27, i32 %28, i32 %29)
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = call i32 @B43_LCNTAB16(i32 16, i32 0)
  %33 = load i32, i32* @b43_lcntab_0x10, align 4
  %34 = call i32 @lcntab_upload(%struct.b43_wldev* %31, i32 %32, i32 %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %36 = call i32 @B43_LCNTAB16(i32 17, i32 0)
  %37 = load i32, i32* @b43_lcntab_0x11, align 4
  %38 = call i32 @lcntab_upload(%struct.b43_wldev* %35, i32 %36, i32 %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = call i32 @B43_LCNTAB32(i32 18, i32 0)
  %41 = load i32, i32* @b43_lcntab_0x12, align 4
  %42 = call i32 @lcntab_upload(%struct.b43_wldev* %39, i32 %40, i32 %41)
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = call i32 @B43_LCNTAB16(i32 20, i32 0)
  %45 = load i32, i32* @b43_lcntab_0x14, align 4
  %46 = call i32 @lcntab_upload(%struct.b43_wldev* %43, i32 %44, i32 %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = call i32 @B43_LCNTAB16(i32 23, i32 0)
  %49 = load i32, i32* @b43_lcntab_0x17, align 4
  %50 = call i32 @lcntab_upload(%struct.b43_wldev* %47, i32 %48, i32 %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = call i32 @B43_LCNTAB16(i32 0, i32 0)
  %53 = load i32, i32* @b43_lcntab_0x00, align 4
  %54 = call i32 @lcntab_upload(%struct.b43_wldev* %51, i32 %52, i32 %53)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @B43_LCNTAB32(i32 24, i32 0)
  %57 = load i32, i32* @b43_lcntab_0x18, align 4
  %58 = call i32 @lcntab_upload(%struct.b43_wldev* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @lcntab_upload(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_LCNTAB16(i32, i32) #1

declare dso_local i32 @B43_LCNTAB32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
