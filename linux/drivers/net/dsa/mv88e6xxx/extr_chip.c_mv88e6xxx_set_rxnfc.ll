; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, %struct.ethtool_rx_flow_spec }
%struct.ethtool_rx_flow_spec = type { i32 }
%struct.mv88e6xxx_policy = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@MV88E6XXX_POLICY_ACTION_NORMAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.ethtool_rxnfc*)* @mv88e6xxx_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_set_rxnfc(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_rxnfc* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %8 = alloca %struct.mv88e6xxx_chip*, align 8
  %9 = alloca %struct.mv88e6xxx_policy*, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ethtool_rxnfc* %2, %struct.ethtool_rxnfc** %6, align 8
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 1
  store %struct.ethtool_rx_flow_spec* %12, %struct.ethtool_rx_flow_spec** %7, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 0
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %14, align 8
  store %struct.mv88e6xxx_chip* %15, %struct.mv88e6xxx_chip** %8, align 8
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %17 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %16)
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %51 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %3
  %22 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %25 = call i32 @mv88e6xxx_policy_insert(%struct.mv88e6xxx_chip* %22, i32 %23, %struct.ethtool_rx_flow_spec* %24)
  store i32 %25, i32* %10, align 4
  br label %54

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %30 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %29, i32 0, i32 1
  %31 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %32 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mv88e6xxx_policy* @idr_remove(i32* %30, i32 %33)
  store %struct.mv88e6xxx_policy* %34, %struct.mv88e6xxx_policy** %9, align 8
  %35 = load %struct.mv88e6xxx_policy*, %struct.mv88e6xxx_policy** %9, align 8
  %36 = icmp ne %struct.mv88e6xxx_policy* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
  %38 = load i32, i32* @MV88E6XXX_POLICY_ACTION_NORMAL, align 4
  %39 = load %struct.mv88e6xxx_policy*, %struct.mv88e6xxx_policy** %9, align 8
  %40 = getelementptr inbounds %struct.mv88e6xxx_policy, %struct.mv88e6xxx_policy* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mv88e6xxx_policy*, %struct.mv88e6xxx_policy** %9, align 8
  %44 = call i32 @mv88e6xxx_policy_apply(%struct.mv88e6xxx_chip* %41, i32 %42, %struct.mv88e6xxx_policy* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %46 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mv88e6xxx_policy*, %struct.mv88e6xxx_policy** %9, align 8
  %49 = call i32 @devm_kfree(i32 %47, %struct.mv88e6xxx_policy* %48)
  br label %50

50:                                               ; preds = %37, %26
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %50, %21
  %55 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %56 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %55)
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_policy_insert(%struct.mv88e6xxx_chip*, i32, %struct.ethtool_rx_flow_spec*) #1

declare dso_local %struct.mv88e6xxx_policy* @idr_remove(i32*, i32) #1

declare dso_local i32 @mv88e6xxx_policy_apply(%struct.mv88e6xxx_chip*, i32, %struct.mv88e6xxx_policy*) #1

declare dso_local i32 @devm_kfree(i32, %struct.mv88e6xxx_policy*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
