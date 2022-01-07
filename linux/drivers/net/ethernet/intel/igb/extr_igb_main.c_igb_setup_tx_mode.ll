; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_setup_tx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_setup_tx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.e1000_hw, %struct.net_device* }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@e1000_i210 = common dso_local global i64 0, align 8
@E1000_I210_TQAVCTRL = common dso_local global i32 0, align 4
@E1000_TQAVCTRL_XMIT_MODE = common dso_local global i32 0, align 4
@E1000_TQAVCTRL_SP_WAIT_SR = common dso_local global i32 0, align 4
@E1000_TQAVCTRL_DATAFETCHARB = common dso_local global i32 0, align 4
@E1000_TXPBS = common dso_local global i32 0, align 4
@I210_TXPBSIZE_MASK = common dso_local global i32 0, align 4
@I210_TXPBSIZE_PB0_8KB = common dso_local global i32 0, align 4
@I210_TXPBSIZE_PB1_8KB = common dso_local global i32 0, align 4
@I210_TXPBSIZE_PB2_4KB = common dso_local global i32 0, align 4
@I210_TXPBSIZE_PB3_4KB = common dso_local global i32 0, align 4
@E1000_RXPBS = common dso_local global i32 0, align 4
@I210_RXPBSIZE_MASK = common dso_local global i32 0, align 4
@I210_RXPBSIZE_PB_30KB = common dso_local global i32 0, align 4
@E1000_I210_DTXMXPKTSZ = common dso_local global i32 0, align 4
@I210_SR_QUEUES_NUM = common dso_local global i32 0, align 4
@I210_RXPBSIZE_DEFAULT = common dso_local global i32 0, align 4
@I210_TXPBSIZE_DEFAULT = common dso_local global i32 0, align 4
@I210_DTXMXPKTSZ_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"FQTSS %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_setup_tx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_setup_tx_mode(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 1
  store %struct.e1000_hw* %12, %struct.e1000_hw** %4, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_i210, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %124

20:                                               ; preds = %1
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %22 = call i64 @is_fqtss_enabled(%struct.igb_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %97

24:                                               ; preds = %20
  %25 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %26 = call i32 @rd32(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @E1000_TQAVCTRL_XMIT_MODE, align 4
  %28 = load i32, i32* @E1000_TQAVCTRL_SP_WAIT_SR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @E1000_TQAVCTRL_DATAFETCHARB, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @wr32(i32 %36, i32 %37)
  %39 = load i32, i32* @E1000_TXPBS, align 4
  %40 = call i32 @rd32(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @I210_TXPBSIZE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @I210_TXPBSIZE_PB0_8KB, align 4
  %46 = load i32, i32* @I210_TXPBSIZE_PB1_8KB, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @I210_TXPBSIZE_PB2_4KB, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @I210_TXPBSIZE_PB3_4KB, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @E1000_TXPBS, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @wr32(i32 %54, i32 %55)
  %57 = load i32, i32* @E1000_RXPBS, align 4
  %58 = call i32 @rd32(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @I210_RXPBSIZE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @I210_RXPBSIZE_PB_30KB, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @E1000_RXPBS, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @wr32(i32 %66, i32 %67)
  store i32 63, i32* %5, align 4
  %69 = load i32, i32* @E1000_I210_DTXMXPKTSZ, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @wr32(i32 %69, i32 %70)
  %72 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @I210_SR_QUEUES_NUM, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %24
  %78 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  br label %83

81:                                               ; preds = %24
  %82 = load i32, i32* @I210_SR_QUEUES_NUM, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi i32 [ %80, %77 ], [ %82, %81 ]
  store i32 %84, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %93, %83
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @igb_config_tx_modes(%struct.igb_adapter* %90, i32 %91)
  br label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %85

96:                                               ; preds = %85
  br label %116

97:                                               ; preds = %20
  %98 = load i32, i32* @E1000_RXPBS, align 4
  %99 = load i32, i32* @I210_RXPBSIZE_DEFAULT, align 4
  %100 = call i32 @wr32(i32 %98, i32 %99)
  %101 = load i32, i32* @E1000_TXPBS, align 4
  %102 = load i32, i32* @I210_TXPBSIZE_DEFAULT, align 4
  %103 = call i32 @wr32(i32 %101, i32 %102)
  %104 = load i32, i32* @E1000_I210_DTXMXPKTSZ, align 4
  %105 = load i32, i32* @I210_DTXMXPKTSZ_DEFAULT, align 4
  %106 = call i32 @wr32(i32 %104, i32 %105)
  %107 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %108 = call i32 @rd32(i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @E1000_TQAVCTRL_XMIT_MODE, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @wr32(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %97, %96
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %119 = call i64 @is_fqtss_enabled(%struct.igb_adapter* %118)
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %123 = call i32 @netdev_dbg(%struct.net_device* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %116, %19
  ret void
}

declare dso_local i64 @is_fqtss_enabled(%struct.igb_adapter*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_config_tx_modes(%struct.igb_adapter*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
