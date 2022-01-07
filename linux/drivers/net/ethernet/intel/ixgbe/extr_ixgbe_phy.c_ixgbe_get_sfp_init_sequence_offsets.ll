; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_get_sfp_init_sequence_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_get_sfp_init_sequence_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i64, i64*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@ixgbe_sfp_type_not_present = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_cu = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core0 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_da_act_lmt_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_lx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_cu_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_1g_sx_core1 = common dso_local global i64 0, align 8
@ixgbe_sfp_type_srlr_core1 = common dso_local global i64 0, align 8
@IXGBE_PHY_INIT_OFFSET_NL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"eeprom read at %d failed\0A\00", align 1
@IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT = common dso_local global i32 0, align 4
@IXGBE_PHY_INIT_END_NL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"SFP+ module not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"No matching SFP+ module found\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"eeprom read at offset %d failed\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %21, i32* %4, align 4
  br label %198

22:                                               ; preds = %3
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_sfp_type_not_present, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @IXGBE_ERR_SFP_NOT_PRESENT, align 4
  store i32 %30, i32* %4, align 4
  br label %198

31:                                               ; preds = %22
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ixgbe_sfp_type_da_cu, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %45, i32* %4, align 4
  br label %198

46:                                               ; preds = %37, %31
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @ixgbe_sfp_type_da_act_lmt_core0, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @ixgbe_sfp_type_1g_lx_core0, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @ixgbe_sfp_type_1g_cu_core0, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @ixgbe_sfp_type_1g_sx_core0, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54, %50, %46
  %63 = load i64, i64* @ixgbe_sfp_type_srlr_core0, align 8
  store i64 %63, i64* %9, align 8
  br label %83

64:                                               ; preds = %58
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @ixgbe_sfp_type_da_act_lmt_core1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @ixgbe_sfp_type_1g_lx_core1, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @ixgbe_sfp_type_1g_cu_core1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @ixgbe_sfp_type_1g_sx_core1, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %72, %68, %64
  %81 = load i64, i64* @ixgbe_sfp_type_srlr_core1, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %76
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %87, align 8
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %90 = bitcast %struct.ixgbe_hw* %89 to %struct.ixgbe_hw.0*
  %91 = load i64, i64* @IXGBE_PHY_INIT_OFFSET_NL, align 8
  %92 = load i64*, i64** %6, align 8
  %93 = call i64 %88(%struct.ixgbe_hw.0* %90, i64 %91, i64* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %97 = load i64, i64* @IXGBE_PHY_INIT_OFFSET_NL, align 8
  %98 = call i32 @hw_err(%struct.ixgbe_hw* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT, align 4
  store i32 %99, i32* %4, align 4
  br label %198

100:                                              ; preds = %83
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64*, i64** %6, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 65535
  br i1 %107, label %108, label %110

108:                                              ; preds = %104, %100
  %109 = load i32, i32* @IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT, align 4
  store i32 %109, i32* %4, align 4
  br label %198

110:                                              ; preds = %104
  %111 = load i64*, i64** %6, align 8
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %117, align 8
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %120 = bitcast %struct.ixgbe_hw* %119 to %struct.ixgbe_hw.0*
  %121 = load i64*, i64** %6, align 8
  %122 = load i64, i64* %121, align 8
  %123 = call i64 %118(%struct.ixgbe_hw.0* %120, i64 %122, i64* %8)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  br label %192

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %182, %126
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @IXGBE_PHY_INIT_END_NL, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %183

131:                                              ; preds = %127
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  %136 = load i64*, i64** %6, align 8
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %140 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %142, align 8
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %145 = bitcast %struct.ixgbe_hw* %144 to %struct.ixgbe_hw.0*
  %146 = load i64*, i64** %6, align 8
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %7, align 8
  %149 = call i64 %143(%struct.ixgbe_hw.0* %145, i64 %147, i64* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %135
  br label %192

152:                                              ; preds = %135
  %153 = load i64*, i64** %7, align 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i64*, i64** %7, align 8
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 65535
  br i1 %159, label %160, label %164

160:                                              ; preds = %156, %152
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %162 = call i32 @hw_dbg(%struct.ixgbe_hw* %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %163, i32* %4, align 4
  br label %198

164:                                              ; preds = %156
  br label %183

165:                                              ; preds = %131
  %166 = load i64*, i64** %6, align 8
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 2
  store i64 %168, i64* %166, align 8
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %170 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64 (%struct.ixgbe_hw.0*, i64, i64*)*, i64 (%struct.ixgbe_hw.0*, i64, i64*)** %172, align 8
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %175 = bitcast %struct.ixgbe_hw* %174 to %struct.ixgbe_hw.0*
  %176 = load i64*, i64** %6, align 8
  %177 = load i64, i64* %176, align 8
  %178 = call i64 %173(%struct.ixgbe_hw.0* %175, i64 %177, i64* %8)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %165
  br label %192

181:                                              ; preds = %165
  br label %182

182:                                              ; preds = %181
  br label %127

183:                                              ; preds = %164, %127
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @IXGBE_PHY_INIT_END_NL, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %189 = call i32 @hw_dbg(%struct.ixgbe_hw* %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %190 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  store i32 %190, i32* %4, align 4
  br label %198

191:                                              ; preds = %183
  store i32 0, i32* %4, align 4
  br label %198

192:                                              ; preds = %180, %151, %125
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %194 = load i64*, i64** %6, align 8
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @hw_err(%struct.ixgbe_hw* %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %195)
  %197 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %192, %191, %187, %160, %108, %95, %44, %29, %20
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @hw_err(%struct.ixgbe_hw*, i8*, i64) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
