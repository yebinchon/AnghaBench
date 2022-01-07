; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_val_pair = type { i32, i32 }
%struct.cmac = type { i32, i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@t3_mac_reset.mac_reset_avp = internal constant [14 x %struct.addr_val_pair] [%struct.addr_val_pair { i32 134, i32 0 }, %struct.addr_val_pair { i32 146, i32 0 }, %struct.addr_val_pair { i32 147, i32 135 }, %struct.addr_val_pair { i32 136, i32 0 }, %struct.addr_val_pair { i32 137, i32 0 }, %struct.addr_val_pair { i32 145, i32 0 }, %struct.addr_val_pair { i32 144, i32 0 }, %struct.addr_val_pair { i32 143, i32 0 }, %struct.addr_val_pair { i32 142, i32 0 }, %struct.addr_val_pair { i32 141, i32 0 }, %struct.addr_val_pair { i32 140, i32 0 }, %struct.addr_val_pair { i32 139, i32 0 }, %struct.addr_val_pair { i32 138, i32 0 }, %struct.addr_val_pair { i32 135, i32 133 }], align 16
@A_XGM_RESET_CTRL = common dso_local global i64 0, align 8
@F_MAC_RESET_ = common dso_local global i32 0, align 4
@A_XGM_RXFIFO_CFG = common dso_local global i64 0, align 8
@F_RXSTRFRWRD = common dso_local global i32 0, align 4
@F_DISERRFRAMES = common dso_local global i32 0, align 4
@A_XGM_TXFIFO_CFG = common dso_local global i64 0, align 8
@F_UNDERUNFIX = common dso_local global i32 0, align 4
@A_XGM_SERDES_CTRL = common dso_local global i64 0, align 8
@F_RXENABLE = common dso_local global i32 0, align 4
@F_TXENABLE = common dso_local global i32 0, align 4
@A_XGM_SERDES_STATUS1 = common dso_local global i64 0, align 8
@F_CMULOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MAC %d XAUI SERDES CMU lock failed\0A\00", align 1
@F_SERDESRESET_ = common dso_local global i32 0, align 4
@A_XGM_RX_MAX_PKT_SIZE = common dso_local global i64 0, align 8
@M_RXMAXFRAMERSIZE = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@F_RXENFRAMER = common dso_local global i32 0, align 4
@F_XGMAC_STOP_EN = common dso_local global i32 0, align 4
@F_PCS_RESET_ = common dso_local global i32 0, align 4
@F_XG2G_RESET_ = common dso_local global i32 0, align 4
@F_RGMII_RESET_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_reset(%struct.cmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  %7 = load %struct.cmac*, %struct.cmac** %3, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 2
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load %struct.cmac*, %struct.cmac** %3, align 8
  %11 = getelementptr inbounds %struct.cmac, %struct.cmac* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* @F_MAC_RESET_, align 4
  %19 = call i32 @t3_write_reg(%struct.adapter* %13, i64 %17, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @t3_read_reg(%struct.adapter* %20, i64 %24)
  %26 = load %struct.adapter*, %struct.adapter** %5, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.addr_val_pair* getelementptr inbounds ([14 x %struct.addr_val_pair], [14 x %struct.addr_val_pair]* @t3_mac_reset.mac_reset_avp, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @t3_write_regs(%struct.adapter* %26, %struct.addr_val_pair* getelementptr inbounds ([14 x %struct.addr_val_pair], [14 x %struct.addr_val_pair]* @t3_mac_reset.mac_reset_avp, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = load i64, i64* @A_XGM_RXFIFO_CFG, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* @F_RXSTRFRWRD, align 4
  %36 = load i32, i32* @F_DISERRFRAMES, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.adapter*, %struct.adapter** %5, align 8
  %39 = call i64 @uses_xaui(%struct.adapter* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @F_RXSTRFRWRD, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ 0, %41 ], [ %43, %42 ]
  %46 = call i32 @t3_set_reg_field(%struct.adapter* %30, i64 %34, i32 %37, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* @F_UNDERUNFIX, align 4
  %53 = call i32 @t3_set_reg_field(%struct.adapter* %47, i64 %51, i32 0, i32 %52)
  %54 = load %struct.adapter*, %struct.adapter** %5, align 8
  %55 = call i64 @uses_xaui(%struct.adapter* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %44
  %58 = load %struct.adapter*, %struct.adapter** %5, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  %64 = load %struct.adapter*, %struct.adapter** %5, align 8
  %65 = load i64, i64* @A_XGM_SERDES_CTRL, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i32, i32* @F_RXENABLE, align 4
  %70 = load i32, i32* @F_TXENABLE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @t3_set_reg_field(%struct.adapter* %64, i64 %68, i32 0, i32 %71)
  %73 = load %struct.adapter*, %struct.adapter** %5, align 8
  %74 = load i64, i64* @A_XGM_SERDES_STATUS1, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* @F_CMULOCK, align 4
  %79 = call i64 @t3_wait_op_done(%struct.adapter* %73, i64 %77, i32 %78, i32 1, i32 5, i32 2)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %63
  %82 = load %struct.adapter*, %struct.adapter** %5, align 8
  %83 = load %struct.cmac*, %struct.cmac** %3, align 8
  %84 = call i32 @macidx(%struct.cmac* %83)
  %85 = call i32 @CH_ERR(%struct.adapter* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %2, align 4
  br label %170

86:                                               ; preds = %63
  %87 = load %struct.adapter*, %struct.adapter** %5, align 8
  %88 = load i64, i64* @A_XGM_SERDES_CTRL, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32, i32* @F_SERDESRESET_, align 4
  %93 = call i32 @t3_set_reg_field(%struct.adapter* %87, i64 %91, i32 0, i32 %92)
  br label %97

94:                                               ; preds = %57
  %95 = load %struct.cmac*, %struct.cmac** %3, align 8
  %96 = call i32 @xaui_serdes_reset(%struct.cmac* %95)
  br label %97

97:                                               ; preds = %94, %86
  br label %98

98:                                               ; preds = %97, %44
  %99 = load %struct.adapter*, %struct.adapter** %5, align 8
  %100 = load i64, i64* @A_XGM_RX_MAX_PKT_SIZE, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load i32, i32* @M_RXMAXFRAMERSIZE, align 4
  %105 = call i32 @V_RXMAXFRAMERSIZE(i32 %104)
  %106 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %107 = call i32 @V_RXMAXFRAMERSIZE(i32 %106)
  %108 = load i32, i32* @F_RXENFRAMER, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @t3_set_reg_field(%struct.adapter* %99, i64 %103, i32 %105, i32 %109)
  %111 = load i32, i32* @F_MAC_RESET_, align 4
  %112 = load i32, i32* @F_XGMAC_STOP_EN, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %4, align 4
  %114 = load %struct.adapter*, %struct.adapter** %5, align 8
  %115 = call i64 @is_10G(%struct.adapter* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %98
  %118 = load i32, i32* @F_PCS_RESET_, align 4
  %119 = load i32, i32* %4, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %4, align 4
  br label %138

121:                                              ; preds = %98
  %122 = load %struct.adapter*, %struct.adapter** %5, align 8
  %123 = call i64 @uses_xaui(%struct.adapter* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load i32, i32* @F_PCS_RESET_, align 4
  %127 = load i32, i32* @F_XG2G_RESET_, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  br label %137

131:                                              ; preds = %121
  %132 = load i32, i32* @F_RGMII_RESET_, align 4
  %133 = load i32, i32* @F_XG2G_RESET_, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %137, %117
  %139 = load %struct.adapter*, %struct.adapter** %5, align 8
  %140 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @t3_write_reg(%struct.adapter* %139, i64 %143, i32 %144)
  %146 = load %struct.adapter*, %struct.adapter** %5, align 8
  %147 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %148 = load i32, i32* %6, align 4
  %149 = zext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = call i32 @t3_read_reg(%struct.adapter* %146, i64 %150)
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @F_PCS_RESET_, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %138
  %157 = load %struct.adapter*, %struct.adapter** %5, align 8
  %158 = getelementptr inbounds %struct.adapter, %struct.adapter* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = call i32 @msleep(i32 1)
  %164 = load %struct.cmac*, %struct.cmac** %3, align 8
  %165 = call i32 @t3b_pcs_reset(%struct.cmac* %164)
  br label %166

166:                                              ; preds = %162, %156, %138
  %167 = load %struct.cmac*, %struct.cmac** %3, align 8
  %168 = getelementptr inbounds %struct.cmac, %struct.cmac* %167, i32 0, i32 1
  %169 = call i32 @memset(i32* %168, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %81
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t3_write_regs(%struct.adapter*, %struct.addr_val_pair*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.addr_val_pair*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i64 @t3_wait_op_done(%struct.adapter*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, i32) #1

declare dso_local i32 @macidx(%struct.cmac*) #1

declare dso_local i32 @xaui_serdes_reset(%struct.cmac*) #1

declare dso_local i32 @V_RXMAXFRAMERSIZE(i32) #1

declare dso_local i64 @is_10G(%struct.adapter*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3b_pcs_reset(%struct.cmac*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
