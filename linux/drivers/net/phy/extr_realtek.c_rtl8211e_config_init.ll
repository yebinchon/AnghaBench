; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8211e_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_realtek.c_rtl8211e_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@RTL8211E_TX_DELAY = common dso_local global i32 0, align 4
@RTL8211E_RX_DELAY = common dso_local global i32 0, align 4
@RTL821x_EXT_PAGE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @rtl8211e_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8211e_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 131, label %10
    i32 130, label %11
    i32 129, label %15
    i32 128, label %17
  ]

10:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @RTL8211E_TX_DELAY, align 4
  %13 = load i32, i32* @RTL8211E_RX_DELAY, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @RTL8211E_RX_DELAY, align 4
  store i32 %16, i32* %6, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @RTL8211E_TX_DELAY, align 4
  store i32 %18, i32* %6, align 4
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

20:                                               ; preds = %17, %15, %11, %10
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = call i32 @phy_select_page(%struct.phy_device* %21, i32 7)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %40

26:                                               ; preds = %20
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* @RTL821x_EXT_PAGE_SELECT, align 4
  %29 = call i32 @__phy_write(%struct.phy_device* %27, i32 %28, i32 164)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %40

33:                                               ; preds = %26
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = load i32, i32* @RTL8211E_TX_DELAY, align 4
  %36 = load i32, i32* @RTL8211E_RX_DELAY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @__phy_modify(%struct.phy_device* %34, i32 28, i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %32, %25
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @phy_restore_page(%struct.phy_device* %41, i32 %42, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @phy_select_page(%struct.phy_device*, i32) #1

declare dso_local i32 @__phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @__phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_restore_page(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
