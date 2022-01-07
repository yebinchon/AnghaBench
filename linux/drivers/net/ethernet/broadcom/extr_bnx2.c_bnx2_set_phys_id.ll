; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2 = type { i32 }

@BNX2_MISC_CFG = common dso_local global i32 0, align 4
@BNX2_MISC_CFG_LEDMODE_MAC = common dso_local global i32 0, align 4
@BNX2_EMAC_LED = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_1000MB_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_100MB_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_10MB_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_TRAFFIC_OVERRIDE = common dso_local global i32 0, align 4
@BNX2_EMAC_LED_TRAFFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnx2_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2* %8, %struct.bnx2** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %50 [
    i32 131, label %10
    i32 128, label %20
    i32 129, label %35
    i32 130, label %40
  ]

10:                                               ; preds = %2
  %11 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %12 = load i32, i32* @BNX2_MISC_CFG, align 4
  %13 = call i32 @BNX2_RD(%struct.bnx2* %11, i32 %12)
  %14 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %17 = load i32, i32* @BNX2_MISC_CFG, align 4
  %18 = load i32, i32* @BNX2_MISC_CFG_LEDMODE_MAC, align 4
  %19 = call i32 @BNX2_WR(%struct.bnx2* %16, i32 %17, i32 %18)
  store i32 1, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %22 = load i32, i32* @BNX2_EMAC_LED, align 4
  %23 = load i32, i32* @BNX2_EMAC_LED_OVERRIDE, align 4
  %24 = load i32, i32* @BNX2_EMAC_LED_1000MB_OVERRIDE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BNX2_EMAC_LED_100MB_OVERRIDE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BNX2_EMAC_LED_10MB_OVERRIDE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BNX2_EMAC_LED_TRAFFIC_OVERRIDE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BNX2_EMAC_LED_TRAFFIC, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @BNX2_WR(%struct.bnx2* %21, i32 %22, i32 %33)
  br label %50

35:                                               ; preds = %2
  %36 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %37 = load i32, i32* @BNX2_EMAC_LED, align 4
  %38 = load i32, i32* @BNX2_EMAC_LED_OVERRIDE, align 4
  %39 = call i32 @BNX2_WR(%struct.bnx2* %36, i32 %37, i32 %38)
  br label %50

40:                                               ; preds = %2
  %41 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %42 = load i32, i32* @BNX2_EMAC_LED, align 4
  %43 = call i32 @BNX2_WR(%struct.bnx2* %41, i32 %42, i32 0)
  %44 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %45 = load i32, i32* @BNX2_MISC_CFG, align 4
  %46 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @BNX2_WR(%struct.bnx2* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %2, %40, %35, %20
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
