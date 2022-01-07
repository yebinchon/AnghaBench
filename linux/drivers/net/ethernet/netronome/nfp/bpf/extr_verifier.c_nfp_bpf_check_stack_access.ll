; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_stack_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_stack_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bpf_reg_state = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.bpf_verifier_env = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@FLAG_INSN_PTR_CALLER_STACK_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"variable ptr stack access\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NOT_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"stack access changed location was:%d is:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_reg_state*, %struct.bpf_verifier_env*)* @nfp_bpf_check_stack_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_check_stack_access(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, %struct.bpf_reg_state* %2, %struct.bpf_verifier_env* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.bpf_verifier_env*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %7, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %8, align 8
  store %struct.bpf_verifier_env* %3, %struct.bpf_verifier_env** %9, align 8
  %12 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %13 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %9, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* @FLAG_INSN_PTR_CALLER_STACK_FRAME, align 4
  %23 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %24 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %4
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %29 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tnum_is_const(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %9, align 8
  %36 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %93

39:                                               ; preds = %27
  %40 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %41 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NOT_INIT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %93

47:                                               ; preds = %39
  %48 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %49 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %53 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %59 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %62 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %71 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %75 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %93

79:                                               ; preds = %47
  %80 = load i32, i32* %10, align 4
  %81 = srem i32 %80, 4
  %82 = load i32, i32* %11, align 4
  %83 = srem i32 %82, 4
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %93

86:                                               ; preds = %79
  %87 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %86, %85, %78, %46, %34
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @tnum_is_const(i32) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
