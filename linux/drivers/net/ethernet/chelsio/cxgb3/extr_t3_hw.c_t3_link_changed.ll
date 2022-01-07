; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_link_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_link_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.port_info = type { i32, %struct.link_config, %struct.cmac, %struct.cphy }
%struct.link_config = type { i32, i32, i32, i32, i32, i64 }
%struct.cmac = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cphy = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* }

@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@A_XGM_INT_STATUS = common dso_local global i64 0, align 8
@F_LINKFAULTCHANGE = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@A_XGM_XAUI_ACT_CTRL = common dso_local global i64 0, align 8
@F_TXACTENABLE = common dso_local global i32 0, align 4
@F_RXEN = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_link_changed(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca %struct.cphy*, align 8
  %11 = alloca %struct.cmac*, align 8
  %12 = alloca %struct.link_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.port_info* @adap2pinfo(%struct.adapter* %17, i32 %18)
  store %struct.port_info* %19, %struct.port_info** %9, align 8
  %20 = load %struct.port_info*, %struct.port_info** %9, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 3
  store %struct.cphy* %21, %struct.cphy** %10, align 8
  %22 = load %struct.port_info*, %struct.port_info** %9, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 2
  store %struct.cmac* %23, %struct.cmac** %11, align 8
  %24 = load %struct.port_info*, %struct.port_info** %9, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 1
  store %struct.link_config* %25, %struct.link_config** %12, align 8
  %26 = load %struct.cphy*, %struct.cphy** %10, align 8
  %27 = getelementptr inbounds %struct.cphy, %struct.cphy* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.cphy*, i32*, i32*, i32*, i32*)*, i32 (%struct.cphy*, i32*, i32*, i32*, i32*)** %29, align 8
  %31 = load %struct.cphy*, %struct.cphy** %10, align 8
  %32 = call i32 %30(%struct.cphy* %31, i32* %5, i32* %6, i32* %7, i32* %8)
  %33 = load %struct.link_config*, %struct.link_config** %12, align 8
  %34 = getelementptr inbounds %struct.link_config, %struct.link_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @t3_xgm_intr_enable(%struct.adapter* %41, i32 %42)
  %44 = load %struct.cmac*, %struct.cmac** %11, align 8
  %45 = call i32 @t3_gate_rx_traffic(%struct.cmac* %44, i32* %13, i32* %14, i32* %15)
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %48 = load %struct.cmac*, %struct.cmac** %11, align 8
  %49 = getelementptr inbounds %struct.cmac, %struct.cmac* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i32 @t3_write_reg(%struct.adapter* %46, i64 %51, i32 0)
  %53 = load %struct.cmac*, %struct.cmac** %11, align 8
  %54 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %55 = call i32 @t3_mac_enable(%struct.cmac* %53, i32 %54)
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %58 = load %struct.cmac*, %struct.cmac** %11, align 8
  %59 = getelementptr inbounds %struct.cmac, %struct.cmac* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @t3_read_reg(%struct.adapter* %56, i64 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @F_LINKFAULTCHANGE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %40
  %68 = load %struct.cmac*, %struct.cmac** %11, align 8
  %69 = getelementptr inbounds %struct.cmac, %struct.cmac* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.port_info*, %struct.port_info** %9, align 8
  %74 = getelementptr inbounds %struct.port_info, %struct.port_info* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %67, %40
  %76 = load %struct.cmac*, %struct.cmac** %11, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @t3_open_rx_traffic(%struct.cmac* %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %37, %2
  %82 = load %struct.link_config*, %struct.link_config** %12, align 8
  %83 = getelementptr inbounds %struct.link_config, %struct.link_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PAUSE_AUTONEG, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.link_config*, %struct.link_config** %12, align 8
  %90 = getelementptr inbounds %struct.link_config, %struct.link_config* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %102

94:                                               ; preds = %81
  %95 = load %struct.link_config*, %struct.link_config** %12, align 8
  %96 = getelementptr inbounds %struct.link_config, %struct.link_config* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PAUSE_RX, align 4
  %99 = load i32, i32* @PAUSE_TX, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %94, %88
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.link_config*, %struct.link_config** %12, align 8
  %105 = getelementptr inbounds %struct.link_config, %struct.link_config* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.link_config*, %struct.link_config** %12, align 8
  %111 = getelementptr inbounds %struct.link_config, %struct.link_config* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.link_config*, %struct.link_config** %12, align 8
  %117 = getelementptr inbounds %struct.link_config, %struct.link_config* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.link_config*, %struct.link_config** %12, align 8
  %123 = getelementptr inbounds %struct.link_config, %struct.link_config* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %228

127:                                              ; preds = %120, %114, %108, %102
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.link_config*, %struct.link_config** %12, align 8
  %130 = getelementptr inbounds %struct.link_config, %struct.link_config* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %166

133:                                              ; preds = %127
  %134 = load %struct.adapter*, %struct.adapter** %3, align 8
  %135 = getelementptr inbounds %struct.adapter, %struct.adapter* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %133
  %140 = load %struct.adapter*, %struct.adapter** %3, align 8
  %141 = call i64 @uses_xaui(%struct.adapter* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %139
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.cmac*, %struct.cmac** %11, align 8
  %148 = call i32 @t3b_pcs_reset(%struct.cmac* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.adapter*, %struct.adapter** %3, align 8
  %151 = load i64, i64* @A_XGM_XAUI_ACT_CTRL, align 8
  %152 = load %struct.cmac*, %struct.cmac** %11, align 8
  %153 = getelementptr inbounds %struct.cmac, %struct.cmac* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %151, %154
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32, i32* @F_TXACTENABLE, align 4
  %160 = load i32, i32* @F_RXEN, align 4
  %161 = or i32 %159, %160
  br label %163

162:                                              ; preds = %149
  br label %163

163:                                              ; preds = %162, %158
  %164 = phi i32 [ %161, %158 ], [ 0, %162 ]
  %165 = call i32 @t3_write_reg(%struct.adapter* %150, i64 %155, i32 %164)
  br label %166

166:                                              ; preds = %163, %139, %133, %127
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.link_config*, %struct.link_config** %12, align 8
  %169 = getelementptr inbounds %struct.link_config, %struct.link_config* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* @SPEED_INVALID, align 4
  br label %176

174:                                              ; preds = %166
  %175 = load i32, i32* %6, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = load %struct.link_config*, %struct.link_config** %12, align 8
  %179 = getelementptr inbounds %struct.link_config, %struct.link_config* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, i32* @DUPLEX_INVALID, align 4
  br label %186

184:                                              ; preds = %176
  %185 = load i32, i32* %7, align 4
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i32 [ %183, %182 ], [ %185, %184 ]
  %188 = load %struct.link_config*, %struct.link_config** %12, align 8
  %189 = getelementptr inbounds %struct.link_config, %struct.link_config* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %210

192:                                              ; preds = %186
  %193 = load i32, i32* %6, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %210

195:                                              ; preds = %192
  %196 = load %struct.link_config*, %struct.link_config** %12, align 8
  %197 = getelementptr inbounds %struct.link_config, %struct.link_config* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @AUTONEG_ENABLE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = load %struct.cmac*, %struct.cmac** %11, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @t3_mac_set_speed_duplex_fc(%struct.cmac* %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.link_config*, %struct.link_config** %12, align 8
  %209 = getelementptr inbounds %struct.link_config, %struct.link_config* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %201, %195, %192, %186
  %211 = load %struct.adapter*, %struct.adapter** %3, align 8
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %5, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load %struct.port_info*, %struct.port_info** %9, align 8
  %217 = getelementptr inbounds %struct.port_info, %struct.port_info* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  br label %221

221:                                              ; preds = %215, %210
  %222 = phi i1 [ false, %210 ], [ %220, %215 ]
  %223 = zext i1 %222 to i32
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @t3_os_link_changed(%struct.adapter* %211, i32 %212, i32 %223, i32 %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %221, %126
  ret void
}

declare dso_local %struct.port_info* @adap2pinfo(%struct.adapter*, i32) #1

declare dso_local i32 @t3_xgm_intr_enable(%struct.adapter*, i32) #1

declare dso_local i32 @t3_gate_rx_traffic(%struct.cmac*, i32*, i32*, i32*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_mac_enable(%struct.cmac*, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t3_open_rx_traffic(%struct.cmac*, i32, i32, i32) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @t3b_pcs_reset(%struct.cmac*) #1

declare dso_local i32 @t3_mac_set_speed_duplex_fc(%struct.cmac*, i32, i32, i32) #1

declare dso_local i32 @t3_os_link_changed(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
