; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_set_mmd_lpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_set_mmd_lpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@MDIO_STAT1 = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Setting low power mode for MMD %d to %d\0A\00", align 1
@MDIO_STAT1_LPOWERABLE = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CTRL1_LPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*, i32, i32)* @ef4_mdio_set_mmd_lpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_mdio_set_mmd_lpower(%struct.ef4_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MDIO_STAT1, align 4
  %11 = call i32 @ef4_mdio_read(%struct.ef4_nic* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %13 = load i32, i32* @drv, align 4
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %15 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @netif_vdbg(%struct.ef4_nic* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MDIO_STAT1_LPOWERABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MDIO_CTRL1, align 4
  %28 = load i32, i32* @MDIO_CTRL1_LPOWER, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ef4_mdio_set_flag(%struct.ef4_nic* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @netif_vdbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ef4_mdio_set_flag(%struct.ef4_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
