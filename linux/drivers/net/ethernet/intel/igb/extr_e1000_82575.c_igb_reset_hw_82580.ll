; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_reset_hw_82580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_reset_hw_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*, i32)*, i64 (%struct.e1000_hw.1*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@E1000_SW_SYNCH_MB = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STAT_DEV_RST_SET = common dso_local global i32 0, align 4
@E1000_CTRL_DEV_RST = common dso_local global i32 0, align 4
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Auto Read Done did not complete\0A\00", align 1
@E1000_ICR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Could not reset MDICNFG based on EEPROM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_reset_hw_82580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_reset_hw_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load i32, i32* @E1000_SW_SYNCH_MB, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_82580, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* @E1000_CTRL, align 4
  %26 = call i32 @rd32(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = call i64 @igb_disable_pcie_master(%struct.e1000_hw* %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @hw_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  %34 = call i32 @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @E1000_IMC, align 4
  %36 = call i32 @wr32(i32 %35, i32 -1)
  %37 = load i32, i32* @E1000_RCTL, align 4
  %38 = call i32 @wr32(i32 %37, i32 0)
  %39 = load i32, i32* @E1000_TCTL, align 4
  %40 = load i32, i32* @E1000_TCTL_PSP, align 4
  %41 = call i32 @wr32(i32 %39, i32 %40)
  %42 = call i32 (...) @wrfl()
  %43 = call i32 @usleep_range(i32 10000, i32 11000)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %33
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64 (%struct.e1000_hw.1*, i32)*, i64 (%struct.e1000_hw.1*, i32)** %50, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = bitcast %struct.e1000_hw* %52 to %struct.e1000_hw.1*
  %54 = load i32, i32* %4, align 4
  %55 = call i64 %51(%struct.e1000_hw.1* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %46, %33
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* @E1000_STATUS, align 4
  %63 = call i32 @rd32(i32 %62)
  %64 = load i32, i32* @E1000_STAT_DEV_RST_SET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @E1000_CTRL_DEV_RST, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %61, %58
  %72 = load i32, i32* @E1000_CTRL_RST, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @E1000_CTRL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @wr32(i32 %76, i32 %77)
  %79 = call i32 (...) @wrfl()
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %84

84:                                               ; preds = %82, %75
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %86 = call i64 @igb_get_auto_rd_done(%struct.e1000_hw* %85)
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %3, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @hw_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* @E1000_STATUS, align 4
  %93 = load i32, i32* @E1000_STAT_DEV_RST_SET, align 4
  %94 = call i32 @wr32(i32 %92, i32 %93)
  %95 = load i32, i32* @E1000_IMC, align 4
  %96 = call i32 @wr32(i32 %95, i32 -1)
  %97 = load i32, i32* @E1000_ICR, align 4
  %98 = call i32 @rd32(i32 %97)
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %100 = call i64 @igb_reset_mdicnfg_82580(%struct.e1000_hw* %99)
  store i64 %100, i64* %3, align 8
  %101 = load i64, i64* %3, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = call i32 @hw_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %91
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %107 = call i64 @igb_check_alt_mac_addr(%struct.e1000_hw* %106)
  store i64 %107, i64* %3, align 8
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32 (%struct.e1000_hw.0*, i32)*, i32 (%struct.e1000_hw.0*, i32)** %114, align 8
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %117 = bitcast %struct.e1000_hw* %116 to %struct.e1000_hw.0*
  %118 = load i32, i32* %4, align 4
  %119 = call i32 %115(%struct.e1000_hw.0* %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %105
  %121 = load i64, i64* %3, align 8
  ret i64 %121
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i64 @igb_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @igb_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i64 @igb_reset_mdicnfg_82580(%struct.e1000_hw*) #1

declare dso_local i64 @igb_check_alt_mac_addr(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
