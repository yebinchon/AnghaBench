; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_reg_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_ethtool.c_netxen_nic_reg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netxen_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CRB_SCRATCHPAD_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netxen_nic_reg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_reg_test(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.netxen_adapter* %8, %struct.netxen_adapter** %4, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %10 = call i32 @NETXEN_PCIX_PH_REG(i32 0)
  %11 = call i32 @NXRD32(%struct.netxen_adapter* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65535
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %42

21:                                               ; preds = %1
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @NX_IS_REVISION_P3(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %42

29:                                               ; preds = %21
  store i32 -1515870811, i32* %6, align 4
  %30 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %31 = load i32, i32* @CRB_SCRATCHPAD_TEST, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @NXWR32(%struct.netxen_adapter* %30, i32 %31, i32 %32)
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %35 = load i32, i32* @CRB_SCRATCHPAD_TEST, align 4
  %36 = call i32 @NXRD32(%struct.netxen_adapter* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %28, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NETXEN_PCIX_PH_REG(i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
