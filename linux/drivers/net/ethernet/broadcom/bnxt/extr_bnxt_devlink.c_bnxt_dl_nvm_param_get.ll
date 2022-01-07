; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_nvm_param_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_nvm_param_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_param_gset_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_nvm_get_variable_input = type { i32 }
%struct.bnxt = type { i32 }

@HWRM_NVM_GET_VARIABLE = common dso_local global i32 0, align 4
@BNXT_DEVLINK_PARAM_ID_GRE_VER_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.devlink_param_gset_ctx*)* @bnxt_dl_nvm_param_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_dl_nvm_param_get(%struct.devlink* %0, i32 %1, %struct.devlink_param_gset_ctx* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_param_gset_ctx*, align 8
  %7 = alloca %struct.hwrm_nvm_get_variable_input, align 4
  %8 = alloca %struct.bnxt*, align 8
  %9 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.devlink_param_gset_ctx* %2, %struct.devlink_param_gset_ctx** %6, align 8
  %10 = bitcast %struct.hwrm_nvm_get_variable_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.devlink*, %struct.devlink** %4, align 8
  %12 = call %struct.bnxt* @bnxt_get_bp_from_dl(%struct.devlink* %11)
  store %struct.bnxt* %12, %struct.bnxt** %8, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %14 = load i32, i32* @HWRM_NVM_GET_VARIABLE, align 4
  %15 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %13, %struct.hwrm_nvm_get_variable_input* %7, i32 %14, i32 -1, i32 -1)
  %16 = load %struct.bnxt*, %struct.bnxt** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %18, i32 0, i32 0
  %20 = call i32 @bnxt_hwrm_nvm_req(%struct.bnxt* %16, i32 %17, %struct.hwrm_nvm_get_variable_input* %7, i32 4, %struct.TYPE_2__* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BNXT_DEVLINK_PARAM_ID_GRE_VER_CHECK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.devlink_param_gset_ctx*, %struct.devlink_param_gset_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.devlink_param_gset_ctx, %struct.devlink_param_gset_ctx* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %27, %23
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bnxt* @bnxt_get_bp_from_dl(%struct.devlink*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_nvm_get_variable_input*, i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_nvm_req(%struct.bnxt*, i32, %struct.hwrm_nvm_get_variable_input*, i32, %struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
