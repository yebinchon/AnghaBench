; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_stack_arg_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_stack_arg_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nfp_bpf_reg_state = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PTR_TO_STACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: unsupported ptr type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: variable pointer\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: unaligned stack pointer %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.bpf_verifier_env*, %struct.bpf_reg_state*, %struct.nfp_bpf_reg_state*)* @nfp_bpf_stack_arg_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_stack_arg_ok(i8* %0, %struct.bpf_verifier_env* %1, %struct.bpf_reg_state* %2, %struct.nfp_bpf_reg_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca %struct.nfp_bpf_reg_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.bpf_verifier_env* %1, %struct.bpf_verifier_env** %7, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %8, align 8
  store %struct.nfp_bpf_reg_state* %3, %struct.nfp_bpf_reg_state** %9, align 8
  %12 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %13 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PTR_TO_STACK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %21 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (%struct.bpf_verifier_env*, i8*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %22)
  store i32 0, i32* %5, align 4
  br label %77

24:                                               ; preds = %4
  %25 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @tnum_is_const(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (%struct.bpf_verifier_env*, i8*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 0, i32* %5, align 4
  br label %77

35:                                               ; preds = %24
  %36 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %37 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %41 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 0, %44
  %46 = srem i32 %45, 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i32 (%struct.bpf_verifier_env*, i8*, i8*, ...) @pr_vlog(%struct.bpf_verifier_env* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %52)
  store i32 0, i32* %5, align 4
  br label %77

54:                                               ; preds = %35
  %55 = load %struct.nfp_bpf_reg_state*, %struct.nfp_bpf_reg_state** %9, align 8
  %56 = icmp ne %struct.nfp_bpf_reg_state* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %77

58:                                               ; preds = %54
  %59 = load %struct.nfp_bpf_reg_state*, %struct.nfp_bpf_reg_state** %9, align 8
  %60 = getelementptr inbounds %struct.nfp_bpf_reg_state, %struct.nfp_bpf_reg_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nfp_bpf_reg_state*, %struct.nfp_bpf_reg_state** %9, align 8
  %65 = getelementptr inbounds %struct.nfp_bpf_reg_state, %struct.nfp_bpf_reg_state* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %63, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load %struct.nfp_bpf_reg_state*, %struct.nfp_bpf_reg_state** %9, align 8
  %74 = getelementptr inbounds %struct.nfp_bpf_reg_state, %struct.nfp_bpf_reg_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %58, %57, %48, %31, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i8*, ...) #1

declare dso_local i32 @tnum_is_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
