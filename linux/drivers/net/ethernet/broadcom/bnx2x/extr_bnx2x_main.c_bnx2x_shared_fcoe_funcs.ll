; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_shared_fcoe_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_shared_fcoe_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.bnx2x = type { i32 }

@E2_FUNC_MAX = common dso_local global i32 0, align 4
@func_mf_config = common dso_local global %struct.TYPE_4__* null, align 8
@FUNC_MF_CFG_FUNC_HIDE = common dso_local global i32 0, align 4
@FUNC_MF_CFG_PROTOCOL_MASK = common dso_local global i32 0, align 4
@FUNC_MF_CFG_PROTOCOL_FCOE = common dso_local global i32 0, align 4
@func_ext_config = common dso_local global %struct.TYPE_5__* null, align 8
@MACP_FUNC_CFG_FLAGS_ENABLED = common dso_local global i32 0, align 4
@MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD = common dso_local global i32 0, align 4
@drv_lic_key = common dso_local global %struct.TYPE_6__* null, align 8
@FW_ENCODE_32BIT_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_shared_fcoe_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_shared_fcoe_funcs(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = call i64 @IS_MF(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = call i32 @BP_PATH(%struct.bnx2x* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %71, %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @E2_FUNC_MAX, align 4
  %19 = mul nsw i32 %18, 2
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %16
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = call i64 @IS_MF_SD(%struct.bnx2x* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @func_mf_config, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MF_CFG_RD(%struct.bnx2x* %26, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @FUNC_MF_CFG_FUNC_HIDE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_FCOE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %38, %25
  br label %70

48:                                               ; preds = %21
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @func_ext_config, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MF_CFG_RD(%struct.bnx2x* %49, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @MACP_FUNC_CFG_FLAGS_ENABLED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %61, %48
  br label %70

70:                                               ; preds = %69, %47
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %4, align 4
  br label %16

74:                                               ; preds = %16
  br label %106

75:                                               ; preds = %1
  %76 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %77 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %76)
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 2, i32 1
  store i32 %80, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %102, %75
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_lic_key, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SHMEM_RD(%struct.bnx2x* %86, i32 %92)
  %94 = load i32, i32* @FW_ENCODE_32BIT_PATTERN, align 4
  %95 = xor i32 %93, %94
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %81

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF_SD(%struct.bnx2x*) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
