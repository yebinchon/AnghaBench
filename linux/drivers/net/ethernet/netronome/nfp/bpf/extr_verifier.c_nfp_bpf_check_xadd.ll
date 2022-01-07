; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_xadd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_xadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@PTR_TO_MAP_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"atomic add not to a map value pointer: %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"atomic add not of a scalar: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*)* @nfp_bpf_check_xadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_check_xadd(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, %struct.bpf_verifier_env* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store %struct.bpf_verifier_env* %2, %struct.bpf_verifier_env** %7, align 8
  %10 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %11 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %10)
  %12 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %11, i64 %16
  store %struct.bpf_reg_state* %17, %struct.bpf_reg_state** %8, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %19 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %18)
  %20 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %19, i64 %24
  store %struct.bpf_reg_state* %25, %struct.bpf_reg_state** %9, align 8
  %26 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %27 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %33 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %34 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pr_vlog(%struct.bpf_verifier_env* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %96

39:                                               ; preds = %3
  %40 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %41 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SCALAR_VALUE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %47 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %48 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pr_vlog(%struct.bpf_verifier_env* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %96

53:                                               ; preds = %39
  %54 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %55 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 65535
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %61 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 65535
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i1 [ true, %53 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %69 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %73 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %77 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %75, %80
  %82 = icmp sle i32 %81, 65535
  %83 = zext i1 %82 to i32
  %84 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %85 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %89 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %90 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %91 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %92 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @nfp_bpf_check_ptr(%struct.nfp_prog* %88, %struct.nfp_insn_meta* %89, %struct.bpf_verifier_env* %90, i32 %94)
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %65, %45, %31
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i64) #1

declare dso_local i32 @nfp_bpf_check_ptr(%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_verifier_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
