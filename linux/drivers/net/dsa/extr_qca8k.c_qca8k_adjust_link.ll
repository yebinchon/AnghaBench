; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.qca8k_priv* }
%struct.qca8k_priv = type { i32 }
%struct.phy_device = type { i32, i64 }

@QCA8K_PORT_STATUS_SPEED_10 = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"port%d link speed %dMbps not supported.\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@QCA8K_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.phy_device*)* @qca8k_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_adjust_link(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.qca8k_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy_device* %2, %struct.phy_device** %6, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.qca8k_priv*, %struct.qca8k_priv** %10, align 8
  store %struct.qca8k_priv* %11, %struct.qca8k_priv** %7, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %13 = call i32 @phy_is_pseudo_fixed_link(%struct.phy_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %68

16:                                               ; preds = %3
  %17 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %26 [
    i32 10, label %20
    i32 100, label %22
    i32 1000, label %24
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @QCA8K_PORT_STATUS_SPEED_10, align 4
  store i32 %21, i32* %8, align 4
  br label %35

22:                                               ; preds = %16
  %23 = load i32, i32* @QCA8K_PORT_STATUS_SPEED_100, align 4
  store i32 %23, i32* %8, align 4
  br label %35

24:                                               ; preds = %16
  %25 = load i32, i32* @QCA8K_PORT_STATUS_SPEED_1000, align 4
  store i32 %25, i32* %8, align 4
  br label %35

26:                                               ; preds = %16
  %27 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %28 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %68

35:                                               ; preds = %24, %22, %20
  %36 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DUPLEX_FULL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @QCA8K_PORT_STATUS_DUPLEX, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @QCA8K_PORT_STATUS_RXFLOW, align 4
  %52 = load i32, i32* @QCA8K_PORT_STATUS_TXFLOW, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @qca8k_port_set_status(%struct.qca8k_priv* %57, i32 %58, i32 0)
  %60 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @QCA8K_REG_PORT_STATUS(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @qca8k_write(%struct.qca8k_priv* %60, i32 %62, i32 %63)
  %65 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @qca8k_port_set_status(%struct.qca8k_priv* %65, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %56, %26, %15
  ret void
}

declare dso_local i32 @phy_is_pseudo_fixed_link(%struct.phy_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @qca8k_port_set_status(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @QCA8K_REG_PORT_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
