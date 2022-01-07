; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.ksz_device* }
%struct.ksz_device = type { i32, i32*, i32, i32, i32 }
%struct.alu_struct = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to reset switch\0A\00", align 1
@S_REPLACE_VID_CTRL = common dso_local global i32 0, align 4
@SW_FLOW_CTRL = common dso_local global i32 0, align 4
@S_LINK_AGING_CTRL = common dso_local global i32 0, align 4
@SW_LINK_AUTO_AGING = common dso_local global i32 0, align 4
@REG_SW_CTRL_1 = common dso_local global i32 0, align 4
@SW_AGGR_BACKOFF = common dso_local global i32 0, align 4
@REG_SW_CTRL_2 = common dso_local global i32 0, align 4
@UNICAST_VLAN_BOUNDARY = common dso_local global i32 0, align 4
@NO_EXC_COLLISION_DROP = common dso_local global i32 0, align 4
@MULTICAST_STORM_DISABLE = common dso_local global i32 0, align 4
@SW_REPLACE_VID = common dso_local global i32 0, align 4
@S_MIRROR_CTRL = common dso_local global i32 0, align 4
@SW_MIRROR_RX_TX = common dso_local global i32 0, align 4
@BROADCAST_STORM_RATE = common dso_local global i32 0, align 4
@BROADCAST_STORM_VALUE = common dso_local global i32 0, align 4
@BROADCAST_STORM_PROT_RATE = common dso_local global i32 0, align 4
@VLAN_TABLE_ENTRIES = common dso_local global i32 0, align 4
@eth_stp_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @ksz8795_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8795_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca %struct.alu_struct, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 1
  %10 = load %struct.ksz_device*, %struct.ksz_device** %9, align 8
  store %struct.ksz_device* %10, %struct.ksz_device** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %12 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %15 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @devm_kcalloc(i32 %13, i32 4, i32 %16, i32 %17)
  %19 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %20 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %22 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %123

28:                                               ; preds = %1
  %29 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %30 = call i32 @ksz8795_reset_switch(%struct.ksz_device* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %35 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %123

39:                                               ; preds = %28
  %40 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %41 = load i32, i32* @S_REPLACE_VID_CTRL, align 4
  %42 = load i32, i32* @SW_FLOW_CTRL, align 4
  %43 = call i32 @ksz_cfg(%struct.ksz_device* %40, i32 %41, i32 %42, i32 1)
  %44 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %45 = load i32, i32* @S_LINK_AGING_CTRL, align 4
  %46 = load i32, i32* @SW_LINK_AUTO_AGING, align 4
  %47 = call i32 @ksz_cfg(%struct.ksz_device* %44, i32 %45, i32 %46, i32 1)
  %48 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %49 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @REG_SW_CTRL_1, align 4
  %54 = load i32, i32* @SW_AGGR_BACKOFF, align 4
  %55 = load i32, i32* @SW_AGGR_BACKOFF, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %58 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @REG_SW_CTRL_2, align 4
  %63 = load i32, i32* @UNICAST_VLAN_BOUNDARY, align 4
  %64 = load i32, i32* @NO_EXC_COLLISION_DROP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @UNICAST_VLAN_BOUNDARY, align 4
  %67 = load i32, i32* @NO_EXC_COLLISION_DROP, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %71 = call i32 @ksz8795_config_cpu_port(%struct.dsa_switch* %70)
  %72 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %73 = load i32, i32* @REG_SW_CTRL_2, align 4
  %74 = load i32, i32* @MULTICAST_STORM_DISABLE, align 4
  %75 = call i32 @ksz_cfg(%struct.ksz_device* %72, i32 %73, i32 %74, i32 1)
  %76 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %77 = load i32, i32* @S_REPLACE_VID_CTRL, align 4
  %78 = load i32, i32* @SW_REPLACE_VID, align 4
  %79 = call i32 @ksz_cfg(%struct.ksz_device* %76, i32 %77, i32 %78, i32 0)
  %80 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %81 = load i32, i32* @S_MIRROR_CTRL, align 4
  %82 = load i32, i32* @SW_MIRROR_RX_TX, align 4
  %83 = call i32 @ksz_cfg(%struct.ksz_device* %80, i32 %81, i32 %82, i32 0)
  %84 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %85 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @S_REPLACE_VID_CTRL, align 4
  %90 = load i32, i32* @BROADCAST_STORM_RATE, align 4
  %91 = load i32, i32* @BROADCAST_STORM_VALUE, align 4
  %92 = load i32, i32* @BROADCAST_STORM_PROT_RATE, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sdiv i32 %93, 100
  %95 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %104, %39
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @VLAN_TABLE_ENTRIES, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ksz8795_r_vlan_entries(%struct.ksz_device* %101, i32 %102)
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %96

107:                                              ; preds = %96
  %108 = call i32 @memset(%struct.alu_struct* %5, i32 0, i32 16)
  %109 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %5, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @eth_stp_addr, align 4
  %112 = call i32 @ether_addr_copy(i32 %110, i32 %111)
  %113 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %5, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %5, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %116 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %5, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  %119 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %120 = call i32 @ksz8795_w_sta_mac_table(%struct.ksz_device* %119, i32 0, %struct.alu_struct* %5)
  %121 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %122 = call i32 @ksz_init_mib_timer(%struct.ksz_device* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %107, %33, %25
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @ksz8795_reset_switch(%struct.ksz_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ksz8795_config_cpu_port(%struct.dsa_switch*) #1

declare dso_local i32 @ksz8795_r_vlan_entries(%struct.ksz_device*, i32) #1

declare dso_local i32 @memset(%struct.alu_struct*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ksz8795_w_sta_mac_table(%struct.ksz_device*, i32, %struct.alu_struct*) #1

declare dso_local i32 @ksz_init_mib_timer(%struct.ksz_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
