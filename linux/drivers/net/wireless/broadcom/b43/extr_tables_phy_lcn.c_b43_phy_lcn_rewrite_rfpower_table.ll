; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_phy_lcn.c_b43_phy_lcn_rewrite_rfpower_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_phy_lcn.c_b43_phy_lcn_rewrite_rfpower_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_phy_lcn_rewrite_rfpower_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_lcn_rewrite_rfpower_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 576, %10
  %12 = call i32 @B43_LCNTAB32(i32 7, i32 %11)
  %13 = call i32 @b43_lcntab_read(%struct.b43_wldev* %9, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 576, %15
  %17 = call i32 @B43_LCNTAB32(i32 7, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @b43_lcntab_write(%struct.b43_wldev* %14, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  ret void
}

declare dso_local i32 @b43_lcntab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_LCNTAB32(i32, i32) #1

declare dso_local i32 @b43_lcntab_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
