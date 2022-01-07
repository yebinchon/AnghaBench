; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, i32, %struct.TYPE_7__*, %struct.bpf_subprog_info* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.nfp_prog* }
%struct.nfp_prog = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.bpf_subprog_info = type { i32 }
%struct.nfp_net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_WIDTH = common dso_local global i64 0, align 8
@BPF_REG_SIZE = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_STACK_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"stack too large: program %dB > FW stack %dB\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_bpf_finalize(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_subprog_info*, align 8
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_net*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.nfp_prog*, %struct.nfp_prog** %16, align 8
  store %struct.nfp_prog* %17, %struct.nfp_prog** %5, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %22 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %24 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.TYPE_8__* @kcalloc(i32 %25, i32 16, i32 %26)
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %29 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %28, i32 0, i32 2
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %31 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %144

37:                                               ; preds = %1
  %38 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %39 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %40 = call i32 @nfp_assign_subprog_idx_and_regs(%struct.bpf_verifier_env* %38, %struct.nfp_prog* %39)
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %42 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %41, i32 0, i32 3
  %43 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %42, align 8
  store %struct.bpf_subprog_info* %43, %struct.bpf_subprog_info** %4, align 8
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %102, %37
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %47 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %105

50:                                               ; preds = %44
  %51 = load %struct.bpf_subprog_info*, %struct.bpf_subprog_info** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.bpf_subprog_info, %struct.bpf_subprog_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %58 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %56, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %102

67:                                               ; preds = %50
  %68 = load i64, i64* @REG_WIDTH, align 8
  %69 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %70 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %68
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %81 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %80, i32 0, i32 2
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %67
  %90 = load i32, i32* @BPF_REG_SIZE, align 4
  %91 = mul nsw i32 %90, 4
  %92 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %93 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %92, i32 0, i32 2
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %91
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %89, %67
  br label %102

102:                                              ; preds = %101, %66
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %44

105:                                              ; preds = %44
  %106 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %107 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.nfp_net* @netdev_priv(i32 %114)
  store %struct.nfp_net* %115, %struct.nfp_net** %7, align 8
  %116 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %117 = load i32, i32* @NFP_NET_CFG_BPF_STACK_SZ, align 4
  %118 = call i32 @nn_readb(%struct.nfp_net* %116, i32 %117)
  %119 = mul nsw i32 %118, 64
  store i32 %119, i32* %6, align 4
  %120 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %121 = call i32 @nfp_bpf_get_stack_usage(%struct.nfp_prog* %120)
  %122 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %123 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %125 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %105
  %130 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %131 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %132 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @pr_vlog(%struct.bpf_verifier_env* %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* @EOPNOTSUPP, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %144

138:                                              ; preds = %105
  %139 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %140 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %141 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @nfp_bpf_insn_flag_zext(%struct.nfp_prog* %139, i32 %142)
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %138, %129, %34
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_8__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nfp_assign_subprog_idx_and_regs(%struct.bpf_verifier_env*, %struct.nfp_prog*) #1

declare dso_local %struct.nfp_net* @netdev_priv(i32) #1

declare dso_local i32 @nn_readb(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_bpf_get_stack_usage(%struct.nfp_prog*) #1

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i32, i32) #1

declare dso_local i32 @nfp_bpf_insn_flag_zext(%struct.nfp_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
