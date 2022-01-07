; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_update_value_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_update_value_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bpf_func_state** }
%struct.bpf_func_state = type { %struct.bpf_stack_state* }
%struct.bpf_stack_state = type { i64* }
%struct.bpf_reg_state = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.bpf_offloaded_map = type { %struct.TYPE_7__, %struct.nfp_bpf_map* }
%struct.TYPE_7__ = type { i32 }
%struct.nfp_bpf_map = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_REG_3 = common dso_local global i32 0, align 4
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@STACK_ZERO = common dso_local global i64 0, align 8
@NFP_MAP_USE_ATOMIC_CNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [143 x i8] c"value at offset %d/%d may be non-zero, bpf_map_update_elem() is required to initialize atomic counters to zero to avoid offload endian issues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @nfp_bpf_map_update_value_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_map_update_value_ok(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_reg_state*, align 8
  %5 = alloca %struct.bpf_reg_state*, align 8
  %6 = alloca %struct.bpf_offloaded_map*, align 8
  %7 = alloca %struct.bpf_func_state*, align 8
  %8 = alloca %struct.nfp_bpf_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_stack_state*, align 8
  %12 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %13 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %14 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %13)
  %15 = load i32, i32* @BPF_REG_1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %14, i64 %16
  store %struct.bpf_reg_state* %17, %struct.bpf_reg_state** %4, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %19 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %18)
  %20 = load i32, i32* @BPF_REG_3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %19, i64 %21
  store %struct.bpf_reg_state* %22, %struct.bpf_reg_state** %5, align 8
  %23 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %26, align 8
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %27, i64 %30
  %32 = load %struct.bpf_func_state*, %struct.bpf_func_state** %31, align 8
  store %struct.bpf_func_state* %32, %struct.bpf_func_state** %7, align 8
  %33 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.bpf_offloaded_map* @map_to_offmap(i32 %35)
  store %struct.bpf_offloaded_map* %36, %struct.bpf_offloaded_map** %6, align 8
  %37 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %38 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %37, i32 0, i32 1
  %39 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %38, align 8
  store %struct.nfp_bpf_map* %39, %struct.nfp_bpf_map** %8, align 8
  %40 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %41 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %44 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %107, %1
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %6, align 8
  %51 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = sub nsw i32 0, %58
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %62 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %61, i32 0, i32 0
  %63 = load %struct.bpf_stack_state*, %struct.bpf_stack_state** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @BPF_REG_SIZE, align 4
  %66 = udiv i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.bpf_stack_state, %struct.bpf_stack_state* %63, i64 %67
  store %struct.bpf_stack_state* %68, %struct.bpf_stack_state** %11, align 8
  %69 = load %struct.bpf_stack_state*, %struct.bpf_stack_state** %11, align 8
  %70 = getelementptr inbounds %struct.bpf_stack_state, %struct.bpf_stack_state* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @BPF_REG_SIZE, align 4
  %74 = urem i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %71, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @STACK_ZERO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %55
  br label %107

81:                                               ; preds = %55
  %82 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %8, align 8
  %83 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sdiv i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NFP_MAP_USE_ATOMIC_CNT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %81
  %94 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @pr_vlog(%struct.bpf_verifier_env* %94, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  store i32 0, i32* %2, align 4
  br label %111

98:                                               ; preds = %81
  %99 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %8, align 8
  %100 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sdiv i32 %102, 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %98, %80
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %48

110:                                              ; preds = %48
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %93
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local %struct.bpf_offloaded_map* @map_to_offmap(i32) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
