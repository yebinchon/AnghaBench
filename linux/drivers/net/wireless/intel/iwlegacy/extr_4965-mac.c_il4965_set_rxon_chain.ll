; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_rxon_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_rxon_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@S_POWER_PMI = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_VALID_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_MIMO_CNT_POS = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_CNT_POS = common dso_local global i32 0, align 4
@IL_NUM_RX_CHAINS_SINGLE = common dso_local global i32 0, align 4
@RXON_RX_CHAIN_MIMO_FORCE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"rx_chain=0x%X active=%d idle=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_set_rxon_chain(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = call i32 @il4965_is_single_rx_stream(%struct.il_priv* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @S_POWER_PMI, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 3
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @RXON_RX_CHAIN_VALID_POS, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %39 = call i32 @il4965_get_active_rx_chain_count(%struct.il_priv* %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @il4965_get_idle_rx_chain_count(%struct.il_priv* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @il4965_count_chain_bitmap(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %34
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @RXON_RX_CHAIN_MIMO_CNT_POS, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RXON_RX_CHAIN_CNT_POS, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @cpu_to_le16(i32 %67)
  %69 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %70 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @IL_NUM_RX_CHAINS_SINGLE, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* @RXON_RX_CHAIN_MIMO_FORCE_MSK, align 4
  %83 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %96

88:                                               ; preds = %78, %74, %56
  %89 = load i32, i32* @RXON_RX_CHAIN_MIMO_FORCE_MSK, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %81
  %97 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @D_ASSOC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %110, %111
  br label %113

113:                                              ; preds = %109, %106, %96
  %114 = phi i1 [ true, %106 ], [ true, %96 ], [ %112, %109 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @WARN_ON(i32 %115)
  ret void
}

declare dso_local i32 @il4965_is_single_rx_stream(%struct.il_priv*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il4965_get_active_rx_chain_count(%struct.il_priv*) #1

declare dso_local i32 @il4965_get_idle_rx_chain_count(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_count_chain_bitmap(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @D_ASSOC(i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
