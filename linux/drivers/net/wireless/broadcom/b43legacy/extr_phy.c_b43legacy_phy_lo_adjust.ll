; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_lo_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }
%struct.b43legacy_lopair = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_phy_lo_adjust(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_lopair*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %10 = call %struct.b43legacy_lopair* @b43legacy_find_lopair(%struct.b43legacy_wldev* %9, i32 2, i32 3, i32 0)
  store %struct.b43legacy_lopair* %10, %struct.b43legacy_lopair** %5, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %13 = call %struct.b43legacy_lopair* @b43legacy_current_lopair(%struct.b43legacy_wldev* %12)
  store %struct.b43legacy_lopair* %13, %struct.b43legacy_lopair** %5, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %16 = load %struct.b43legacy_lopair*, %struct.b43legacy_lopair** %5, align 8
  %17 = call i32 @b43legacy_lo_write(%struct.b43legacy_wldev* %15, %struct.b43legacy_lopair* %16)
  ret void
}

declare dso_local %struct.b43legacy_lopair* @b43legacy_find_lopair(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local %struct.b43legacy_lopair* @b43legacy_current_lopair(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_lo_write(%struct.b43legacy_wldev*, %struct.b43legacy_lopair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
