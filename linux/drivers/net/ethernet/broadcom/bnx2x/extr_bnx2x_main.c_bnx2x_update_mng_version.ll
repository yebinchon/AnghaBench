; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_mng_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_mng_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.bnx2x = type { i64, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@DRV_VER_NOT_LOADED = common dso_local global i32 0, align 4
@func_os_drv_ver = common dso_local global %struct.TYPE_11__* null, align 8
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@DRV_MODULE_VERSION = common dso_local global i32* null, align 8
@DRV_PERS_ETHERNET = common dso_local global i64 0, align 8
@DRV_PERS_ISCSI = common dso_local global i64 0, align 8
@DRV_PERS_FCOE = common dso_local global i64 0, align 8
@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Setting driver version: ETH [%08x] iSCSI [%08x] FCoE [%08x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_update_mng_version(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %8 = load i32, i32* @DRV_VER_NOT_LOADED, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @DRV_VER_NOT_LOADED, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @DRV_VER_NOT_LOADED, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = call i32 @BP_FW_MB_IDX(%struct.bnx2x* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @func_os_drv_ver, align 8
  %15 = call i32 @SHMEM2_HAS(%struct.bnx2x* %13, %struct.TYPE_11__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %119

18:                                               ; preds = %1
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %74

27:                                               ; preds = %18
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %74

34:                                               ; preds = %27
  %35 = load i32*, i32** @DRV_MODULE_VERSION, align 8
  %36 = call i32 @bnx2x_update_mng_version_utility(i32* %35, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = call i32 @CNIC_LOADED(%struct.bnx2x* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %74

41:                                               ; preds = %34
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = call i32 @memset(%struct.TYPE_10__* %45, i32 0, i32 4)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %48 = call i32 @bnx2x_drv_info_iscsi_stat(%struct.bnx2x* %47)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @bnx2x_update_mng_version_utility(i32* %56, i32 0)
  store i32 %57, i32* %3, align 4
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = call i32 @memset(%struct.TYPE_10__* %61, i32 0, i32 4)
  %63 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %64 = call i32 @bnx2x_drv_info_fcoe_stat(%struct.bnx2x* %63)
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @bnx2x_update_mng_version_utility(i32* %72, i32 0)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %41, %40, %33, %26
  %75 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @func_os_drv_ver, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @DRV_PERS_ETHERNET, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @SHMEM2_WR(%struct.bnx2x* %75, i32 %84, i32 %85)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @func_os_drv_ver, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @DRV_PERS_ISCSI, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @SHMEM2_WR(%struct.bnx2x* %87, i32 %96, i32 %97)
  %99 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** @func_os_drv_ver, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @DRV_PERS_FCOE, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @SHMEM2_WR(%struct.bnx2x* %99, i32 %108, i32 %109)
  %111 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %112 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %111, i32 0, i32 1
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @DP(i32 %114, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %74, %17
  ret void
}

declare dso_local i32 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM2_HAS(%struct.bnx2x*, %struct.TYPE_11__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bnx2x_update_mng_version_utility(i32*, i32) #1

declare dso_local i32 @CNIC_LOADED(%struct.bnx2x*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bnx2x_drv_info_iscsi_stat(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_drv_info_fcoe_stat(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM2_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
