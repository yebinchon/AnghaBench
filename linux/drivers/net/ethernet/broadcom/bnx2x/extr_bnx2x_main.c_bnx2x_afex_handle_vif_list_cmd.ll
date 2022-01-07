; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_afex_handle_vif_list_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_afex_handle_vif_list_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.bnx2x_func_afex_viflists_params }
%struct.bnx2x_func_afex_viflists_params = type { i64, i64, i32, i64 }

@VIF_LIST_RULE_GET = common dso_local global i64 0, align 8
@VIF_LIST_RULE_SET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"BUG! afex_handle_vif_list_cmd invalid type 0x%x\0A\00", align 1
@BNX2X_F_CMD_AFEX_VIFLISTS = common dso_local global i32 0, align 4
@DRV_MSG_CODE_AFEX_LISTGET_ACK = common dso_local global i32 0, align 4
@DRV_MSG_CODE_AFEX_LISTSET_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64, i32, i64)* @bnx2x_afex_handle_vif_list_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_afex_handle_vif_list_cmd(%struct.bnx2x* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnx2x_func_state_params, align 8
  %10 = alloca %struct.bnx2x_func_afex_viflists_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = bitcast %struct.bnx2x_func_state_params* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 56, i1 false)
  %14 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.bnx2x_func_afex_viflists_params* %15, %struct.bnx2x_func_afex_viflists_params** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @VIF_LIST_RULE_GET, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @VIF_LIST_RULE_SET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %23, %19, %4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = load i32, i32* @BNX2X_F_CMD_AFEX_VIFLISTS, align 4
  %31 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %10, align 8
  %34 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %10, align 8
  %37 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @VIF_LIST_RULE_GET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %44

42:                                               ; preds = %26
  %43 = load i64, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i64 [ 0, %41 ], [ %43, %42 ]
  %46 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %10, align 8
  %47 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.bnx2x_func_afex_viflists_params*, %struct.bnx2x_func_afex_viflists_params** %10, align 8
  %49 = getelementptr inbounds %struct.bnx2x_func_afex_viflists_params, %struct.bnx2x_func_afex_viflists_params* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @VIF_LIST_RULE_GET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @DRV_MSG_CODE_AFEX_LISTGET_ACK, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @DRV_MSG_CODE_AFEX_LISTSET_ACK, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %12, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %60 = call i32 @bnx2x_func_state_change(%struct.bnx2x* %59, %struct.bnx2x_func_state_params* %9)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @bnx2x_fw_command(%struct.bnx2x* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %57
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #2

declare dso_local i32 @bnx2x_func_state_change(%struct.bnx2x*, %struct.bnx2x_func_state_params*) #2

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
