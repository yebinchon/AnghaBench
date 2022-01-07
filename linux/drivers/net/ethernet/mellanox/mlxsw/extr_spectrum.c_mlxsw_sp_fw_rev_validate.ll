; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_fw_rev_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_fw_rev_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i8*, %struct.TYPE_2__*, i32, %struct.mlxsw_fw_rev* }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_fw_rev }
%struct.mlxsw_fw_rev = type { i64, i64, i64, i64 }
%union.devlink_param_value = type { i64 }
%struct.firmware = type { i32 }

@DEVLINK_PARAM_GENERIC_ID_FW_LOAD_POLICY = common dso_local global i32 0, align 4
@DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_FLASH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"Mismatch in major FW version [%d:%d] is never expected; Please contact support\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"The firmware version %d.%d.%d is incompatible with the driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Flashing firmware using file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not request firmware file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not upgrade firmware\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_fw_rev_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fw_rev_validate(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_fw_rev*, align 8
  %5 = alloca %struct.mlxsw_fw_rev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.devlink_param_value, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.mlxsw_fw_rev* %13, %struct.mlxsw_fw_rev** %4, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 3
  %16 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %15, align 8
  store %struct.mlxsw_fw_rev* %16, %struct.mlxsw_fw_rev** %5, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %21 = icmp ne %struct.mlxsw_fw_rev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %1
  store i32 0, i32* %2, align 4
  br label %172

26:                                               ; preds = %22
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @priv_to_devlink(i32 %29)
  %31 = load i32, i32* @DEVLINK_PARAM_GENERIC_ID_FW_LOAD_POLICY, align 4
  %32 = call i32 @devlink_param_driverinit_value_get(i32 %30, i32 %31, %union.devlink_param_value* %7)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %172

37:                                               ; preds = %26
  %38 = bitcast %union.devlink_param_value* %7 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_FLASH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %172

43:                                               ; preds = %37
  %44 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %45 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %48 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %53 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %56 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %172

61:                                               ; preds = %43
  %62 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %63 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @MLXSW_SP_FWREV_MINOR_TO_BRANCH(i64 %64)
  %66 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %67 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @MLXSW_SP_FWREV_MINOR_TO_BRANCH(i64 %68)
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %61
  %72 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %73 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %76 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %95, label %79

79:                                               ; preds = %71
  %80 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %81 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %84 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %89 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %92 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %71
  store i32 0, i32* %2, align 4
  br label %172

96:                                               ; preds = %87, %79, %61
  %97 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %103 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %107 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %110 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %101, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %105, i64 %108, i64 %111)
  %113 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %114 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %118)
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %122 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @request_firmware_direct(%struct.firmware** %8, i8* %120, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %96
  %130 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %131 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 (i32, i8*, ...) @dev_err(i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %172

138:                                              ; preds = %96
  %139 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %140 = load %struct.firmware*, %struct.firmware** %8, align 8
  %141 = call i32 @mlxsw_sp_firmware_flash(%struct.mlxsw_sp* %139, %struct.firmware* %140, i32* null)
  store i32 %141, i32* %9, align 4
  %142 = load %struct.firmware*, %struct.firmware** %8, align 8
  %143 = call i32 @release_firmware(%struct.firmware* %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %148 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %147, i32 0, i32 1
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %153

153:                                              ; preds = %146, %138
  %154 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %4, align 8
  %155 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.mlxsw_fw_rev*, %struct.mlxsw_fw_rev** %5, align 8
  %158 = getelementptr inbounds %struct.mlxsw_fw_rev, %struct.mlxsw_fw_rev* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp sge i64 %156, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %153
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  br label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @EAGAIN, align 4
  %168 = sub nsw i32 0, %167
  br label %169

169:                                              ; preds = %166, %164
  %170 = phi i32 [ %165, %164 ], [ %168, %166 ]
  store i32 %170, i32* %2, align 4
  br label %172

171:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %169, %129, %95, %51, %42, %35, %25
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @devlink_param_driverinit_value_get(i32, i32, %union.devlink_param_value*) #1

declare dso_local i32 @priv_to_devlink(i32) #1

declare dso_local i32 @WARN(i32, i8*, i64, i64) #1

declare dso_local i64 @MLXSW_SP_FWREV_MINOR_TO_BRANCH(i64) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, ...) #1

declare dso_local i32 @request_firmware_direct(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mlxsw_sp_firmware_flash(%struct.mlxsw_sp*, %struct.firmware*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
