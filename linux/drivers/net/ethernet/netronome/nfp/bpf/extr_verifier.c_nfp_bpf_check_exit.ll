; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_check_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i64 }
%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_XDP = common dso_local global i64 0, align 8
@SCALAR_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"unsupported exit state: %d, var_off: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_SCHED_CLS = common dso_local global i64 0, align 8
@TC_ACT_REDIRECT = common dso_local global i8* null, align 8
@TC_ACT_SHOT = common dso_local global i8* null, align 8
@TC_ACT_STOLEN = common dso_local global i8* null, align 8
@TC_ACT_QUEUED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"unsupported exit state: %d, imm: %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.bpf_verifier_env*)* @nfp_bpf_check_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_check_exit(%struct.nfp_prog* %0, %struct.bpf_verifier_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [48 x i8], align 16
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.bpf_verifier_env* %1, %struct.bpf_verifier_env** %5, align 8
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %10 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %9)
  %11 = load i32, i32* @BPF_REG_0, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %10, i64 %12
  store %struct.bpf_reg_state* %13, %struct.bpf_reg_state** %6, align 8
  %14 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BPF_PROG_TYPE_XDP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SCALAR_VALUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @tnum_is_const(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %26, %20
  %34 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %36 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @tnum_strn(i8* %34, i32 48, i8* %38)
  %40 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %41 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %42 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %45 = call i32 @pr_vlog(%struct.bpf_verifier_env* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %43, i8* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %84

48:                                               ; preds = %26
  %49 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %50 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %7, align 8
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %54 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BPF_PROG_TYPE_SCHED_CLS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %48
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** @TC_ACT_REDIRECT, align 8
  %61 = icmp ule i8* %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** @TC_ACT_SHOT, align 8
  %65 = icmp ne i8* %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** @TC_ACT_STOLEN, align 8
  %69 = icmp ne i8* %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** @TC_ACT_QUEUED, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %76 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %77 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @pr_vlog(%struct.bpf_verifier_env* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %78, i8* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %70, %66, %62, %58, %48
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %74, %33, %19
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i64 @tnum_is_const(i8*) #1

declare dso_local i32 @tnum_strn(i8*, i32, i8*) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
