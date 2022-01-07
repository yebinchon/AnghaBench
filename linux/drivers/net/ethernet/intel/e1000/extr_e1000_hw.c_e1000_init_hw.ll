; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Error Initializing Identification LED\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@VET = common dso_local global i32 0, align 4
@e1000_82542_rev2_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Disabling MWI on 82542 rev 2.0\0A\00", align 1
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_RST = common dso_local global i64 0, align 8
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MC_TBL_SIZE = common dso_local global i64 0, align 8
@MTA = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PRIOR = common dso_local global i64 0, align 8
@e1000_bus_type_pcix = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i32 0, align 4
@TXDCTL = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i64 0, align 8
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i64 0, align 8
@E1000_DEV_ID_82546GB_QUAD_COPPER = common dso_local global i64 0, align 8
@E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3 = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_RO_DIS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_init_hw(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = call i64 @e1000_id_led_init(%struct.e1000_hw* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %2, align 8
  br label %166

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = call i32 @e1000_set_media_type(%struct.e1000_hw* %17)
  %19 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 129
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @VET, align 4
  %26 = call i32 @ew32(i32 %25, i64 0)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i32 @e1000_clear_vfta(%struct.e1000_hw* %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @e1000_82542_rev2_0, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = call i32 @e1000_pci_clear_mwi(%struct.e1000_hw* %37)
  %39 = load i32, i32* @RCTL, align 4
  %40 = load i64, i64* @E1000_RCTL_RST, align 8
  %41 = call i32 @ew32(i32 %39, i64 %40)
  %42 = call i32 (...) @E1000_WRITE_FLUSH()
  %43 = call i32 @msleep(i32 5)
  br label %44

44:                                               ; preds = %35, %27
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = call i32 @e1000_init_rx_addrs(%struct.e1000_hw* %45)
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @e1000_82542_rev2_0, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load i32, i32* @RCTL, align 4
  %54 = call i32 @ew32(i32 %53, i64 0)
  %55 = call i32 (...) @E1000_WRITE_FLUSH()
  %56 = call i32 @msleep(i32 1)
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = call i32 @e1000_pci_set_mwi(%struct.e1000_hw* %64)
  br label %66

66:                                               ; preds = %63, %52
  br label %67

67:                                               ; preds = %66, %44
  %68 = call i32 @e_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i64, i64* @E1000_MC_TBL_SIZE, align 8
  store i64 %69, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %70

70:                                               ; preds = %80, %67
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = load i32, i32* @MTA, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %75, i32 %76, i64 %77, i32 0)
  %79 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %5, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %70

83:                                               ; preds = %70
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @e1000_82543, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i32, i32* @CTRL, align 4
  %96 = call i64 @er32(i32 %95)
  store i64 %96, i64* %4, align 8
  %97 = load i32, i32* @CTRL, align 4
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @E1000_CTRL_PRIOR, align 8
  %100 = or i64 %98, %99
  %101 = call i32 @ew32(i32 %97, i64 %100)
  br label %102

102:                                              ; preds = %94, %88, %83
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %107 [
    i32 129, label %106
    i32 128, label %106
  ]

106:                                              ; preds = %102, %102
  br label %121

107:                                              ; preds = %102
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @e1000_bus_type_pcix, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = call i32 @e1000_pcix_get_mmrbc(%struct.e1000_hw* %114)
  %116 = icmp sgt i32 %115, 2048
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = call i32 @e1000_pcix_set_mmrbc(%struct.e1000_hw* %118, i32 2048)
  br label %120

120:                                              ; preds = %117, %113, %107
  br label %121

121:                                              ; preds = %120, %106
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = call i64 @e1000_setup_link(%struct.e1000_hw* %122)
  store i64 %123, i64* %6, align 8
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @e1000_82544, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %121
  %130 = load i32, i32* @TXDCTL, align 4
  %131 = call i64 @er32(i32 %130)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* @E1000_TXDCTL_WTHRESH, align 8
  %134 = xor i64 %133, -1
  %135 = and i64 %132, %134
  %136 = load i64, i64* @E1000_TXDCTL_FULL_TX_DESC_WB, align 8
  %137 = or i64 %135, %136
  store i64 %137, i64* %4, align 8
  %138 = load i32, i32* @TXDCTL, align 4
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @ew32(i32 %138, i64 %139)
  br label %141

141:                                              ; preds = %129, %121
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %143 = call i32 @e1000_clear_hw_cntrs(%struct.e1000_hw* %142)
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %145 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @E1000_DEV_ID_82546GB_QUAD_COPPER, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %141
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %151 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %149, %141
  %156 = load i32, i32* @CTRL_EXT, align 4
  %157 = call i64 @er32(i32 %156)
  store i64 %157, i64* %8, align 8
  %158 = load i64, i64* @E1000_CTRL_EXT_RO_DIS, align 8
  %159 = load i64, i64* %8, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %8, align 8
  %161 = load i32, i32* @CTRL_EXT, align 4
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @ew32(i32 %161, i64 %162)
  br label %164

164:                                              ; preds = %155, %149
  %165 = load i64, i64* %6, align 8
  store i64 %165, i64* %2, align 8
  br label %166

166:                                              ; preds = %164, %13
  %167 = load i64, i64* %2, align 8
  ret i64 %167
}

declare dso_local i64 @e1000_id_led_init(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_set_media_type(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i32 @e1000_clear_vfta(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pci_clear_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_init_rx_addrs(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @e1000_pcix_get_mmrbc(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pcix_set_mmrbc(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_setup_link(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_clear_hw_cntrs(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
