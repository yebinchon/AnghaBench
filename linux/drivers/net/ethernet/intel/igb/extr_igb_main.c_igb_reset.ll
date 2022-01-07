; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.e1000_hw.0, %struct.pci_dev* }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw*)* }
%struct.e1000_hw = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.e1000_hw.0 = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.e1000_mac_info, %struct.e1000_fc_info }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.e1000_mac_info = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_fc_info = type { i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@E1000_RXPBS = common dso_local global i32 0, align 4
@E1000_RXPBS_SIZE_MASK_82576 = common dso_local global i32 0, align 4
@E1000_PBA_34K = common dso_local global i32 0, align 4
@E1000_PBA = common dso_local global i32 0, align 4
@MAX_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@IGB_VF_FLAG_PF_SET_MAC = common dso_local global i32 0, align 4
@E1000_VFRE = common dso_local global i32 0, align 4
@E1000_VFTE = common dso_local global i32 0, align 4
@E1000_WUC = common dso_local global i32 0, align 4
@IGB_FLAG_MEDIA_RESET = common dso_local global i32 0, align 4
@IGB_FLAG_MAS_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Hardware Error\0A\00", align 1
@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_VET = common dso_local global i32 0, align 4
@ETHERNET_IEEE_VLAN_TYPE = common dso_local global i32 0, align 4
@IGB_PTP_ENABLED = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_reset(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.e1000_hw.0*, align 8
  %5 = alloca %struct.e1000_mac_info*, align 8
  %6 = alloca %struct.e1000_fc_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 10
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %3, align 8
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 9
  store %struct.e1000_hw.0* %17, %struct.e1000_hw.0** %4, align 8
  %18 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw.0, %struct.e1000_hw.0* %18, i32 0, i32 2
  store %struct.e1000_mac_info* %19, %struct.e1000_mac_info** %5, align 8
  %20 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_hw.0, %struct.e1000_hw.0* %20, i32 0, i32 3
  store %struct.e1000_fc_info* %21, %struct.e1000_fc_info** %6, align 8
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %37 [
    i32 129, label %25
    i32 128, label %25
    i32 132, label %25
    i32 133, label %30
    i32 134, label %36
    i32 131, label %36
    i32 130, label %36
  ]

25:                                               ; preds = %1, %1, %1
  %26 = load i32, i32* @E1000_RXPBS, align 4
  %27 = call i32 @rd32(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @igb_rxpbs_adjust_82580(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load i32, i32* @E1000_RXPBS, align 4
  %32 = call i32 @rd32(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @E1000_RXPBS_SIZE_MASK_82576, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %1, %1, %1
  br label %37

37:                                               ; preds = %1, %36
  %38 = load i32, i32* @E1000_PBA_34K, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %30, %25
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 134
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load i32, i32* @E1000_PBA, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @wr32(i32 %45, i32 %46)
  %48 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %48, i32 1024)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @ETH_FCS_LEN, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 4, %54
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @DIV_ROUND_UP(i32 %60, i32 512)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @E1000_PBA, align 4
  %64 = call i32 @rd32(i32 %63)
  %65 = ashr i32 %64, 16
  %66 = sub nsw i32 %62, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %44
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i32, i32* @E1000_PBA, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @wr32(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %39
  %85 = load i32, i32* %7, align 4
  %86 = shl i32 %85, 10
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MAX_JUMBO_FRAME_SIZE, align 4
  %91 = add nsw i32 %89, %90
  %92 = sub nsw i32 %86, %91
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, -16
  %95 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %96 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %98 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 16
  %101 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %102 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %104 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %103, i32 0, i32 2
  store i32 65535, i32* %104, align 4
  %105 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %106 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %108 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.e1000_fc_info*, %struct.e1000_fc_info** %6, align 8
  %111 = getelementptr inbounds %struct.e1000_fc_info, %struct.e1000_fc_info* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %84
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %134, %116
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %120 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i32, i32* @IGB_VF_FLAG_PF_SET_MAC, align 4
  %125 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %125, i32 0, i32 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %124
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %117

137:                                              ; preds = %117
  %138 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %139 = call i32 @igb_ping_all_vfs(%struct.igb_adapter* %138)
  %140 = load i32, i32* @E1000_VFRE, align 4
  %141 = call i32 @wr32(i32 %140, i32 0)
  %142 = load i32, i32* @E1000_VFTE, align 4
  %143 = call i32 @wr32(i32 %142, i32 0)
  br label %144

144:                                              ; preds = %137, %84
  %145 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_hw.0, %struct.e1000_hw.0* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32 (%struct.e1000_hw.3*)*, i32 (%struct.e1000_hw.3*)** %148, align 8
  %150 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %151 = bitcast %struct.e1000_hw.0* %150 to %struct.e1000_hw.3*
  %152 = call i32 %149(%struct.e1000_hw.3* %151)
  %153 = load i32, i32* @E1000_WUC, align 4
  %154 = call i32 @wr32(i32 %153, i32 0)
  %155 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %156 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IGB_FLAG_MEDIA_RESET, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %144
  %162 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %163 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32 (%struct.e1000_hw*)*, i32 (%struct.e1000_hw*)** %164, align 8
  %166 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %167 = bitcast %struct.e1000_hw.0* %166 to %struct.e1000_hw*
  %168 = call i32 %165(%struct.e1000_hw* %167)
  %169 = load i32, i32* @IGB_FLAG_MEDIA_RESET, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %172 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %161, %144
  %176 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %177 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 134
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %182 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 129
  br i1 %184, label %185, label %195

185:                                              ; preds = %180, %175
  %186 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %187 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @IGB_FLAG_MAS_ENABLE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %194 = call i32 @igb_enable_mas(%struct.igb_adapter* %193)
  br label %195

195:                                              ; preds = %192, %185, %180
  %196 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %197 = getelementptr inbounds %struct.e1000_hw.0, %struct.e1000_hw.0* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %199, align 8
  %201 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %202 = bitcast %struct.e1000_hw.0* %201 to %struct.e1000_hw.2*
  %203 = call i64 %200(%struct.e1000_hw.2* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %195
  %206 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %207 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %206, i32 0, i32 0
  %208 = call i32 @dev_err(i32* %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %209

209:                                              ; preds = %205, %195
  %210 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %211 = call i32 @igb_flush_mac_table(%struct.igb_adapter* %210)
  %212 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %213 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @__dev_uc_unsync(i32 %214, i32* null)
  %216 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %217 = call i32 @igb_set_default_mac_filter(%struct.igb_adapter* %216)
  %218 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %219 = getelementptr inbounds %struct.e1000_hw.0, %struct.e1000_hw.0* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %209
  %224 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %225 = call i32 @igb_force_mac_fc(%struct.e1000_hw.0* %224)
  br label %226

226:                                              ; preds = %223, %209
  %227 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @igb_init_dmac(%struct.igb_adapter* %227, i32 %228)
  %230 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %231 = getelementptr inbounds %struct.e1000_hw.0, %struct.e1000_hw.0* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @e1000_media_type_copper, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %248

236:                                              ; preds = %226
  %237 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %5, align 8
  %238 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  switch i32 %239, label %246 [
    i32 129, label %240
    i32 131, label %240
    i32 130, label %240
    i32 128, label %243
  ]

240:                                              ; preds = %236, %236, %236
  %241 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %242 = call i32 @igb_set_eee_i350(%struct.e1000_hw.0* %241, i32 1, i32 1)
  br label %247

243:                                              ; preds = %236
  %244 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %245 = call i32 @igb_set_eee_i354(%struct.e1000_hw.0* %244, i32 1, i32 1)
  br label %247

246:                                              ; preds = %236
  br label %247

247:                                              ; preds = %246, %243, %240
  br label %248

248:                                              ; preds = %247, %226
  %249 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %250 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @netif_running(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %248
  %255 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %256 = call i32 @igb_power_down_link(%struct.igb_adapter* %255)
  br label %257

257:                                              ; preds = %254, %248
  %258 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %259 = call i32 @igb_update_mng_vlan(%struct.igb_adapter* %258)
  %260 = load i32, i32* @E1000_VET, align 4
  %261 = load i32, i32* @ETHERNET_IEEE_VLAN_TYPE, align 4
  %262 = call i32 @wr32(i32 %260, i32 %261)
  %263 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %264 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @IGB_PTP_ENABLED, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %257
  %270 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %271 = call i32 @igb_ptp_reset(%struct.igb_adapter* %270)
  br label %272

272:                                              ; preds = %269, %257
  %273 = load %struct.e1000_hw.0*, %struct.e1000_hw.0** %4, align 8
  %274 = call i32 @igb_get_phy_info(%struct.e1000_hw.0* %273)
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_rxpbs_adjust_82580(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @igb_ping_all_vfs(%struct.igb_adapter*) #1

declare dso_local i32 @igb_enable_mas(%struct.igb_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @igb_flush_mac_table(%struct.igb_adapter*) #1

declare dso_local i32 @__dev_uc_unsync(i32, i32*) #1

declare dso_local i32 @igb_set_default_mac_filter(%struct.igb_adapter*) #1

declare dso_local i32 @igb_force_mac_fc(%struct.e1000_hw.0*) #1

declare dso_local i32 @igb_init_dmac(%struct.igb_adapter*, i32) #1

declare dso_local i32 @igb_set_eee_i350(%struct.e1000_hw.0*, i32, i32) #1

declare dso_local i32 @igb_set_eee_i354(%struct.e1000_hw.0*, i32, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @igb_power_down_link(%struct.igb_adapter*) #1

declare dso_local i32 @igb_update_mng_vlan(%struct.igb_adapter*) #1

declare dso_local i32 @igb_ptp_reset(%struct.igb_adapter*) #1

declare dso_local i32 @igb_get_phy_info(%struct.e1000_hw.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
