; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_pop_callee_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_pop_callee_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@BPF_REG_6 = common dso_local global i64 0, align 8
@BPF_REG_9 = common dso_local global i64 0, align 8
@BPF_REG_0 = common dso_local global i64 0, align 8
@BPF_REG_8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*)* @nfp_pop_callee_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_pop_callee_registers(%struct.nfp_prog* %0) #0 {
  %2 = alloca %struct.nfp_prog*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %2, align 8
  %6 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %7 = call i32 @nfp_prog_current_offset(%struct.nfp_prog* %6)
  %8 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %9 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i64, i64* @BPF_REG_6, align 8
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @BPF_REG_9, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @BPF_REG_0, align 8
  %18 = sub nsw i64 %16, %17
  %19 = mul nsw i64 %18, 2
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @BPF_REG_6, align 8
  %22 = sub nsw i64 %20, %21
  %23 = mul nsw i64 %22, 2
  store i64 %23, i64* %5, align 8
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @reg_both(i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 1, %27
  %29 = call i32 @reg_lm(i32 0, i64 %28)
  %30 = call i32 @wrp_mov(%struct.nfp_prog* %24, i32 %26, i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @BPF_REG_8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %15
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %36 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %37 = call i32 @ret_reg(%struct.nfp_prog* %36)
  %38 = call i32 @emit_rtn(%struct.nfp_prog* %35, i32 %37, i32 3)
  br label %39

39:                                               ; preds = %34, %15
  %40 = load %struct.nfp_prog*, %struct.nfp_prog** %2, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @reg_both(i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 1, %44
  %46 = add nsw i64 %45, 1
  %47 = call i32 @reg_lm(i32 0, i64 %46)
  %48 = call i32 @wrp_mov(%struct.nfp_prog* %40, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %3, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %11

52:                                               ; preds = %11
  ret void
}

declare dso_local i32 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_both(i64) #1

declare dso_local i32 @reg_lm(i32, i64) #1

declare dso_local i32 @emit_rtn(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @ret_reg(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
