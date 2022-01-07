; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_fcoe }
%struct.ixgbe_fcoe = type { i32 }

@IXGBE_FLAG_FCOE_CAPABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_FLAG_FCOE_ENABLED = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Enabling FCoE offload features.\0A\00", align 1
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Enabling FCoE on PF will disable legacy VFs\0A\00", align 1
@NETIF_F_FCOE_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fcoe_enable(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_fcoe*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ixgbe_adapter* %7, %struct.ixgbe_adapter** %4, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 1
  store %struct.ixgbe_fcoe* %9, %struct.ixgbe_fcoe** %5, align 8
  %10 = load %struct.ixgbe_fcoe*, %struct.ixgbe_fcoe** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_fcoe, %struct.ixgbe_fcoe* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IXGBE_FLAG_FCOE_CAPABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %89

22:                                               ; preds = %1
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IXGBE_FLAG_FCOE_ENABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %89

32:                                               ; preds = %22
  %33 = load i32, i32* @drv, align 4
  %34 = call i32 @e_info(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @probe, align 4
  %43 = call i32 @e_warn(i32 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i64 @netif_running(%struct.net_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = bitcast {}** %52 to i32 (%struct.net_device*)**
  %54 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 %54(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %48, %44
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %59 = call i32 @ixgbe_fcoe_ddp_enable(%struct.ixgbe_adapter* %58)
  %60 = load i32, i32* @IXGBE_FLAG_FCOE_ENABLED, align 4
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @NETIF_F_FCOE_MTU, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netdev_features_change(%struct.net_device* %70)
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %73 = call i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter* %72)
  %74 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %75 = call i32 @ixgbe_init_interrupt_scheme(%struct.ixgbe_adapter* %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i64 @netif_running(%struct.net_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %57
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.net_device*)**
  %85 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %84, align 8
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = call i32 %85(%struct.net_device* %86)
  br label %88

88:                                               ; preds = %79, %57
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %29, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i32 @e_warn(i32, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_fcoe_ddp_enable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @netdev_features_change(%struct.net_device*) #1

declare dso_local i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_init_interrupt_scheme(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
