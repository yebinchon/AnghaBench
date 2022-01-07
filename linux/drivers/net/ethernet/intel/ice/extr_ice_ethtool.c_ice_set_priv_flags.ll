; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_priv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_priv_flag = type { i32 }
%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@change_flags = common dso_local global i32 0, align 4
@ICE_PF_FLAGS_NBITS = common dso_local global i32 0, align 4
@orig_flags = common dso_local global i32 0, align 4
@ICE_PRIV_FLAG_ARRAY_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ICE_FLAG_ETHTOOL_CTXT = common dso_local global i32 0, align 4
@ice_gstrings_priv_flags = common dso_local global %struct.ice_priv_flag* null, align 8
@ICE_FLAG_FW_LLDP_AGENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to unreg for LLDP events\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Fail to stop LLDP agent\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Fail to init DCB\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Fail to start LLDP Agent\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to start FW DCBX\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"FW DCBX agent is %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Fail to enable MIB change events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @ice_set_priv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_priv_flags(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca %struct.ice_pf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ice_priv_flag*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ice_netdev_priv* %16, %struct.ice_netdev_priv** %6, align 8
  %17 = load i32, i32* @change_flags, align 4
  %18 = load i32, i32* @ICE_PF_FLAGS_NBITS, align 4
  %19 = call i32 @DECLARE_BITMAP(i32 %17, i32 %18)
  %20 = load i32, i32* @orig_flags, align 4
  %21 = load i32, i32* @ICE_PF_FLAGS_NBITS, align 4
  %22 = call i32 @DECLARE_BITMAP(i32 %20, i32 %21)
  %23 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %23, i32 0, i32 0
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %24, align 8
  store %struct.ice_vsi* %25, %struct.ice_vsi** %7, align 8
  %26 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %27 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %26, i32 0, i32 0
  %28 = load %struct.ice_pf*, %struct.ice_pf** %27, align 8
  store %struct.ice_pf* %28, %struct.ice_pf** %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @ICE_PRIV_FLAG_ARRAY_SIZE, align 8
  %31 = call i64 @BIT(i64 %30)
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %205

36:                                               ; preds = %2
  %37 = load i32, i32* @ICE_FLAG_ETHTOOL_CTXT, align 4
  %38 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %39 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @set_bit(i32 %37, i32 %40)
  %42 = load i32, i32* @orig_flags, align 4
  %43 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %44 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ICE_PF_FLAGS_NBITS, align 4
  %47 = call i32 @bitmap_copy(i32 %42, i32 %45, i32 %46)
  store i64 0, i64* %10, align 8
  br label %48

48:                                               ; preds = %78, %36
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @ICE_PRIV_FLAG_ARRAY_SIZE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load %struct.ice_priv_flag*, %struct.ice_priv_flag** @ice_gstrings_priv_flags, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.ice_priv_flag, %struct.ice_priv_flag* %53, i64 %54
  store %struct.ice_priv_flag* %55, %struct.ice_priv_flag** %11, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @BIT(i64 %57)
  %59 = and i64 %56, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.ice_priv_flag*, %struct.ice_priv_flag** %11, align 8
  %63 = getelementptr inbounds %struct.ice_priv_flag, %struct.ice_priv_flag* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %66 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @set_bit(i32 %64, i32 %67)
  br label %77

69:                                               ; preds = %52
  %70 = load %struct.ice_priv_flag*, %struct.ice_priv_flag** %11, align 8
  %71 = getelementptr inbounds %struct.ice_priv_flag, %struct.ice_priv_flag* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %74 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @clear_bit(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %61
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %48

81:                                               ; preds = %48
  %82 = load i32, i32* @change_flags, align 4
  %83 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %84 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @orig_flags, align 4
  %87 = load i32, i32* @ICE_PF_FLAGS_NBITS, align 4
  %88 = call i32 @bitmap_xor(i32 %82, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @ICE_FLAG_FW_LLDP_AGENT, align 4
  %90 = load i32, i32* @change_flags, align 4
  %91 = call i64 @test_bit(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %198

93:                                               ; preds = %81
  %94 = load i32, i32* @ICE_FLAG_FW_LLDP_AGENT, align 4
  %95 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %96 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @test_bit(i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %138, label %100

100:                                              ; preds = %93
  %101 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %102 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %101, i32 0, i32 2
  %103 = call i32 @ice_cfg_lldp_mib_change(i32* %102, i32 0)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %108 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_info(i32* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %114 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %113, i32 0, i32 2
  %115 = call i32 @ice_aq_stop_lldp(i32* %114, i32 1, i32 1, i32* null)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %120 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = call i32 @dev_warn(i32* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %126 = call i32 @ice_init_pf_dcb(%struct.ice_pf* %125, i32 1)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %131 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i32 @dev_warn(i32* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %129, %124
  %136 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %137 = call i32 @ice_cfg_sw_lldp(%struct.ice_vsi* %136, i32 0, i32 1)
  br label %197

138:                                              ; preds = %93
  %139 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %140 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %139, i32 0, i32 2
  %141 = call i32 @ice_aq_start_lldp(i32* %140, i32 1, i32* null)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %146 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @dev_warn(i32* %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %144, %138
  %151 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %152 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %151, i32 0, i32 2
  %153 = call i32 @ice_aq_start_stop_dcbx(i32* %152, i32 1, i32* %14, i32* null)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %158 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = call i32 @dev_dbg(i32* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %162

162:                                              ; preds = %156, %150
  %163 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %164 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %171 = call i32 (i32*, i8*, ...) @dev_info(i32* %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %170)
  %172 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %173 = call i32 @ice_init_pf_dcb(%struct.ice_pf* %172, i32 1)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %162
  %177 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %178 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = call i32 @dev_dbg(i32* %180, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %182

182:                                              ; preds = %176, %162
  %183 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %184 = call i32 @ice_cfg_sw_lldp(%struct.ice_vsi* %183, i32 0, i32 0)
  %185 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %186 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %185, i32 0, i32 2
  %187 = call i32 @ice_cfg_lldp_mib_change(i32* %186, i32 1)
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %182
  %191 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %192 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = call i32 @dev_dbg(i32* %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %196

196:                                              ; preds = %190, %182
  br label %197

197:                                              ; preds = %196, %135
  br label %198

198:                                              ; preds = %197, %81
  %199 = load i32, i32* @ICE_FLAG_ETHTOOL_CTXT, align 4
  %200 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %201 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @clear_bit(i32 %199, i32 %202)
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %198, %33
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @bitmap_xor(i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_cfg_lldp_mib_change(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @ice_aq_stop_lldp(i32*, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ice_init_pf_dcb(%struct.ice_pf*, i32) #1

declare dso_local i32 @ice_cfg_sw_lldp(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @ice_aq_start_lldp(i32*, i32, i32*) #1

declare dso_local i32 @ice_aq_start_stop_dcbx(i32*, i32, i32*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
