; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_msix_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_msix_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_ring**, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IXGBE_EICS = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_EICR_MAILBOX = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_ext_t = common dso_local global i32 0, align 4
@IXGBE_EICR_GPI_SDP0_X540 = common dso_local global i32 0, align 4
@IXGBE_FLAG2_PHY_INTERRUPT = common dso_local global i32 0, align 4
@IXGBE_EICR_ECC = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Received ECC Err, initiating reset\0A\00", align 1
@__IXGBE_RESET_REQUESTED = common dso_local global i32 0, align 4
@IXGBE_EICR_FLOW_DIR = common dso_local global i32 0, align 4
@__IXGBE_TX_FDIR_INIT_DONE = common dso_local global i32 0, align 4
@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_EIMC_FLOW_DIR = common dso_local global i32 0, align 4
@IXGBE_FLAG2_FDIR_REQUIRES_REINIT = common dso_local global i32 0, align 4
@IXGBE_EICR_TIMESYNC = common dso_local global i32 0, align 4
@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ixgbe_msix_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_msix_other(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_ring*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.ixgbe_adapter*
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 4
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %6, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %16 = load i32, i32* @IXGBE_EICS, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, -65536
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = load i32, i32* @IXGBE_EICR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %30 = call i32 @ixgbe_check_lsc(%struct.ixgbe_adapter* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IXGBE_EICR_MAILBOX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %38 = call i32 @ixgbe_msg_task(%struct.ixgbe_adapter* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %141 [
    i32 132, label %44
    i32 131, label %44
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

44:                                               ; preds = %39, %39, %39, %39, %39
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ixgbe_phy_x550em_ext_t, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load i32, i32* @IXGBE_FLAG2_PHY_INTERRUPT, align 4
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %63 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %65 = load i32, i32* @IXGBE_EICR, align 4
  %66 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %56, %51, %44
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i32, i32* @link, align 4
  %75 = call i32 @e_info(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @__IXGBE_RESET_REQUESTED, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 1
  %79 = call i32 @set_bit(i32 %76, i32* %78)
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %81 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %80)
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %83 = load i32, i32* @IXGBE_EICR, align 4
  %84 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %85 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %68
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @IXGBE_EICR_FLOW_DIR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %115, %91
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %92
  %99 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %100 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %99, i32 0, i32 3
  %101 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %101, i64 %103
  %105 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %104, align 8
  store %struct.ixgbe_ring* %105, %struct.ixgbe_ring** %10, align 8
  %106 = load i32, i32* @__IXGBE_TX_FDIR_INIT_DONE, align 4
  %107 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %10, align 8
  %108 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %107, i32 0, i32 0
  %109 = call i32 @test_and_clear_bit(i32 %106, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %98
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %111, %98
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %92

118:                                              ; preds = %92
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %123 = load i32, i32* @IXGBE_EIMC, align 4
  %124 = load i32, i32* @IXGBE_EIMC_FLOW_DIR, align 4
  %125 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %122, i32 %123, i32 %124)
  %126 = load i32, i32* @IXGBE_FLAG2_FDIR_REQUIRES_REINIT, align 4
  %127 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %128 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %132 = call i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter* %131)
  br label %133

133:                                              ; preds = %121, %118
  br label %134

134:                                              ; preds = %133, %86
  %135 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter* %135, i32 %136)
  %138 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter* %138, i32 %139)
  br label %142

141:                                              ; preds = %39
  br label %142

142:                                              ; preds = %141, %134
  %143 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter* %143, i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @IXGBE_EICR_TIMESYNC, align 4
  %148 = and i32 %146, %147
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %153 = call i32 @ixgbe_ptp_check_pps_event(%struct.ixgbe_adapter* %152)
  br label %154

154:                                              ; preds = %151, %142
  %155 = load i32, i32* @__IXGBE_DOWN, align 4
  %156 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %157 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %156, i32 0, i32 1
  %158 = call i32 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %154
  %161 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %162 = call i32 @ixgbe_irq_enable(%struct.ixgbe_adapter* %161, i32 0, i32 0)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %164
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_check_lsc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_msg_task(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_service_event_schedule(%struct.ixgbe_adapter*) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_check_sfp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_check_overtemp_event(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_check_fan_failure(%struct.ixgbe_adapter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbe_ptp_check_pps_event(%struct.ixgbe_adapter*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_irq_enable(%struct.ixgbe_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
