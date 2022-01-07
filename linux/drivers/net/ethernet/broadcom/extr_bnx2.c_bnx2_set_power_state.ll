; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32 }

@BNX2_EMAC_MODE = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_MPKT_RCVD = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_ACPI_RCVD = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_MPKT = common dso_local global i32 0, align 4
@BNX2_RPM_CONFIG = common dso_local global i32 0, align 4
@BNX2_RPM_CONFIG_ACPI_ENA = common dso_local global i32 0, align 4
@BNX2_CHIP_ID_5706_A0 = common dso_local global i32 0, align 4
@BNX2_CHIP_ID_5706_A1 = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i32 0, align 4
@BNX2_BC_STATE_CONDITION = common dso_local global i32 0, align 4
@BNX2_CONDITION_PM_STATE_MASK = common dso_local global i32 0, align 4
@BNX2_CONDITION_PM_STATE_UNPREP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32)* @bnx2_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_power_state(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %105 [
    i32 129, label %9
    i32 128, label %45
  ]

9:                                                ; preds = %2
  %10 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_enable_wake(i32 %12, i32 129, i32 0)
  %14 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_set_power_state(i32 %16, i32 129)
  %18 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %19 = load i32, i32* @BNX2_EMAC_MODE, align 4
  %20 = call i32 @BNX2_RD(%struct.bnx2* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @BNX2_EMAC_MODE_MPKT_RCVD, align 4
  %22 = load i32, i32* @BNX2_EMAC_MODE_ACPI_RCVD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @BNX2_EMAC_MODE_MPKT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %31 = load i32, i32* @BNX2_EMAC_MODE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @BNX2_WR(%struct.bnx2* %30, i32 %31, i32 %32)
  %34 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %35 = load i32, i32* @BNX2_RPM_CONFIG, align 4
  %36 = call i32 @BNX2_RD(%struct.bnx2* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @BNX2_RPM_CONFIG_ACPI_ENA, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %42 = load i32, i32* @BNX2_RPM_CONFIG, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BNX2_WR(%struct.bnx2* %41, i32 %42, i32 %43)
  br label %108

45:                                               ; preds = %2
  %46 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %47 = call i32 @bnx2_setup_wol(%struct.bnx2* %46)
  %48 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pci_wake_from_d3(i32 %50, i32 %53)
  %55 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %56 = call i32 @BNX2_CHIP_ID(%struct.bnx2* %55)
  %57 = load i32, i32* @BNX2_CHIP_ID_5706_A0, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %45
  %60 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %61 = call i32 @BNX2_CHIP_ID(%struct.bnx2* %60)
  %62 = load i32, i32* @BNX2_CHIP_ID_5706_A1, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %59, %45
  %65 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %66 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %71 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_set_power_state(i32 %72, i32 128)
  br label %74

74:                                               ; preds = %69, %64
  br label %108

75:                                               ; preds = %59
  %76 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %77 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %75
  %81 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %82 = call i32 @BNX2_CHIP(%struct.bnx2* %81)
  %83 = load i32, i32* @BNX2_CHIP_5709, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %87 = load i32, i32* @BNX2_BC_STATE_CONDITION, align 4
  %88 = call i32 @bnx2_shmem_rd(%struct.bnx2* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @BNX2_CONDITION_PM_STATE_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @BNX2_CONDITION_PM_STATE_UNPREP, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %97 = load i32, i32* @BNX2_BC_STATE_CONDITION, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @bnx2_shmem_wr(%struct.bnx2* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %85, %80, %75
  %101 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %102 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pci_set_power_state(i32 %103, i32 128)
  br label %108

105:                                              ; preds = %2
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %109

108:                                              ; preds = %100, %74, %9
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @pci_enable_wake(i32, i32, i32) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_setup_wol(%struct.bnx2*) #1

declare dso_local i32 @pci_wake_from_d3(i32, i32) #1

declare dso_local i32 @BNX2_CHIP_ID(%struct.bnx2*) #1

declare dso_local i32 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_shmem_wr(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
