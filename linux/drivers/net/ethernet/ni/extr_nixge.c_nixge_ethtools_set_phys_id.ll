; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_ethtools_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_ethtools_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nixge_priv = type { i32 }

@NIXGE_REG_LED_CTL = common dso_local global i32 0, align 4
@NIXGE_ID_LED_CTL_EN = common dso_local global i32 0, align 4
@NIXGE_ID_LED_CTL_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nixge_ethtools_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_ethtools_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nixge_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.nixge_priv* %9, %struct.nixge_priv** %6, align 8
  %10 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %11 = load i32, i32* @NIXGE_REG_LED_CTL, align 4
  %12 = call i32 @nixge_ctrl_read_reg(%struct.nixge_priv* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %48 [
    i32 131, label %14
    i32 128, label %22
    i32 129, label %30
    i32 130, label %39
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @NIXGE_ID_LED_CTL_EN, align 4
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %19 = load i32, i32* @NIXGE_REG_LED_CTL, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %18, i32 %19, i32 %20)
  store i32 2, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load i32, i32* @NIXGE_ID_LED_CTL_VAL, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %27 = load i32, i32* @NIXGE_REG_LED_CTL, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %26, i32 %27, i32 %28)
  br label %48

30:                                               ; preds = %2
  %31 = load i32, i32* @NIXGE_ID_LED_CTL_VAL, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %36 = load i32, i32* @NIXGE_REG_LED_CTL, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %35, i32 %36, i32 %37)
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* @NIXGE_ID_LED_CTL_EN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.nixge_priv*, %struct.nixge_priv** %6, align 8
  %45 = load i32, i32* @NIXGE_REG_LED_CTL, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @nixge_ctrl_write_reg(%struct.nixge_priv* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %2, %39, %30, %22
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nixge_ctrl_read_reg(%struct.nixge_priv*, i32) #1

declare dso_local i32 @nixge_ctrl_write_reg(%struct.nixge_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
