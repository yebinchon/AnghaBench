; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_init2056_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_init2056_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@B2056_SYN_COM_CTRL = common dso_local global i32 0, align 4
@B2056_SYN_COM_PU = common dso_local global i32 0, align 4
@B2056_SYN_COM_RESET = common dso_local global i32 0, align 4
@B2056_SYN_PLL_MAST2 = common dso_local global i32 0, align 4
@B2056_SYN_RCCAL_CTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_init2056_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_init2056_post(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = load i32, i32* @B2056_SYN_COM_CTRL, align 4
  %5 = call i32 @b43_radio_set(%struct.b43_wldev* %3, i32 %4, i32 11)
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = load i32, i32* @B2056_SYN_COM_PU, align 4
  %8 = call i32 @b43_radio_set(%struct.b43_wldev* %6, i32 %7, i32 2)
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B2056_SYN_COM_RESET, align 4
  %11 = call i32 @b43_radio_set(%struct.b43_wldev* %9, i32 %10, i32 2)
  %12 = call i32 @msleep(i32 1)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* @B2056_SYN_COM_RESET, align 4
  %15 = call i32 @b43_radio_mask(%struct.b43_wldev* %13, i32 %14, i32 -3)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = load i32, i32* @B2056_SYN_PLL_MAST2, align 4
  %18 = call i32 @b43_radio_mask(%struct.b43_wldev* %16, i32 %17, i32 -253)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = load i32, i32* @B2056_SYN_RCCAL_CTRL0, align 4
  %21 = call i32 @b43_radio_mask(%struct.b43_wldev* %19, i32 %20, i32 -2)
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @b43_radio_2056_rcal(%struct.b43_wldev* %28)
  br label %30

30:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_2056_rcal(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
