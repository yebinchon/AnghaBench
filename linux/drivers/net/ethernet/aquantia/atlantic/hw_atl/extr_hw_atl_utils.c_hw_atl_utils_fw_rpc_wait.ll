; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_fw_rpc_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_fw_rpc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i64, %struct.hw_atl_utils_fw_rpc, i32 }
%struct.hw_atl_utils_fw_rpc = type { i32 }
%struct.aq_hw_atl_utils_fw_rpc_tid_s = type { i64, i32, i32 }

@HW_ATL_RPC_CONTROL_ADR = common dso_local global i32 0, align 4
@hw_atl_utils_rpc_state_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_atl_utils_fw_rpc_wait(%struct.aq_hw_s* %0, %struct.hw_atl_utils_fw_rpc** %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.hw_atl_utils_fw_rpc**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aq_hw_atl_utils_fw_rpc_tid_s, align 8
  %7 = alloca %struct.aq_hw_atl_utils_fw_rpc_tid_s, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.hw_atl_utils_fw_rpc** %1, %struct.hw_atl_utils_fw_rpc*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %10 = load i32, i32* @HW_ATL_RPC_CONTROL_ADR, align 4
  %11 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %9, i32 %10)
  %12 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %16 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i32, i32* @hw_atl_utils_rpc_state_get, align 4
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %19 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %7, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @readx_poll_timeout_atomic(i32 %17, %struct.aq_hw_s* %18, i32 %20, i32 %26, i32 1000, i32 100000)
  store i32 %27, i32* %5, align 4
  %28 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %7, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 65535
  br i1 %30, label %31, label %40

31:                                               ; preds = %8
  %32 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %33 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hw_atl_utils_fw_rpc_call(%struct.aq_hw_s* %32, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %86

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %8
  br label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %7, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 65535, %49
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i1 [ true, %41 ], [ %50, %47 ]
  br i1 %52, label %8, label %53

53:                                               ; preds = %51
  %54 = load %struct.hw_atl_utils_fw_rpc**, %struct.hw_atl_utils_fw_rpc*** %4, align 8
  %55 = icmp ne %struct.hw_atl_utils_fw_rpc** %54, null
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %62 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %63 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %66 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %65, i32 0, i32 1
  %67 = bitcast %struct.hw_atl_utils_fw_rpc* %66 to i8*
  %68 = bitcast i8* %67 to i32*
  %69 = getelementptr inbounds %struct.aq_hw_atl_utils_fw_rpc_tid_s, %struct.aq_hw_atl_utils_fw_rpc_tid_s* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 4
  %73 = sub i64 %72, 4
  %74 = udiv i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s* %61, i32 %64, i32* %68, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %86

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %56
  %82 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %83 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %82, i32 0, i32 1
  %84 = load %struct.hw_atl_utils_fw_rpc**, %struct.hw_atl_utils_fw_rpc*** %4, align 8
  store %struct.hw_atl_utils_fw_rpc* %83, %struct.hw_atl_utils_fw_rpc** %84, align 8
  br label %85

85:                                               ; preds = %81, %53
  br label %86

86:                                               ; preds = %85, %79, %38
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

declare dso_local i32 @hw_atl_utils_fw_rpc_call(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
