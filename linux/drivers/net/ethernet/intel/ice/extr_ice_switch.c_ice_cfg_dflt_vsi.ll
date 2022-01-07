; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_cfg_dflt_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_cfg_dflt_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.ice_aqc_sw_rules_elem = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ice_fltr_info = type { i32, i8*, i8*, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_SW_RULE_RX_TX_ETH_HDR_SIZE = common dso_local global i8* null, align 8
@ICE_SW_RULE_RX_TX_NO_HDR_SIZE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_SW_LKUP_DFLT = common dso_local global i32 0, align 4
@ICE_FWD_TO_VSI = common dso_local global i32 0, align 4
@ICE_FLTR_RX = common dso_local global i32 0, align 4
@ICE_SRC_ID_LPORT = common dso_local global i32 0, align 4
@ICE_FLTR_TX = common dso_local global i32 0, align 4
@ICE_SRC_ID_VSI = common dso_local global i32 0, align 4
@ice_aqc_opc_add_sw_rules = common dso_local global i32 0, align 4
@ice_aqc_opc_remove_sw_rules = common dso_local global i32 0, align 4
@ICE_FLTR_TX_RX = common dso_local global i32 0, align 4
@ICE_DFLT_VSI_INVAL = common dso_local global i8* null, align 8
@ICE_INVAL_ACT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_cfg_dflt_vsi(%struct.ice_hw* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_aqc_sw_rules_elem*, align 8
  %11 = alloca %struct.ice_fltr_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @ice_is_vsi_valid(%struct.ice_hw* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %22, i32* %5, align 4
  br label %215

23:                                               ; preds = %4
  %24 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @ice_get_hw_vsi_num(%struct.ice_hw* %24, i8* %25)
  store i8* %26, i8** %15, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** @ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, align 8
  br label %33

31:                                               ; preds = %23
  %32 = load i8*, i8** @ICE_SW_RULE_RX_TX_NO_HDR_SIZE, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i8* [ %30, %29 ], [ %32, %31 ]
  store i8* %34, i8** %14, align 8
  %35 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %36 = call i32 @ice_hw_to_dev(%struct.ice_hw* %35)
  %37 = load i8*, i8** %14, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32 %36, i8* %37, i32 %38)
  store %struct.ice_aqc_sw_rules_elem* %39, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %40 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %41 = icmp ne %struct.ice_aqc_sw_rules_elem* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %43, i32* %5, align 4
  br label %215

44:                                               ; preds = %33
  %45 = call i32 @memset(%struct.ice_fltr_info* %11, i32 0, i32 48)
  %46 = load i32, i32* @ICE_SW_LKUP_DFLT, align 4
  %47 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 6
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @ICE_FWD_TO_VSI, align 4
  %51 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 5
  store i32 %50, i32* %51, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ICE_FLTR_RX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %44
  %61 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %62 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* @ICE_SRC_ID_LPORT, align 4
  %68 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 3
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %60
  %72 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %73 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %71, %60
  br label %101

79:                                               ; preds = %44
  %80 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ICE_FLTR_TX, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load i32, i32* @ICE_SRC_ID_VSI, align 4
  %87 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %94 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %92, %85
  br label %100

100:                                              ; preds = %99, %79
  br label %101

101:                                              ; preds = %100, %78
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @ice_aqc_opc_add_sw_rules, align 4
  store i32 %105, i32* %12, align 4
  br label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @ice_aqc_opc_remove_sw_rules, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %110 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @ice_fill_sw_rule(%struct.ice_hw* %109, %struct.ice_fltr_info* %11, %struct.ice_aqc_sw_rules_elem* %110, i32 %111)
  %113 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %114 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @ice_aq_sw_rules(%struct.ice_hw* %113, %struct.ice_aqc_sw_rules_elem* %114, i8* %115, i32 1, i32 %116, i32* null)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ICE_FLTR_TX_RX, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120, %108
  br label %209

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %127
  %131 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %132 = getelementptr inbounds %struct.ice_aqc_sw_rules_elem, %struct.ice_aqc_sw_rules_elem* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le16_to_cpu(i32 %135)
  store i8* %136, i8** %16, align 8
  %137 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ICE_FLTR_TX, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %130
  %143 = load i8*, i8** %15, align 8
  %144 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %145 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  store i8* %143, i8** %147, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %150 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  store i8* %148, i8** %152, align 8
  br label %171

153:                                              ; preds = %130
  %154 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ICE_FLTR_RX, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = load i8*, i8** %15, align 8
  %161 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %162 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i8* %160, i8** %164, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %167 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i8* %165, i8** %169, align 8
  br label %170

170:                                              ; preds = %159, %153
  br label %171

171:                                              ; preds = %170, %142
  br label %208

172:                                              ; preds = %127
  %173 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @ICE_FLTR_TX, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load i8*, i8** @ICE_DFLT_VSI_INVAL, align 8
  %180 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %181 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %180, i32 0, i32 0
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  store i8* %179, i8** %183, align 8
  %184 = load i8*, i8** @ICE_INVAL_ACT, align 8
  %185 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %186 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %185, i32 0, i32 0
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  store i8* %184, i8** %188, align 8
  br label %207

189:                                              ; preds = %172
  %190 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %11, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @ICE_FLTR_RX, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  %196 = load i8*, i8** @ICE_DFLT_VSI_INVAL, align 8
  %197 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %198 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  store i8* %196, i8** %200, align 8
  %201 = load i8*, i8** @ICE_INVAL_ACT, align 8
  %202 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %203 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %202, i32 0, i32 0
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store i8* %201, i8** %205, align 8
  br label %206

206:                                              ; preds = %195, %189
  br label %207

207:                                              ; preds = %206, %178
  br label %208

208:                                              ; preds = %207, %171
  br label %209

209:                                              ; preds = %208, %126
  %210 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %211 = call i32 @ice_hw_to_dev(%struct.ice_hw* %210)
  %212 = load %struct.ice_aqc_sw_rules_elem*, %struct.ice_aqc_sw_rules_elem** %10, align 8
  %213 = call i32 @devm_kfree(i32 %211, %struct.ice_aqc_sw_rules_elem* %212)
  %214 = load i32, i32* %13, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %209, %42, %21
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @ice_is_vsi_valid(%struct.ice_hw*, i8*) #1

declare dso_local i8* @ice_get_hw_vsi_num(%struct.ice_hw*, i8*) #1

declare dso_local %struct.ice_aqc_sw_rules_elem* @devm_kzalloc(i32, i8*, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @memset(%struct.ice_fltr_info*, i32, i32) #1

declare dso_local i32 @ice_fill_sw_rule(%struct.ice_hw*, %struct.ice_fltr_info*, %struct.ice_aqc_sw_rules_elem*, i32) #1

declare dso_local i32 @ice_aq_sw_rules(%struct.ice_hw*, %struct.ice_aqc_sw_rules_elem*, i8*, i32, i32, i32*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @devm_kfree(i32, %struct.ice_aqc_sw_rules_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
