; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.ksz_device* }
%struct.ksz_device = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to reset switch\0A\00", align 1
@REG_SW_QM_CTRL__4 = common dso_local global i32 0, align 4
@UNICAST_VLAN_BOUNDARY = common dso_local global i32 0, align 4
@REG_SW_MAC_CTRL_0 = common dso_local global i32 0, align 4
@SW_CHECK_LENGTH = common dso_local global i32 0, align 4
@REG_SW_MAC_CTRL_1 = common dso_local global i32 0, align 4
@SW_LEGAL_PACKET_DISABLE = common dso_local global i32 0, align 4
@MULTICAST_STORM_DISABLE = common dso_local global i32 0, align 4
@REG_SW_MAC_CTRL_5 = common dso_local global i32 0, align 4
@SW_OUT_RATE_LIMIT_QUEUE_BASED = common dso_local global i32 0, align 4
@REG_SW_MAC_CTRL_6 = common dso_local global i32 0, align 4
@SW_MIB_COUNTER_FREEZE = common dso_local global i32 0, align 4
@REG_SW_OPERATION = common dso_local global i32 0, align 4
@SW_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @ksz9477_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 1
  %8 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  store %struct.ksz_device* %8, %struct.ksz_device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %10 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %13 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @devm_kcalloc(i32 %11, i32 4, i32 %14, i32 %15)
  %17 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %18 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %20 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %1
  %27 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %28 = call i32 @ksz9477_reset_switch(%struct.ksz_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %33 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %70

37:                                               ; preds = %26
  %38 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %39 = load i32, i32* @REG_SW_QM_CTRL__4, align 4
  %40 = load i32, i32* @UNICAST_VLAN_BOUNDARY, align 4
  %41 = call i32 @ksz9477_cfg32(%struct.ksz_device* %38, i32 %39, i32 %40, i32 1)
  %42 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %43 = load i32, i32* @REG_SW_MAC_CTRL_0, align 4
  %44 = load i32, i32* @SW_CHECK_LENGTH, align 4
  %45 = call i32 @ksz_cfg(%struct.ksz_device* %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %47 = load i32, i32* @REG_SW_MAC_CTRL_1, align 4
  %48 = load i32, i32* @SW_LEGAL_PACKET_DISABLE, align 4
  %49 = call i32 @ksz_cfg(%struct.ksz_device* %46, i32 %47, i32 %48, i32 1)
  %50 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %51 = call i32 @ksz9477_config_cpu_port(%struct.dsa_switch* %50)
  %52 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %53 = load i32, i32* @REG_SW_MAC_CTRL_1, align 4
  %54 = load i32, i32* @MULTICAST_STORM_DISABLE, align 4
  %55 = call i32 @ksz_cfg(%struct.ksz_device* %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %57 = load i32, i32* @REG_SW_MAC_CTRL_5, align 4
  %58 = load i32, i32* @SW_OUT_RATE_LIMIT_QUEUE_BASED, align 4
  %59 = call i32 @ksz_cfg(%struct.ksz_device* %56, i32 %57, i32 %58, i32 1)
  %60 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %61 = load i32, i32* @REG_SW_MAC_CTRL_6, align 4
  %62 = load i32, i32* @SW_MIB_COUNTER_FREEZE, align 4
  %63 = call i32 @ksz_cfg(%struct.ksz_device* %60, i32 %61, i32 %62, i32 1)
  %64 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %65 = load i32, i32* @REG_SW_OPERATION, align 4
  %66 = load i32, i32* @SW_START, align 4
  %67 = call i32 @ksz_cfg(%struct.ksz_device* %64, i32 %65, i32 %66, i32 1)
  %68 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %69 = call i32 @ksz_init_mib_timer(%struct.ksz_device* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %37, %31, %23
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @ksz9477_reset_switch(%struct.ksz_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ksz9477_cfg32(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @ksz9477_config_cpu_port(%struct.dsa_switch*) #1

declare dso_local i32 @ksz_init_mib_timer(%struct.ksz_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
