; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_set_extloopbk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_set_extloopbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }

@TG3_PHYFLG_IS_FET = common dso_local global i32 0, align 4
@TG3_PHY_ID_MASK = common dso_local global i32 0, align 4
@TG3_PHY_ID_BCM5401 = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_SHDWSEL_AUXCTL = common dso_local global i32 0, align 4
@MII_TG3_AUXCTL_ACTL_EXTLOOPBK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_set_extloopbk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_set_extloopbk(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %6 = load %struct.tg3*, %struct.tg3** %3, align 8
  %7 = getelementptr inbounds %struct.tg3, %struct.tg3* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.tg3*, %struct.tg3** %3, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TG3_PHY_ID_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @TG3_PHY_ID_BCM5401, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.tg3*, %struct.tg3** %3, align 8
  %23 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_AUXCTL, align 4
  %24 = load i32, i32* @MII_TG3_AUXCTL_ACTL_EXTLOOPBK, align 4
  %25 = or i32 %24, 19488
  %26 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %22, i32 %23, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %13
  %28 = load %struct.tg3*, %struct.tg3** %3, align 8
  %29 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_AUXCTL, align 4
  %30 = call i32 @tg3_phy_auxctl_read(%struct.tg3* %28, i32 %29, i32* %5)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %27
  %36 = load i32, i32* @MII_TG3_AUXCTL_ACTL_EXTLOOPBK, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = load i32, i32* @MII_TG3_AUXCTL_SHDWSEL_AUXCTL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @tg3_phy_auxctl_write(%struct.tg3* %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %21
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %33, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @tg3_phy_auxctl_write(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_auxctl_read(%struct.tg3*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
