; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_tp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_tp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tp_params = type { i32 }

@A_TP_GLOBAL_CONFIG = common dso_local global i32 0, align 4
@F_TXPACINGENABLE = common dso_local global i32 0, align 4
@F_PATHMTU = common dso_local global i32 0, align 4
@F_IPCHECKSUMOFFLOAD = common dso_local global i32 0, align 4
@F_UDPCHECKSUMOFFLOAD = common dso_local global i32 0, align 4
@F_TCPCHECKSUMOFFLOAD = common dso_local global i32 0, align 4
@A_TP_TCP_OPTIONS = common dso_local global i32 0, align 4
@F_MTUENABLE = common dso_local global i32 0, align 4
@A_TP_DACK_CONFIG = common dso_local global i32 0, align 4
@F_AUTOCAREFUL = common dso_local global i32 0, align 4
@F_AUTOENABLE = common dso_local global i32 0, align 4
@A_TP_IN_CONFIG = common dso_local global i32 0, align 4
@F_RXFBARBPRIO = common dso_local global i32 0, align 4
@F_TXFBARBPRIO = common dso_local global i32 0, align 4
@F_IPV6ENABLE = common dso_local global i32 0, align 4
@F_NICMODE = common dso_local global i32 0, align 4
@A_TP_TX_RESOURCE_LIMIT = common dso_local global i32 0, align 4
@A_TP_PARA_REG4 = common dso_local global i32 0, align 4
@A_TP_PARA_REG6 = common dso_local global i32 0, align 4
@F_ENABLEESND = common dso_local global i32 0, align 4
@F_T3A_ENABLEESND = common dso_local global i32 0, align 4
@A_TP_PC_CONFIG = common dso_local global i32 0, align 4
@F_ENABLEEPCMDAFULL = common dso_local global i32 0, align 4
@F_ENABLEOCSPIFULL = common dso_local global i32 0, align 4
@F_TXDEFERENABLE = common dso_local global i32 0, align 4
@F_HEARBEATDACK = common dso_local global i32 0, align 4
@F_TXCONGESTIONMODE = common dso_local global i32 0, align 4
@F_RXCONGESTIONMODE = common dso_local global i32 0, align 4
@A_TP_PC_CONFIG2 = common dso_local global i32 0, align 4
@F_CHDRAFULL = common dso_local global i32 0, align 4
@F_ENABLEIPV6RSS = common dso_local global i32 0, align 4
@F_ENABLENONOFDTNLSYN = common dso_local global i32 0, align 4
@F_ENABLEARPMISS = common dso_local global i32 0, align 4
@F_DISBLEDAPARBIT0 = common dso_local global i32 0, align 4
@A_TP_PROXY_FLOW_CNTL = common dso_local global i32 0, align 4
@A_TP_EGRESS_CONFIG = common dso_local global i32 0, align 4
@F_REWRITEFORCETOSIZE = common dso_local global i32 0, align 4
@A_TP_PARA_REG3 = common dso_local global i32 0, align 4
@F_TXPACEAUTO = common dso_local global i32 0, align 4
@F_LOCKTID = common dso_local global i32 0, align 4
@F_TXPACEAUTOSTRICT = common dso_local global i32 0, align 4
@F_TXPACEFIXED = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@M_TABLELATENCYDELTA = common dso_local global i32 0, align 4
@A_TP_TX_MOD_QUEUE_WEIGHT1 = common dso_local global i32 0, align 4
@A_TP_TX_MOD_QUEUE_WEIGHT0 = common dso_local global i32 0, align 4
@A_TP_MOD_CHANNEL_WEIGHT = common dso_local global i32 0, align 4
@A_TP_MOD_RATE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.tp_params*)* @tp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tp_config(%struct.adapter* %0, %struct.tp_params* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.tp_params*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.tp_params* %1, %struct.tp_params** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load i32, i32* @A_TP_GLOBAL_CONFIG, align 4
  %7 = load i32, i32* @F_TXPACINGENABLE, align 4
  %8 = load i32, i32* @F_PATHMTU, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @F_IPCHECKSUMOFFLOAD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @F_UDPCHECKSUMOFFLOAD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @F_TCPCHECKSUMOFFLOAD, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @V_IPTTL(i32 64)
  %17 = or i32 %15, %16
  %18 = call i32 @t3_write_reg(%struct.adapter* %5, i32 %6, i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load i32, i32* @A_TP_TCP_OPTIONS, align 4
  %21 = call i32 @V_MTUDEFAULT(i32 576)
  %22 = load i32, i32* @F_MTUENABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @V_WINDOWSCALEMODE(i32 1)
  %25 = or i32 %23, %24
  %26 = call i32 @V_TIMESTAMPSMODE(i32 1)
  %27 = or i32 %25, %26
  %28 = call i32 @V_SACKMODE(i32 1)
  %29 = or i32 %27, %28
  %30 = call i32 @V_SACKRX(i32 1)
  %31 = or i32 %29, %30
  %32 = call i32 @t3_write_reg(%struct.adapter* %19, i32 %20, i32 %31)
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = load i32, i32* @A_TP_DACK_CONFIG, align 4
  %35 = call i32 @V_AUTOSTATE3(i32 1)
  %36 = call i32 @V_AUTOSTATE2(i32 1)
  %37 = or i32 %35, %36
  %38 = call i32 @V_AUTOSTATE1(i32 0)
  %39 = or i32 %37, %38
  %40 = call i32 @V_BYTETHRESHOLD(i32 26880)
  %41 = or i32 %39, %40
  %42 = call i32 @V_MSSTHRESHOLD(i32 2)
  %43 = or i32 %41, %42
  %44 = load i32, i32* @F_AUTOCAREFUL, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @F_AUTOENABLE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @V_DACK_MODE(i32 1)
  %49 = or i32 %47, %48
  %50 = call i32 @t3_write_reg(%struct.adapter* %33, i32 %34, i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = load i32, i32* @A_TP_IN_CONFIG, align 4
  %53 = load i32, i32* @F_RXFBARBPRIO, align 4
  %54 = load i32, i32* @F_TXFBARBPRIO, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @F_IPV6ENABLE, align 4
  %57 = load i32, i32* @F_NICMODE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @t3_set_reg_field(%struct.adapter* %51, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = load i32, i32* @A_TP_TX_RESOURCE_LIMIT, align 4
  %62 = call i32 @t3_write_reg(%struct.adapter* %60, i32 %61, i32 403970068)
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = load i32, i32* @A_TP_PARA_REG4, align 4
  %65 = call i32 @t3_write_reg(%struct.adapter* %63, i32 %64, i32 84214021)
  %66 = load %struct.adapter*, %struct.adapter** %3, align 8
  %67 = load i32, i32* @A_TP_PARA_REG6, align 4
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %2
  %74 = load i32, i32* @F_ENABLEESND, align 4
  br label %77

75:                                               ; preds = %2
  %76 = load i32, i32* @F_T3A_ENABLEESND, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @t3_set_reg_field(%struct.adapter* %66, i32 %67, i32 0, i32 %78)
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = load i32, i32* @A_TP_PC_CONFIG, align 4
  %82 = load i32, i32* @F_ENABLEEPCMDAFULL, align 4
  %83 = load i32, i32* @F_ENABLEOCSPIFULL, align 4
  %84 = load i32, i32* @F_TXDEFERENABLE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @F_HEARBEATDACK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @F_TXCONGESTIONMODE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @F_RXCONGESTIONMODE, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @t3_set_reg_field(%struct.adapter* %80, i32 %81, i32 %82, i32 %91)
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = load i32, i32* @A_TP_PC_CONFIG2, align 4
  %95 = load i32, i32* @F_CHDRAFULL, align 4
  %96 = load i32, i32* @F_ENABLEIPV6RSS, align 4
  %97 = load i32, i32* @F_ENABLENONOFDTNLSYN, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @F_ENABLEARPMISS, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @F_DISBLEDAPARBIT0, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @t3_set_reg_field(%struct.adapter* %93, i32 %94, i32 %95, i32 %102)
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = load i32, i32* @A_TP_PROXY_FLOW_CNTL, align 4
  %106 = call i32 @t3_write_reg(%struct.adapter* %104, i32 %105, i32 1080)
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = load i32, i32* @A_TP_PROXY_FLOW_CNTL, align 4
  %109 = call i32 @t3_write_reg(%struct.adapter* %107, i32 %108, i32 1000)
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %77
  %116 = load %struct.adapter*, %struct.adapter** %3, align 8
  %117 = load i32, i32* @A_TP_EGRESS_CONFIG, align 4
  %118 = load i32, i32* @F_REWRITEFORCETOSIZE, align 4
  %119 = call i32 @tp_wr_indirect(%struct.adapter* %116, i32 %117, i32 %118)
  %120 = load %struct.adapter*, %struct.adapter** %3, align 8
  %121 = load i32, i32* @A_TP_PARA_REG3, align 4
  %122 = load i32, i32* @F_TXPACEAUTO, align 4
  %123 = load i32, i32* @F_TXPACEAUTO, align 4
  %124 = call i32 @t3_set_reg_field(%struct.adapter* %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.adapter*, %struct.adapter** %3, align 8
  %126 = load i32, i32* @A_TP_PC_CONFIG, align 4
  %127 = load i32, i32* @F_LOCKTID, align 4
  %128 = load i32, i32* @F_LOCKTID, align 4
  %129 = call i32 @t3_set_reg_field(%struct.adapter* %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.adapter*, %struct.adapter** %3, align 8
  %131 = load i32, i32* @A_TP_PARA_REG3, align 4
  %132 = load i32, i32* @F_TXPACEAUTOSTRICT, align 4
  %133 = call i32 @t3_set_reg_field(%struct.adapter* %130, i32 %131, i32 0, i32 %132)
  br label %139

134:                                              ; preds = %77
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = load i32, i32* @A_TP_PARA_REG3, align 4
  %137 = load i32, i32* @F_TXPACEFIXED, align 4
  %138 = call i32 @t3_set_reg_field(%struct.adapter* %135, i32 %136, i32 0, i32 %137)
  br label %139

139:                                              ; preds = %134, %115
  %140 = load %struct.adapter*, %struct.adapter** %3, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @T3_REV_C, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = load %struct.adapter*, %struct.adapter** %3, align 8
  %148 = load i32, i32* @A_TP_PC_CONFIG, align 4
  %149 = load i32, i32* @M_TABLELATENCYDELTA, align 4
  %150 = call i32 @V_TABLELATENCYDELTA(i32 %149)
  %151 = call i32 @V_TABLELATENCYDELTA(i32 4)
  %152 = call i32 @t3_set_reg_field(%struct.adapter* %147, i32 %148, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %139
  %154 = load %struct.adapter*, %struct.adapter** %3, align 8
  %155 = load i32, i32* @A_TP_TX_MOD_QUEUE_WEIGHT1, align 4
  %156 = call i32 @t3_write_reg(%struct.adapter* %154, i32 %155, i32 0)
  %157 = load %struct.adapter*, %struct.adapter** %3, align 8
  %158 = load i32, i32* @A_TP_TX_MOD_QUEUE_WEIGHT0, align 4
  %159 = call i32 @t3_write_reg(%struct.adapter* %157, i32 %158, i32 0)
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = load i32, i32* @A_TP_MOD_CHANNEL_WEIGHT, align 4
  %162 = call i32 @t3_write_reg(%struct.adapter* %160, i32 %161, i32 0)
  %163 = load %struct.adapter*, %struct.adapter** %3, align 8
  %164 = load i32, i32* @A_TP_MOD_RATE_LIMIT, align 4
  %165 = call i32 @t3_write_reg(%struct.adapter* %163, i32 %164, i32 -232783872)
  ret void
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_IPTTL(i32) #1

declare dso_local i32 @V_MTUDEFAULT(i32) #1

declare dso_local i32 @V_WINDOWSCALEMODE(i32) #1

declare dso_local i32 @V_TIMESTAMPSMODE(i32) #1

declare dso_local i32 @V_SACKMODE(i32) #1

declare dso_local i32 @V_SACKRX(i32) #1

declare dso_local i32 @V_AUTOSTATE3(i32) #1

declare dso_local i32 @V_AUTOSTATE2(i32) #1

declare dso_local i32 @V_AUTOSTATE1(i32) #1

declare dso_local i32 @V_BYTETHRESHOLD(i32) #1

declare dso_local i32 @V_MSSTHRESHOLD(i32) #1

declare dso_local i32 @V_DACK_MODE(i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @tp_wr_indirect(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_TABLELATENCYDELTA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
