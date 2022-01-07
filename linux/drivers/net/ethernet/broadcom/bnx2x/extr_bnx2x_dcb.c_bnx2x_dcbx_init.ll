; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SHMEM_LLDP_DCBX_PARAMS_NONE = common dso_local global i64 0, align 8
@BC_SUPPORTS_DCBX_MSG_NON_PMF = common dso_local global i32 0, align 4
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"dcb_state %d bp->port.pmf %d\0A\00", align 1
@BNX2X_DCB_STATE_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"dcbx_lldp_params_offset 0x%x\0A\00", align 1
@DRV_FLAGS_DCB_CONFIGURED = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_DCBX_ADMIN_MIB = common dso_local global i32 0, align 4
@DRV_MSG_CODE_DCBX_ADMIN_PMF_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_dcbx_init(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @SHMEM_LLDP_DCBX_PARAMS_NONE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BC_SUPPORTS_DCBX_MSG_NON_PMF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %78

20:                                               ; preds = %12, %2
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %78

26:                                               ; preds = %20
  %27 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i64, ...) @DP(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BNX2X_DCB_STATE_ON, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %26
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @SHMEM2_HAS(%struct.bnx2x* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @SHMEM2_RD(%struct.bnx2x* %47, i64 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 (i32, i8*, i64, ...) @DP(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = load i32, i32* @DRV_FLAGS_DCB_CONFIGURED, align 4
  %55 = shl i32 1, %54
  %56 = call i32 @bnx2x_update_drv_flags(%struct.bnx2x* %53, i32 %55, i32 0)
  %57 = load i64, i64* @SHMEM_LLDP_DCBX_PARAMS_NONE, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %46
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = load i32, i32* @HW_LOCK_RESOURCE_DCBX_ADMIN_MIB, align 4
  %63 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @bnx2x_dcbx_admin_mib_updated_params(%struct.bnx2x* %67, i64 %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = load i32, i32* @DRV_MSG_CODE_DCBX_ADMIN_PMF_MSG, align 4
  %73 = call i32 @bnx2x_fw_command(%struct.bnx2x* %71, i32 %72, i32 0)
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = load i32, i32* @HW_LOCK_RESOURCE_DCBX_ADMIN_MIB, align 4
  %76 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %46
  br label %78

78:                                               ; preds = %19, %25, %77, %41, %26
  ret void
}

declare dso_local i32 @DP(i32, i8*, i64, ...) #1

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i64) #1

declare dso_local i64 @SHMEM2_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_update_drv_flags(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_dcbx_admin_mib_updated_params(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
