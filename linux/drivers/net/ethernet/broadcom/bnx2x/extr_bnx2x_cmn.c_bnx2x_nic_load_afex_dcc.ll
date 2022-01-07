; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_nic_load_afex_dcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_nic_load_afex_dcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FW_MSG_CODE_DRV_LOAD_COMMON = common dso_local global i32 0, align 4
@FW_MSG_CODE_DRV_LOAD_COMMON_CHIP = common dso_local global i32 0, align 4
@dcc_support = common dso_local global i32 0, align 4
@SHMEM_DCC_SUPPORT_DISABLE_ENABLE_PF_TLV = common dso_local global i32 0, align 4
@SHMEM_DCC_SUPPORT_BANDWIDTH_ALLOCATION_TLV = common dso_local global i32 0, align 4
@afex_driver_support = common dso_local global i32 0, align 4
@SHMEM_AFEX_SUPPORTED_VERSION_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_nic_load_afex_dcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_nic_load_afex_dcc(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FW_MSG_CODE_DRV_LOAD_COMMON, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FW_MSG_CODE_DRV_LOAD_COMMON_CHIP, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8, %2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load i32, i32* @dcc_support, align 4
  %21 = call i64 @SHMEM2_HAS(%struct.bnx2x* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = load i32, i32* @dcc_support, align 4
  %26 = load i32, i32* @SHMEM_DCC_SUPPORT_DISABLE_ENABLE_PF_TLV, align 4
  %27 = load i32, i32* @SHMEM_DCC_SUPPORT_BANDWIDTH_ALLOCATION_TLV, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @SHMEM2_WR(%struct.bnx2x* %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = load i32, i32* @afex_driver_support, align 4
  %33 = call i64 @SHMEM2_HAS(%struct.bnx2x* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = load i32, i32* @afex_driver_support, align 4
  %38 = load i32, i32* @SHMEM_AFEX_SUPPORTED_VERSION_ONE, align 4
  %39 = call i32 @SHMEM2_WR(%struct.bnx2x* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %12, %8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  ret void
}

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i32 @SHMEM2_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
