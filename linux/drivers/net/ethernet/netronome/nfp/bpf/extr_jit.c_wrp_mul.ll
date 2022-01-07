; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i64, i64, %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32, i64 }

@U16_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i32)* @wrp_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrp_mul(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_insn*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %19 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %18, i32 0, i32 2
  store %struct.bpf_insn* %19, %struct.bpf_insn** %13, align 8
  %20 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %21 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = mul nsw i32 %23, 2
  %25 = call i32 @reg_a(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %16, align 4
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %27, 1
  %29 = call i32 @reg_both(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %16, align 4
  %31 = mul nsw i32 %30, 2
  %32 = call i32 @reg_both(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %34 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %14, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %4
  %39 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %40 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 2
  %43 = call i32 @reg_b(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %45 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  br label %57

47:                                               ; preds = %4
  %48 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  %49 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %17, align 8
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %54 = call i32 @imm_b(%struct.nfp_prog* %53)
  %55 = call i32 @ur_load_imm_any(%struct.nfp_prog* %51, i64 %52, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i64, i64* %17, align 8
  store i64 %56, i64* %15, align 8
  br label %57

57:                                               ; preds = %47, %38
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @U16_MAX, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @U16_MAX, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61, %57
  %66 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @wrp_mul_u32(%struct.nfp_prog* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  br label %80

73:                                               ; preds = %61
  %74 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @wrp_mul_u16(%struct.nfp_prog* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %65
  ret i32 0
}

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i64, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_mul_u32(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_mul_u16(%struct.nfp_prog*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
