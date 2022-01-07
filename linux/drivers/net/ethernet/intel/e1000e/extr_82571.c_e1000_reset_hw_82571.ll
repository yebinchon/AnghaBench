; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_reset_hw_82571.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_82571.c_e1000_reset_hw_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@e1000_nvm_flash_hw = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EE_RST = common dso_local global i32 0, align 4
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_REQ = common dso_local global i32 0, align 4
@E1000_EECD_GNT = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_serdes_link_down = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = call i64 @e1000e_disable_pcie_master(%struct.e1000_hw* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @IMC, align 4
  %18 = call i32 @ew32(i32 %17, i32 -1)
  %19 = load i32, i32* @RCTL, align 4
  %20 = call i32 @ew32(i32 %19, i32 0)
  %21 = load i32, i32* @TCTL, align 4
  %22 = call i32 @er32(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @E1000_TCTL_EN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @TCTL, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ew32(i32 %27, i32 %28)
  %30 = call i32 (...) @e1e_flush()
  %31 = call i32 @usleep_range(i32 10000, i32 11000)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %42 [
    i32 130, label %36
    i32 129, label %39
    i32 128, label %39
  ]

36:                                               ; preds = %15
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = call i64 @e1000_get_hw_semaphore_82573(%struct.e1000_hw* %37)
  store i64 %38, i64* %8, align 8
  br label %43

39:                                               ; preds = %15, %15
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i64 @e1000_get_hw_semaphore_82574(%struct.e1000_hw* %40)
  store i64 %41, i64* %8, align 8
  br label %43

42:                                               ; preds = %15
  br label %43

43:                                               ; preds = %42, %39, %36
  %44 = load i32, i32* @CTRL, align 4
  %45 = call i32 @er32(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @CTRL, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @E1000_CTRL_RST, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @ew32(i32 %47, i32 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %70 [
    i32 130, label %56
    i32 129, label %63
    i32 128, label %63
  ]

56:                                               ; preds = %43
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = call i32 @e1000_put_hw_semaphore_82573(%struct.e1000_hw* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %71

63:                                               ; preds = %43, %43
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = call i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw* %67)
  br label %69

69:                                               ; preds = %66, %63
  br label %71

70:                                               ; preds = %43
  br label %71

71:                                               ; preds = %70, %69, %62
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @e1000_nvm_flash_hw, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = call i32 @usleep_range(i32 10, i32 20)
  %80 = load i32, i32* @CTRL_EXT, align 4
  %81 = call i32 @er32(i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @E1000_CTRL_EXT_EE_RST, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @CTRL_EXT, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @ew32(i32 %85, i32 %86)
  %88 = call i32 (...) @e1e_flush()
  br label %89

89:                                               ; preds = %78, %71
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = call i64 @e1000e_get_auto_rd_done(%struct.e1000_hw* %90)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %2, align 8
  br label %149

96:                                               ; preds = %89
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %115 [
    i32 132, label %101
    i32 131, label %101
    i32 130, label %113
    i32 129, label %113
    i32 128, label %113
  ]

101:                                              ; preds = %96, %96
  %102 = load i32, i32* @EECD, align 4
  %103 = call i32 @er32(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @E1000_EECD_REQ, align 4
  %105 = load i32, i32* @E1000_EECD_GNT, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @EECD, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @ew32(i32 %110, i32 %111)
  br label %116

113:                                              ; preds = %96, %96, %96
  %114 = call i32 @msleep(i32 25)
  br label %116

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115, %113, %101
  %117 = load i32, i32* @IMC, align 4
  %118 = call i32 @ew32(i32 %117, i32 -1)
  %119 = load i32, i32* @ICR, align 4
  %120 = call i32 @er32(i32 %119)
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 132
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = call i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %127)
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %8, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i64, i64* %8, align 8
  store i64 %132, i64* %2, align 8
  br label %149

133:                                              ; preds = %126
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = call i32 @e1000e_set_laa_state_82571(%struct.e1000_hw* %134, i32 1)
  br label %136

136:                                              ; preds = %133, %116
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %138 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %136
  %144 = load i32, i32* @e1000_serdes_link_down, align 4
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %143, %136
  store i64 0, i64* %2, align 8
  br label %149

149:                                              ; preds = %148, %131, %94
  %150 = load i64, i64* %2, align 8
  ret i64 %150
}

declare dso_local i64 @e1000e_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000_get_hw_semaphore_82573(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_get_hw_semaphore_82574(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_put_hw_semaphore_82573(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000e_set_laa_state_82571(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
