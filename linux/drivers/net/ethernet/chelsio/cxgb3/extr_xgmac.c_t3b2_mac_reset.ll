; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3b2_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3b2_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@A_MPS_CFG = common dso_local global i64 0, align 8
@F_PORT0ACTIVE = common dso_local global i32 0, align 4
@F_PORT1ACTIVE = common dso_local global i32 0, align 4
@F_ENFORCEPKT = common dso_local global i32 0, align 4
@A_XGM_TX_CFG = common dso_local global i64 0, align 8
@F_TXPAUSEEN = common dso_local global i32 0, align 4
@A_XGM_RESET_CTRL = common dso_local global i32 0, align 4
@F_MAC_RESET_ = common dso_local global i32 0, align 4
@A_TP_PIO_ADDR = common dso_local global i32 0, align 4
@A_TP_TX_DROP_CFG_CH0 = common dso_local global i32 0, align 4
@A_TP_PIO_DATA = common dso_local global i32 0, align 4
@A_XGM_RX_MAX_PKT_SIZE_ERR_CNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"MAC %d Rx fifo drain failed\0A\00", align 1
@F_PCS_RESET_ = common dso_local global i32 0, align 4
@F_XG2G_RESET_ = common dso_local global i32 0, align 4
@F_RGMII_RESET_ = common dso_local global i32 0, align 4
@A_XGM_RX_CFG = common dso_local global i32 0, align 4
@F_DISPAUSEFRAMES = common dso_local global i32 0, align 4
@F_EN1536BFRAMES = common dso_local global i32 0, align 4
@F_RMFCS = common dso_local global i32 0, align 4
@F_ENJUMBO = common dso_local global i32 0, align 4
@F_ENHASHMCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*)* @t3b2_mac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3b2_mac_reset(%struct.cmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  %9 = load %struct.cmac*, %struct.cmac** %3, align 8
  %10 = getelementptr inbounds %struct.cmac, %struct.cmac* %9, i32 0, i32 1
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %4, align 8
  %12 = load %struct.cmac*, %struct.cmac** %3, align 8
  %13 = getelementptr inbounds %struct.cmac, %struct.cmac* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.cmac*, %struct.cmac** %3, align 8
  %16 = call i32 @macidx(%struct.cmac* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cmac*, %struct.cmac** %3, align 8
  %18 = call i32 @macidx(%struct.cmac* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i64, i64* @A_MPS_CFG, align 8
  %23 = load i32, i32* @F_PORT0ACTIVE, align 4
  %24 = call i32 @t3_set_reg_field(%struct.adapter* %21, i64 %22, i32 %23, i32 0)
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = load i64, i64* @A_MPS_CFG, align 8
  %28 = load i32, i32* @F_PORT1ACTIVE, align 4
  %29 = call i32 @t3_set_reg_field(%struct.adapter* %26, i64 %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load i64, i64* @A_MPS_CFG, align 8
  %33 = load i32, i32* @F_ENFORCEPKT, align 4
  %34 = call i32 @t3_set_reg_field(%struct.adapter* %31, i64 %32, i32 %33, i32 0)
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = load i64, i64* @A_XGM_TX_CFG, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* @F_TXPAUSEEN, align 4
  %41 = call i32 @t3_set_reg_field(%struct.adapter* %35, i64 %39, i32 %40, i32 0)
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = load i32, i32* @A_XGM_RESET_CTRL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* @F_MAC_RESET_, align 4
  %47 = call i32 @t3_write_reg(%struct.adapter* %42, i32 %45, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load i32, i32* @A_XGM_RESET_CTRL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %49, %50
  %52 = call i32 @t3_read_reg(%struct.adapter* %48, i32 %51)
  %53 = load %struct.adapter*, %struct.adapter** %4, align 8
  %54 = load i32, i32* @A_TP_PIO_ADDR, align 4
  %55 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @t3_write_reg(%struct.adapter* %53, i32 %54, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @t3_read_reg(%struct.adapter* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = call i32 @msleep(i32 10)
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = load i32, i32* @A_TP_PIO_ADDR, align 4
  %67 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @t3_write_reg(%struct.adapter* %65, i32 %66, i32 %69)
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load i32, i32* @A_TP_PIO_DATA, align 4
  %73 = call i32 @t3_write_reg(%struct.adapter* %71, i32 %72, i32 -1073741807)
  %74 = load %struct.adapter*, %struct.adapter** %4, align 8
  %75 = load i64, i64* @A_XGM_RX_MAX_PKT_SIZE_ERR_CNT, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i64 @t3_wait_op_done(%struct.adapter* %74, i64 %78, i32 -2147483648, i32 1, i32 1000, i32 2)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %30
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = load %struct.cmac*, %struct.cmac** %3, align 8
  %84 = call i32 @macidx(%struct.cmac* %83)
  %85 = call i32 @CH_ERR(%struct.adapter* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %2, align 4
  br label %194

86:                                               ; preds = %30
  %87 = load %struct.adapter*, %struct.adapter** %4, align 8
  %88 = load i32, i32* @A_XGM_RESET_CTRL, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %88, %89
  %91 = call i32 @t3_write_reg(%struct.adapter* %87, i32 %90, i32 0)
  %92 = load %struct.adapter*, %struct.adapter** %4, align 8
  %93 = load i32, i32* @A_XGM_RESET_CTRL, align 4
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %93, %94
  %96 = call i32 @t3_read_reg(%struct.adapter* %92, i32 %95)
  %97 = load i32, i32* @F_MAC_RESET_, align 4
  store i32 %97, i32* %8, align 4
  %98 = load %struct.adapter*, %struct.adapter** %4, align 8
  %99 = call i64 @is_10G(%struct.adapter* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %86
  %102 = load i32, i32* @F_PCS_RESET_, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %122

105:                                              ; preds = %86
  %106 = load %struct.adapter*, %struct.adapter** %4, align 8
  %107 = call i64 @uses_xaui(%struct.adapter* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* @F_PCS_RESET_, align 4
  %111 = load i32, i32* @F_XG2G_RESET_, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %121

115:                                              ; preds = %105
  %116 = load i32, i32* @F_RGMII_RESET_, align 4
  %117 = load i32, i32* @F_XG2G_RESET_, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %115, %109
  br label %122

122:                                              ; preds = %121, %101
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = load i32, i32* @A_XGM_RESET_CTRL, align 4
  %125 = load i32, i32* %5, align 4
  %126 = add i32 %124, %125
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @t3_write_reg(%struct.adapter* %123, i32 %126, i32 %127)
  %129 = load %struct.adapter*, %struct.adapter** %4, align 8
  %130 = load i32, i32* @A_XGM_RESET_CTRL, align 4
  %131 = load i32, i32* %5, align 4
  %132 = add i32 %130, %131
  %133 = call i32 @t3_read_reg(%struct.adapter* %129, i32 %132)
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @F_PCS_RESET_, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %122
  %139 = load %struct.adapter*, %struct.adapter** %4, align 8
  %140 = getelementptr inbounds %struct.adapter, %struct.adapter* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = call i32 @msleep(i32 1)
  %146 = load %struct.cmac*, %struct.cmac** %3, align 8
  %147 = call i32 @t3b_pcs_reset(%struct.cmac* %146)
  br label %148

148:                                              ; preds = %144, %138, %122
  %149 = load %struct.adapter*, %struct.adapter** %4, align 8
  %150 = load i32, i32* @A_XGM_RX_CFG, align 4
  %151 = load i32, i32* %5, align 4
  %152 = add i32 %150, %151
  %153 = load i32, i32* @F_DISPAUSEFRAMES, align 4
  %154 = load i32, i32* @F_EN1536BFRAMES, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @F_RMFCS, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @F_ENJUMBO, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @F_ENHASHMCAST, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @t3_write_reg(%struct.adapter* %149, i32 %152, i32 %161)
  %163 = load %struct.adapter*, %struct.adapter** %4, align 8
  %164 = load i32, i32* @A_TP_PIO_ADDR, align 4
  %165 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %165, %166
  %168 = call i32 @t3_write_reg(%struct.adapter* %163, i32 %164, i32 %167)
  %169 = load %struct.adapter*, %struct.adapter** %4, align 8
  %170 = load i32, i32* @A_TP_PIO_DATA, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @t3_write_reg(%struct.adapter* %169, i32 %170, i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %148
  %176 = load %struct.adapter*, %struct.adapter** %4, align 8
  %177 = load i64, i64* @A_MPS_CFG, align 8
  %178 = load i32, i32* @F_PORT0ACTIVE, align 4
  %179 = call i32 @t3_set_reg_field(%struct.adapter* %176, i64 %177, i32 0, i32 %178)
  br label %185

180:                                              ; preds = %148
  %181 = load %struct.adapter*, %struct.adapter** %4, align 8
  %182 = load i64, i64* @A_MPS_CFG, align 8
  %183 = load i32, i32* @F_PORT1ACTIVE, align 4
  %184 = call i32 @t3_set_reg_field(%struct.adapter* %181, i64 %182, i32 0, i32 %183)
  br label %185

185:                                              ; preds = %180, %175
  %186 = load %struct.adapter*, %struct.adapter** %4, align 8
  %187 = load i64, i64* @A_MPS_CFG, align 8
  %188 = load i32, i32* @F_ENFORCEPKT, align 4
  %189 = call i32 @t3_set_reg_field(%struct.adapter* %186, i64 %187, i32 %188, i32 1)
  %190 = load %struct.adapter*, %struct.adapter** %4, align 8
  %191 = load i64, i64* @A_MPS_CFG, align 8
  %192 = load i32, i32* @F_ENFORCEPKT, align 4
  %193 = call i32 @t3_set_reg_field(%struct.adapter* %190, i64 %191, i32 %192, i32 1)
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %185, %81
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @macidx(%struct.cmac*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @t3_wait_op_done(%struct.adapter*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32) #1

declare dso_local i64 @is_10G(%struct.adapter*) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @t3b_pcs_reset(%struct.cmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
