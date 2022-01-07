; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i64 }

@NUM_RFD_BURST_PREF_SHFT = common dso_local global i32 0, align 4
@NUM_RFD_BURST_PREF_BMSK = common dso_local global i32 0, align 4
@SP_IPV6 = common dso_local global i32 0, align 4
@CUT_THRU_EN = common dso_local global i32 0, align 4
@EMAC_RXQ_CTRL_0 = common dso_local global i64 0, align 8
@EMAC_RXQ_CTRL_1 = common dso_local global i64 0, align 8
@JUMBO_1KAH_BMSK = common dso_local global i32 0, align 4
@RFD_PREF_LOW_THRESHOLD_BMSK = common dso_local global i32 0, align 4
@RFD_PREF_UP_THRESHOLD_BMSK = common dso_local global i32 0, align 4
@JUMBO_1KAH = common dso_local global i32 0, align 4
@JUMBO_1KAH_SHFT = common dso_local global i32 0, align 4
@RFD_PREF_LOW_TH = common dso_local global i32 0, align 4
@RFD_PREF_LOW_THRESHOLD_SHFT = common dso_local global i32 0, align 4
@RFD_PREF_UP_TH = common dso_local global i32 0, align 4
@RFD_PREF_UP_THRESHOLD_SHFT = common dso_local global i32 0, align 4
@EMAC_RXQ_CTRL_2 = common dso_local global i64 0, align 8
@RXF_DOF_THRESHOLD_BMSK = common dso_local global i32 0, align 4
@RXF_UOF_THRESHOLD_BMSK = common dso_local global i32 0, align 4
@RXF_DOF_THRESFHOLD = common dso_local global i32 0, align 4
@RXF_DOF_THRESHOLD_SHFT = common dso_local global i32 0, align 4
@RXF_UOF_THRESFHOLD = common dso_local global i32 0, align 4
@RXF_UOF_THRESHOLD_SHFT = common dso_local global i32 0, align 4
@EMAC_RXQ_CTRL_3 = common dso_local global i64 0, align 8
@RXD_TIMER_BMSK = common dso_local global i32 0, align 4
@RXD_THRESHOLD_BMSK = common dso_local global i32 0, align 4
@RXD_TH = common dso_local global i32 0, align 4
@RXD_THRESHOLD_SHFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_mac_rx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_rx_config(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %4 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @NUM_RFD_BURST_PREF_SHFT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @NUM_RFD_BURST_PREF_BMSK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @SP_IPV6, align 4
  %12 = load i32, i32* @CUT_THRU_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EMAC_RXQ_CTRL_0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EMAC_RXQ_CTRL_1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @JUMBO_1KAH_BMSK, align 4
  %30 = load i32, i32* @RFD_PREF_LOW_THRESHOLD_BMSK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RFD_PREF_UP_THRESHOLD_BMSK, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @JUMBO_1KAH, align 4
  %38 = load i32, i32* @JUMBO_1KAH_SHFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @RFD_PREF_LOW_TH, align 4
  %41 = load i32, i32* @RFD_PREF_LOW_THRESHOLD_SHFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* @RFD_PREF_UP_TH, align 4
  %45 = load i32, i32* @RFD_PREF_UP_THRESHOLD_SHFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EMAC_RXQ_CTRL_1, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EMAC_RXQ_CTRL_2, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @RXF_DOF_THRESHOLD_BMSK, align 4
  %64 = load i32, i32* @RXF_UOF_THRESHOLD_BMSK, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @RXF_DOF_THRESFHOLD, align 4
  %70 = load i32, i32* @RXF_DOF_THRESHOLD_SHFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* @RXF_UOF_THRESFHOLD, align 4
  %73 = load i32, i32* @RXF_UOF_THRESHOLD_SHFT, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @EMAC_RXQ_CTRL_2, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EMAC_RXQ_CTRL_3, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @RXD_TIMER_BMSK, align 4
  %92 = load i32, i32* @RXD_THRESHOLD_BMSK, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* @RXD_TH, align 4
  %98 = load i32, i32* @RXD_THRESHOLD_SHFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @EMAC_RXQ_CTRL_3, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
