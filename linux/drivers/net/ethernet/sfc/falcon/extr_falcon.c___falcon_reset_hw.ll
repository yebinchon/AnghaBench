; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c___falcon_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c___falcon_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"performing %s hardware reset\0A\00", align 1
@RESET_TYPE_WORLD = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"failed to backup PCI state of primary function prior to hardware reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"failed to backup PCI state of secondary function prior to hardware reset\0A\00", align 1
@FRF_AB_EXT_PHY_RST_DUR = common dso_local global i32 0, align 4
@FFE_AB_EXT_PHY_RST_DUR_10240US = common dso_local global i32 0, align 4
@FRF_AB_SWRST = common dso_local global i32 0, align 4
@FRF_AB_EXT_PHY_RST_CTL = common dso_local global i32 0, align 4
@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4
@FRF_AB_PCIE_CORE_RST_CTL = common dso_local global i32 0, align 4
@FRF_AB_PCIE_NSTKY_RST_CTL = common dso_local global i32 0, align 4
@FRF_AB_PCIE_SD_RST_CTL = common dso_local global i32 0, align 4
@FRF_AB_EE_RST_CTL = common dso_local global i32 0, align 4
@FR_AB_GLB_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"waiting for hardware reset\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"successfully restored PCI config\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"timed out waiting for hardware reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"hardware reset complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, i32)* @__falcon_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__falcon_reset_hw(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.falcon_nic_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 2
  %11 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %10, align 8
  store %struct.falcon_nic_data* %11, %struct.falcon_nic_data** %6, align 8
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %13 = load i32, i32* @hw, align 4
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %15 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @RESET_TYPE(i32 %17)
  %19 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RESET_TYPE_WORLD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %2
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %25 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pci_save_state(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %34 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netif_err(%struct.ef4_nic* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %142

37:                                               ; preds = %23
  %38 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %39 = call i64 @ef4_nic_is_dual_func(%struct.ef4_nic* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %43 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pci_save_state(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %50 = load i32, i32* @drv, align 4
  %51 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %52 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_err(%struct.ef4_nic* %49, i32 %50, i32 %53, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %137

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FRF_AB_EXT_PHY_RST_DUR, align 4
  %59 = load i32, i32* @FFE_AB_EXT_PHY_RST_DUR_10240US, align 4
  %60 = load i32, i32* @FRF_AB_SWRST, align 4
  %61 = call i32 @EF4_POPULATE_OWORD_2(i32 %57, i32 %58, i32 %59, i32 %60, i32 1)
  br label %77

62:                                               ; preds = %2
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FRF_AB_EXT_PHY_RST_CTL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @FRF_AB_PCIE_CORE_RST_CTL, align 4
  %70 = load i32, i32* @FRF_AB_PCIE_NSTKY_RST_CTL, align 4
  %71 = load i32, i32* @FRF_AB_PCIE_SD_RST_CTL, align 4
  %72 = load i32, i32* @FRF_AB_EE_RST_CTL, align 4
  %73 = load i32, i32* @FRF_AB_EXT_PHY_RST_DUR, align 4
  %74 = load i32, i32* @FFE_AB_EXT_PHY_RST_DUR_10240US, align 4
  %75 = load i32, i32* @FRF_AB_SWRST, align 4
  %76 = call i32 @EF4_POPULATE_OWORD_7(i32 %63, i32 %64, i32 %68, i32 %69, i32 1, i32 %70, i32 1, i32 %71, i32 1, i32 %72, i32 1, i32 %73, i32 %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %62, %56
  %78 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %79 = load i32, i32* @FR_AB_GLB_CTL, align 4
  %80 = call i32 @ef4_writeo(%struct.ef4_nic* %78, i32* %7, i32 %79)
  %81 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %82 = load i32, i32* @hw, align 4
  %83 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %84 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %81, i32 %82, i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @HZ, align 4
  %88 = sdiv i32 %87, 20
  %89 = call i32 @schedule_timeout_uninterruptible(i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @RESET_TYPE_WORLD, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %77
  %94 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %95 = call i64 @ef4_nic_is_dual_func(%struct.ef4_nic* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  %99 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pci_restore_state(i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  %103 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %104 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pci_restore_state(i32 %105)
  %107 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %108 = load i32, i32* @drv, align 4
  %109 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %110 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %107, i32 %108, i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %102, %77
  %114 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %115 = load i32, i32* @FR_AB_GLB_CTL, align 4
  %116 = call i32 @ef4_reado(%struct.ef4_nic* %114, i32* %7, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @FRF_AB_SWRST, align 4
  %119 = call i64 @EF4_OWORD_FIELD(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %113
  %122 = load i32, i32* @ETIMEDOUT, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %8, align 4
  %124 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %125 = load i32, i32* @hw, align 4
  %126 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %127 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @netif_err(%struct.ef4_nic* %124, i32 %125, i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %143

130:                                              ; preds = %113
  %131 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %132 = load i32, i32* @hw, align 4
  %133 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %134 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (%struct.ef4_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.ef4_nic* %131, i32 %132, i32 %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %145

137:                                              ; preds = %48
  %138 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %139 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @pci_restore_state(i32 %140)
  br label %142

142:                                              ; preds = %137, %30
  br label %143

143:                                              ; preds = %142, %121
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %130
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @RESET_TYPE(i32) #1

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i64 @ef4_nic_is_dual_func(%struct.ef4_nic*) #1

declare dso_local i32 @EF4_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_7(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @pci_restore_state(i32) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i64 @EF4_OWORD_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
