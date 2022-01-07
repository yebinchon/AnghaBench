; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_4__, i64, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"FW version is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Firmware on card is old(%s), IRQs may not work\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Please upgrade firmware to version >= 4.0\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"HW Flow control - TX:%d RX:%d\0A\00", align 1
@IFLA_VF_LINK_STATE_AUTO = common dso_local global i32 0, align 4
@PORT_FWD_TYPE_PASSTHRU = common dso_local global i32 0, align 4
@BE_FLAGS_SETUP_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_setup(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %11 = call i32 @be_func_init(%struct.be_adapter* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %207

16:                                               ; preds = %1
  %17 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %18 = call i32 @be_setup_init(%struct.be_adapter* %17)
  %19 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %20 = call i32 @lancer_chip(%struct.be_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %24 = call i32 @be_cmd_req_native_mode(%struct.be_adapter* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %27 = call i32 @BEx_chip(%struct.be_adapter* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %31 = call i32 @be_cmd_get_func_config(%struct.be_adapter* %30, i32* null)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %207

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %39 = call i32 @be_get_config(%struct.be_adapter* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %203

43:                                               ; preds = %37
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = call i64 @BE2_chip(%struct.be_adapter* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %49 = call i64 @be_physfn(%struct.be_adapter* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %53 = call i32 @be_alloc_sriov_res(%struct.be_adapter* %52)
  br label %54

54:                                               ; preds = %51, %47, %43
  %55 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %56 = call i32 @be_get_resources(%struct.be_adapter* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %203

60:                                               ; preds = %54
  %61 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %62 = call i32 @be_msix_enable(%struct.be_adapter* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %203

66:                                               ; preds = %60
  %67 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %68 = call i32 @be_if_create(%struct.be_adapter* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %203

72:                                               ; preds = %66
  %73 = call i32 (...) @rtnl_lock()
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = call i32 @be_setup_queues(%struct.be_adapter* %74)
  store i32 %75, i32* %5, align 4
  %76 = call i32 (...) @rtnl_unlock()
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %203

80:                                               ; preds = %72
  %81 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %82 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %82, i32 0, i32 8
  %84 = call i32 @be_cmd_get_fn_privileges(%struct.be_adapter* %81, i32* %83, i32 0)
  %85 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %86 = call i32 @be_mac_setup(%struct.be_adapter* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %203

90:                                               ; preds = %80
  %91 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %92 = call i32 @be_cmd_get_fw_ver(%struct.be_adapter* %91)
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %99 = call i64 @BE2_chip(%struct.be_adapter* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %90
  %102 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @fw_major_num(i32 %104)
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %107, %101, %90
  %116 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %117 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @be_cmd_set_flow_control(%struct.be_adapter* %116, i32 %119, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %128 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %128, i32 0, i32 5
  %130 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %130, i32 0, i32 4
  %132 = call i32 @be_cmd_get_flow_control(%struct.be_adapter* %127, i32* %129, i32* %131)
  br label %133

133:                                              ; preds = %126, %115
  %134 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %134, i32 0, i32 6
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %143)
  %145 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %146 = call i64 @be_physfn(%struct.be_adapter* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %133
  %149 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %150 = load i32, i32* @IFLA_VF_LINK_STATE_AUTO, align 4
  %151 = call i32 @be_cmd_set_logical_link_config(%struct.be_adapter* %149, i32 %150, i32 0)
  br label %152

152:                                              ; preds = %148, %133
  %153 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %154 = call i64 @BE3_chip(%struct.be_adapter* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %158 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @PORT_FWD_TYPE_PASSTHRU, align 4
  %162 = call i32 @be_cmd_set_hsw_config(%struct.be_adapter* %157, i32 0, i32 0, i32 %160, i32 %161, i32 0)
  br label %163

163:                                              ; preds = %156, %152
  %164 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %170 = call i32 @be_vf_setup(%struct.be_adapter* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %173 = call i32 @be_cmd_get_phy_info(%struct.be_adapter* %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %171
  %177 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %178 = call i64 @be_pause_supported(%struct.be_adapter* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %180, %176, %171
  %185 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %186 = call i64 @be_physfn(%struct.be_adapter* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %190 = call i32 @lancer_chip(%struct.be_adapter* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %194 = call i32 @be_cmd_set_features(%struct.be_adapter* %193)
  br label %195

195:                                              ; preds = %192, %188, %184
  %196 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %197 = call i32 @be_schedule_worker(%struct.be_adapter* %196)
  %198 = load i32, i32* @BE_FLAGS_SETUP_DONE, align 4
  %199 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  store i32 0, i32* %2, align 4
  br label %207

203:                                              ; preds = %89, %79, %71, %65, %59, %42
  %204 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %205 = call i32 @be_clear(%struct.be_adapter* %204)
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %203, %195, %34, %14
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @be_func_init(%struct.be_adapter*) #1

declare dso_local i32 @be_setup_init(%struct.be_adapter*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_req_native_mode(%struct.be_adapter*) #1

declare dso_local i32 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_func_config(%struct.be_adapter*, i32*) #1

declare dso_local i32 @be_get_config(%struct.be_adapter*) #1

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @be_alloc_sriov_res(%struct.be_adapter*) #1

declare dso_local i32 @be_get_resources(%struct.be_adapter*) #1

declare dso_local i32 @be_msix_enable(%struct.be_adapter*) #1

declare dso_local i32 @be_if_create(%struct.be_adapter*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @be_setup_queues(%struct.be_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @be_cmd_get_fn_privileges(%struct.be_adapter*, i32*, i32) #1

declare dso_local i32 @be_mac_setup(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_fw_ver(%struct.be_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @fw_major_num(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @be_cmd_set_flow_control(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @be_cmd_get_flow_control(%struct.be_adapter*, i32*, i32*) #1

declare dso_local i32 @be_cmd_set_logical_link_config(%struct.be_adapter*, i32, i32) #1

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_set_hsw_config(%struct.be_adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be_vf_setup(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_phy_info(%struct.be_adapter*) #1

declare dso_local i64 @be_pause_supported(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_set_features(%struct.be_adapter*) #1

declare dso_local i32 @be_schedule_worker(%struct.be_adapter*) #1

declare dso_local i32 @be_clear(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
