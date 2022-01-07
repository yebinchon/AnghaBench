; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_set_wirespeed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_set_wirespeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_PHYFLG_NO_ETH_WIRE_SPEED = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_SHDWSEL_MISC = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_MISC_WIRESPD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_phy_set_wirespeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_phy_set_wirespeed(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TG3_PHYFLG_NO_ETH_WIRE_SPEED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.tg3*, %struct.tg3** %2, align 8
  %14 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_MISC, align 4
  %15 = call i32 @tg3_phy_auxctl_read(%struct.tg3* %13, i32 %14, i32* %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load %struct.tg3*, %struct.tg3** %2, align 8
  %20 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_MISC, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MII_TG3_AUXCTL_MISC_WIRESPD_EN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %11, %18, %12
  ret void
}

declare dso_local i32 @tg3_phy_auxctl_read(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_phy_auxctl_write(%struct.tg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
