; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { %struct.atl1e_hw }
%struct.atl1e_hw = type { i64, i32, i32, i32, i32 }

@athr_l2e_revB = common dso_local global i64 0, align 8
@REG_RXQ_JMBOSZ_RRDTIM = common dso_local global i32 0, align 4
@RXQ_JMBOSZ_TH_MASK = common dso_local global i32 0, align 4
@RXQ_JMBOSZ_TH_SHIFT = common dso_local global i32 0, align 4
@RXQ_JMBO_LKAH_MASK = common dso_local global i32 0, align 4
@RXQ_JMBO_LKAH_SHIFT = common dso_local global i32 0, align 4
@REG_SRAM_RXF_LEN = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_HI_MASK = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_HI_SHIFT = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_LO_MASK = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_LO_SHIFT = common dso_local global i32 0, align 4
@REG_RXQ_RXF_PAUSE_THRESH = common dso_local global i32 0, align 4
@REG_IDT_TABLE = common dso_local global i32 0, align 4
@REG_BASE_CPU_NUMBER = common dso_local global i32 0, align 4
@atl1e_rrs_ipv4 = common dso_local global i32 0, align 4
@RXQ_CTRL_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@atl1e_rrs_ipv4_tcp = common dso_local global i32 0, align 4
@RXQ_CTRL_HASH_TYPE_IPV4_TCP = common dso_local global i32 0, align 4
@atl1e_rrs_ipv6 = common dso_local global i32 0, align 4
@RXQ_CTRL_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@atl1e_rrs_ipv6_tcp = common dso_local global i32 0, align 4
@RXQ_CTRL_HASH_TYPE_IPV6_TCP = common dso_local global i32 0, align 4
@atl1e_rrs_disable = common dso_local global i32 0, align 4
@RXQ_CTRL_HASH_ENABLE = common dso_local global i32 0, align 4
@RXQ_CTRL_RSS_MODE_MQUESINT = common dso_local global i32 0, align 4
@RXQ_CTRL_IPV6_XSUM_VERIFY_EN = common dso_local global i32 0, align 4
@RXQ_CTRL_PBA_ALIGN_32 = common dso_local global i32 0, align 4
@RXQ_CTRL_CUT_THRU_EN = common dso_local global i32 0, align 4
@RXQ_CTRL_EN = common dso_local global i32 0, align 4
@REG_RXQ_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_configure_rx(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %9, i32 0, i32 0
  store %struct.atl1e_hw* %10, %struct.atl1e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %12 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @athr_l2e_revB, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %1
  %17 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %18 = load i32, i32* @REG_RXQ_JMBOSZ_RRDTIM, align 4
  %19 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %20 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RXQ_JMBOSZ_TH_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @RXQ_JMBOSZ_TH_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @RXQ_JMBO_LKAH_MASK, align 4
  %27 = and i32 1, %26
  %28 = load i32, i32* @RXQ_JMBO_LKAH_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %25, %29
  %31 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %17, i32 %18, i32 %30)
  %32 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %33 = load i32, i32* @REG_SRAM_RXF_LEN, align 4
  %34 = call i32 @AT_READ_REG(%struct.atl1e_hw* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sdiv i32 %36, 5
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 %38, 5
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RXQ_RXF_PAUSE_TH_HI_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @RXQ_RXF_PAUSE_TH_HI_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RXQ_RXF_PAUSE_TH_LO_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @RXQ_RXF_PAUSE_TH_LO_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %44, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %52 = load i32, i32* @REG_RXQ_RXF_PAUSE_THRESH, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %16, %1
  %56 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %57 = load i32, i32* @REG_IDT_TABLE, align 4
  %58 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %59 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %56, i32 %57, i32 %60)
  %62 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %63 = load i32, i32* @REG_BASE_CPU_NUMBER, align 4
  %64 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %65 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %62, i32 %63, i32 %66)
  %68 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %69 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @atl1e_rrs_ipv4, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %55
  %75 = load i32, i32* @RXQ_CTRL_HASH_TYPE_IPV4, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %55
  %79 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %80 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @atl1e_rrs_ipv4_tcp, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* @RXQ_CTRL_HASH_TYPE_IPV4_TCP, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %91 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @atl1e_rrs_ipv6, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @RXQ_CTRL_HASH_TYPE_IPV6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %102 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @atl1e_rrs_ipv6_tcp, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* @RXQ_CTRL_HASH_TYPE_IPV6_TCP, align 4
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %113 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @atl1e_rrs_disable, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* @RXQ_CTRL_HASH_ENABLE, align 4
  %119 = load i32, i32* @RXQ_CTRL_RSS_MODE_MQUESINT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %117, %111
  %124 = load i32, i32* @RXQ_CTRL_IPV6_XSUM_VERIFY_EN, align 4
  %125 = load i32, i32* @RXQ_CTRL_PBA_ALIGN_32, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @RXQ_CTRL_CUT_THRU_EN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @RXQ_CTRL_EN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %134 = load i32, i32* @REG_RXQ_CTRL, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %133, i32 %134, i32 %135)
  ret void
}

declare dso_local i32 @AT_WRITE_REGW(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
