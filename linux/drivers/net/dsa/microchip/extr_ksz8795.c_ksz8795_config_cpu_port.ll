; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_config_cpu_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_config_cpu_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.ksz_device* }
%struct.ksz_device = type { i32, i64, i32, %struct.ksz_port*, i32, i32, i32 }
%struct.ksz_port = type { i32, i32, i32, i32, i32 }

@REG_SW_CTRL_2 = common dso_local global i32 0, align 4
@SW_LEGAL_PACKET_DISABLE = common dso_local global i32 0, align 4
@S_TAIL_TAG_CTRL = common dso_local global i32 0, align 4
@SW_TAIL_TAG_ENABLE = common dso_local global i32 0, align 4
@SWITCH_PORT_NUM = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@P_REMOTE_STATUS = common dso_local global i32 0, align 4
@PORT_FIBER_MODE = common dso_local global i32 0, align 4
@P_STP_CTRL = common dso_local global i32 0, align 4
@PORT_FORCE_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*)* @ksz8795_config_cpu_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_config_cpu_port(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca %struct.ksz_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 1
  %9 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  store %struct.ksz_device* %9, %struct.ksz_device** %3, align 8
  %10 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %11 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %17 = load i32, i32* @REG_SW_CTRL_2, align 4
  %18 = load i32, i32* @SW_LEGAL_PACKET_DISABLE, align 4
  %19 = call i32 @ksz_cfg(%struct.ksz_device* %16, i32 %17, i32 %18, i32 1)
  %20 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %21 = load i32, i32* @S_TAIL_TAG_CTRL, align 4
  %22 = load i32, i32* @SW_TAIL_TAG_ENABLE, align 4
  %23 = call i32 @ksz_cfg(%struct.ksz_device* %20, i32 %21, i32 %22, i32 1)
  %24 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %25 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %24, i32 0, i32 3
  %26 = load %struct.ksz_port*, %struct.ksz_port** %25, align 8
  %27 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %28 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %26, i64 %29
  store %struct.ksz_port* %30, %struct.ksz_port** %4, align 8
  %31 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %32 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %35 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %37 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %39 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %40 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ksz8795_port_setup(%struct.ksz_device* %38, i64 %41, i32 1)
  %43 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %44 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %47 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %83, %1
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SWITCH_PORT_NUM, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %48
  %53 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %54 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %53, i32 0, i32 3
  %55 = load %struct.ksz_port*, %struct.ksz_port** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %55, i64 %57
  store %struct.ksz_port* %58, %struct.ksz_port** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %62 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %64 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %67 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @BR_STATE_DISABLED, align 4
  %71 = call i32 @ksz8795_port_stp_state_set(%struct.dsa_switch* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %74 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %52
  br label %86

78:                                               ; preds = %52
  %79 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %80 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %82 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %48

86:                                               ; preds = %77, %48
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %135, %86
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %90 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %138

93:                                               ; preds = %87
  %94 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %95 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %94, i32 0, i32 3
  %96 = load %struct.ksz_port*, %struct.ksz_port** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %96, i64 %98
  store %struct.ksz_port* %99, %struct.ksz_port** %4, align 8
  %100 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %101 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  br label %135

105:                                              ; preds = %93
  %106 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @P_REMOTE_STATUS, align 4
  %109 = call i32 @ksz_pread8(%struct.ksz_device* %106, i32 %107, i32 %108, i32* %5)
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @PORT_FIBER_MODE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %116 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %105
  %118 = load %struct.ksz_port*, %struct.ksz_port** %4, align 8
  %119 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @P_STP_CTRL, align 4
  %126 = load i32, i32* @PORT_FORCE_FLOW_CTRL, align 4
  %127 = call i32 @ksz_port_cfg(%struct.ksz_device* %123, i32 %124, i32 %125, i32 %126, i32 1)
  br label %134

128:                                              ; preds = %117
  %129 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @P_STP_CTRL, align 4
  %132 = load i32, i32* @PORT_FORCE_FLOW_CTRL, align 4
  %133 = call i32 @ksz_port_cfg(%struct.ksz_device* %129, i32 %130, i32 %131, i32 %132, i32 0)
  br label %134

134:                                              ; preds = %128, %122
  br label %135

135:                                              ; preds = %134, %104
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %87

138:                                              ; preds = %87
  ret void
}

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @ksz8795_port_setup(%struct.ksz_device*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ksz8795_port_stp_state_set(%struct.dsa_switch*, i32, i32) #1

declare dso_local i32 @ksz_pread8(%struct.ksz_device*, i32, i32, i32*) #1

declare dso_local i32 @ksz_port_cfg(%struct.ksz_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
