; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_hwrm_nvm_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_hwrm_nvm_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_dl_nvm_param = type { i64, i64, i32, i32, i32 }
%struct.bnxt = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%union.devlink_param_value = type { i32 }
%struct.hwrm_nvm_get_variable_input = type { i8*, i8*, i8*, i8*, i8*, i32 }
%union.bnxt_nvm_data = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@nvm_params = common dso_local global %struct.bnxt_dl_nvm_param* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BNXT_NVM_PORT_CFG = common dso_local global i64 0, align 8
@BNXT_NVM_FUNC_CFG = common dso_local global i64 0, align 8
@BNXT_FIRST_PF_FID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HWRM_NVM_SET_VARIABLE = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"PF does not have admin privileges to modify NVM config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64, i8*, i32, %union.devlink_param_value*)* @bnxt_hwrm_nvm_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_nvm_req(%struct.bnxt* %0, i64 %1, i8* %2, i32 %3, %union.devlink_param_value* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.devlink_param_value*, align 8
  %12 = alloca %struct.hwrm_nvm_get_variable_input*, align 8
  %13 = alloca %struct.bnxt_dl_nvm_param, align 8
  %14 = alloca %union.bnxt_nvm_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %union.devlink_param_value* %4, %union.devlink_param_value** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.hwrm_nvm_get_variable_input*
  store %struct.hwrm_nvm_get_variable_input* %20, %struct.hwrm_nvm_get_variable_input** %12, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %22 = call i64 @BNXT_VF(%struct.bnxt* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %177

27:                                               ; preds = %5
  store i32 0, i32* %18, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %18, align 4
  %30 = load %struct.bnxt_dl_nvm_param*, %struct.bnxt_dl_nvm_param** @nvm_params, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.bnxt_dl_nvm_param* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.bnxt_dl_nvm_param*, %struct.bnxt_dl_nvm_param** @nvm_params, align 8
  %35 = load i32, i32* %18, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %34, i64 %36
  %38 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.bnxt_dl_nvm_param*, %struct.bnxt_dl_nvm_param** @nvm_params, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %43, i64 %45
  %47 = bitcast %struct.bnxt_dl_nvm_param* %13 to i8*
  %48 = bitcast %struct.bnxt_dl_nvm_param* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  br label %53

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %18, align 4
  br label %28

53:                                               ; preds = %42, %28
  %54 = load i32, i32* %18, align 4
  %55 = load %struct.bnxt_dl_nvm_param*, %struct.bnxt_dl_nvm_param** @nvm_params, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.bnxt_dl_nvm_param* %55)
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %177

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BNXT_NVM_PORT_CFG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %68 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %16, align 4
  br label %84

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BNXT_NVM_FUNC_CFG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %78 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BNXT_FIRST_PF_FID, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %76, %71
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %86 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call %union.bnxt_nvm_data* @dma_alloc_coherent(i32* %88, i32 4, i32* %15, i32 %89)
  store %union.bnxt_nvm_data* %90, %union.bnxt_nvm_data** %14, align 8
  %91 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %14, align 8
  %92 = icmp ne %union.bnxt_nvm_data* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %177

96:                                               ; preds = %84
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @cpu_to_le64(i32 %97)
  %99 = load %struct.hwrm_nvm_get_variable_input*, %struct.hwrm_nvm_get_variable_input** %12, align 8
  %100 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, %struct.hwrm_nvm_get_variable_input* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @cpu_to_le16(i32 %102)
  %104 = load %struct.hwrm_nvm_get_variable_input*, %struct.hwrm_nvm_get_variable_input** %12, align 8
  %105 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, %struct.hwrm_nvm_get_variable_input* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @cpu_to_le16(i32 %107)
  %109 = load %struct.hwrm_nvm_get_variable_input*, %struct.hwrm_nvm_get_variable_input** %12, align 8
  %110 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, %struct.hwrm_nvm_get_variable_input* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = load %struct.hwrm_nvm_get_variable_input*, %struct.hwrm_nvm_get_variable_input** %12, align 8
  %114 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, %struct.hwrm_nvm_get_variable_input* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %96
  %118 = call i8* @cpu_to_le16(i32 1)
  %119 = load %struct.hwrm_nvm_get_variable_input*, %struct.hwrm_nvm_get_variable_input** %12, align 8
  %120 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, %struct.hwrm_nvm_get_variable_input* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %96
  %122 = load %struct.hwrm_nvm_get_variable_input*, %struct.hwrm_nvm_get_variable_input** %12, align 8
  %123 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, %struct.hwrm_nvm_get_variable_input* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @HWRM_NVM_SET_VARIABLE, align 4
  %126 = call i8* @cpu_to_le16(i32 %125)
  %127 = icmp eq i8* %124, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %14, align 8
  %130 = load %union.devlink_param_value*, %union.devlink_param_value** %11, align 8
  %131 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @bnxt_copy_to_nvm_data(%union.bnxt_nvm_data* %129, %union.devlink_param_value* %130, i32 %132, i32 %134)
  %136 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %140 = call i32 @hwrm_send_message(%struct.bnxt* %136, i8* %137, i32 %138, i32 %139)
  store i32 %140, i32* %17, align 4
  br label %158

141:                                              ; preds = %121
  %142 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %146 = call i32 @hwrm_send_message_silent(%struct.bnxt* %142, i8* %143, i32 %144, i32 %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load %union.devlink_param_value*, %union.devlink_param_value** %11, align 8
  %151 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %14, align 8
  %152 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.bnxt_dl_nvm_param, %struct.bnxt_dl_nvm_param* %13, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @bnxt_copy_from_nvm_data(%union.devlink_param_value* %150, %union.bnxt_nvm_data* %151, i32 %153, i32 %155)
  br label %157

157:                                              ; preds = %149, %141
  br label %158

158:                                              ; preds = %157, %128
  %159 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %160 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %159, i32 0, i32 1
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load %union.bnxt_nvm_data*, %union.bnxt_nvm_data** %14, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @dma_free_coherent(i32* %162, i32 4, %union.bnxt_nvm_data* %163, i32 %164)
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @EACCES, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %158
  %171 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %172 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @netdev_err(i32 %173, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %175

175:                                              ; preds = %170, %158
  %176 = load i32, i32* %17, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %175, %93, %58, %24
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bnxt_dl_nvm_param*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %union.bnxt_nvm_data* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bnxt_copy_to_nvm_data(%union.bnxt_nvm_data*, %union.devlink_param_value*, i32, i32) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, i8*, i32, i32) #1

declare dso_local i32 @hwrm_send_message_silent(%struct.bnxt*, i8*, i32, i32) #1

declare dso_local i32 @bnxt_copy_from_nvm_data(%union.devlink_param_value*, %union.bnxt_nvm_data*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %union.bnxt_nvm_data*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
