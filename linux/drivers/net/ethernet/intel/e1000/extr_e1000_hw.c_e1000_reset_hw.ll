; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Disabling MWI on 82542 rev 2.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@CTRL_DUP = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EE_RST = common dso_local global i32 0, align 4
@MANC = common dso_local global i32 0, align 4
@E1000_MANC_ARP_EN = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_reset_hw(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 138
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = call i32 @e1000_pci_clear_mwi(%struct.e1000_hw* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @IMC, align 4
  %21 = call i32 @ew32(i32 %20, i32 -1)
  %22 = load i32, i32* @RCTL, align 4
  %23 = call i32 @ew32(i32 %22, i32 0)
  %24 = load i32, i32* @TCTL, align 4
  %25 = load i32, i32* @E1000_TCTL_PSP, align 4
  %26 = call i32 @ew32(i32 %24, i32 %25)
  %27 = call i32 (...) @E1000_WRITE_FLUSH()
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = call i32 @msleep(i32 10)
  %31 = load i32, i32* @CTRL, align 4
  %32 = call i32 @er32(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 140
  br i1 %36, label %42, label %37

37:                                               ; preds = %18
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 130
  br i1 %41, label %42, label %50

42:                                               ; preds = %37, %18
  %43 = load i32, i32* @CTRL, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ew32(i32 %43, i32 %46)
  %48 = call i32 (...) @E1000_WRITE_FLUSH()
  %49 = call i32 @msleep(i32 5)
  br label %50

50:                                               ; preds = %42, %37
  %51 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %69 [
    i32 135, label %55
    i32 141, label %55
    i32 134, label %55
    i32 132, label %55
    i32 140, label %55
    i32 139, label %55
    i32 133, label %62
    i32 131, label %62
    i32 128, label %68
  ]

55:                                               ; preds = %50, %50, %50, %50, %50, %50
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %57 = load i32, i32* @CTRL, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @E1000_CTRL_RST, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @E1000_WRITE_REG_IO(%struct.e1000_hw* %56, i32 %57, i32 %60)
  br label %75

62:                                               ; preds = %50, %50
  %63 = load i32, i32* @CTRL_DUP, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @E1000_CTRL_RST, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ew32(i32 %63, i32 %66)
  br label %75

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %50, %68
  %70 = load i32, i32* @CTRL, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @E1000_CTRL_RST, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @ew32(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %62, %55
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %93 [
    i32 138, label %79
    i32 137, label %79
    i32 136, label %79
    i32 135, label %79
    i32 140, label %91
    i32 139, label %91
    i32 130, label %91
    i32 129, label %91
  ]

79:                                               ; preds = %75, %75, %75, %75
  %80 = call i32 @udelay(i32 10)
  %81 = load i32, i32* @CTRL_EXT, align 4
  %82 = call i32 @er32(i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @E1000_CTRL_EXT_EE_RST, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @CTRL_EXT, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ew32(i32 %86, i32 %87)
  %89 = call i32 (...) @E1000_WRITE_FLUSH()
  %90 = call i32 @msleep(i32 2)
  br label %101

91:                                               ; preds = %75, %75, %75, %75
  %92 = call i32 @msleep(i32 20)
  br label %101

93:                                               ; preds = %75
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = call i32 @e1000_get_auto_rd_done(%struct.e1000_hw* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %165

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %91, %79
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sge i32 %104, 141
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i32, i32* @MANC, align 4
  %108 = call i32 @er32(i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @E1000_MANC_ARP_EN, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @MANC, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ew32(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %106, %101
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 140
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 130
  br i1 %125, label %126, label %142

126:                                              ; preds = %121, %116
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = call i32 @e1000_phy_init_script(%struct.e1000_hw* %127)
  %129 = load i32, i32* @LEDCTL, align 4
  %130 = call i32 @er32(i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %135 = load i32, i32* @IGP_LED3_MODE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @LEDCTL, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @ew32(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %126, %121
  %143 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @IMC, align 4
  %145 = call i32 @ew32(i32 %144, i32 -1)
  %146 = load i32, i32* @ICR, align 4
  %147 = call i32 @er32(i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %149 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 138
  br i1 %151, label %152, label %163

152:                                              ; preds = %142
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %154 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %161 = call i32 @e1000_pci_set_mwi(%struct.e1000_hw* %160)
  br label %162

162:                                              ; preds = %159, %152
  br label %163

163:                                              ; preds = %162, %142
  %164 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %98
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_pci_clear_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @E1000_WRITE_REG_IO(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_phy_init_script(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
