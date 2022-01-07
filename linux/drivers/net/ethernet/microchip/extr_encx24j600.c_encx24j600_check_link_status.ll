; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_check_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_check_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@ESTAT = common dso_local global i32 0, align 4
@PHYLNK = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@ifdown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*)* @encx24j600_check_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_check_link_status(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  %5 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %6 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %9 = load i32, i32* @ESTAT, align 4
  %10 = call i32 @encx24j600_read_reg(%struct.encx24j600_priv* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PHYLNK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %17 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AUTONEG_ENABLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %23 = call i32 @encx24j600_wait_for_autoneg(%struct.encx24j600_priv* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netif_carrier_on(%struct.net_device* %25)
  %27 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %28 = load i32, i32* @ifup, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_info(%struct.encx24j600_priv* %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %33 = load i32, i32* @ifdown, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @netif_info(%struct.encx24j600_priv* %32, i32 %33, %struct.net_device* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @AUTONEG_ENABLE, align 8
  %37 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %38 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %40 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* @SPEED_100, align 4
  %42 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %43 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netif_carrier_off(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %31, %24
  ret void
}

declare dso_local i32 @encx24j600_read_reg(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @encx24j600_wait_for_autoneg(%struct.encx24j600_priv*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.encx24j600_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
