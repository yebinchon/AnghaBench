; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_mul_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_mul_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@MUL_TYPE_START = common dso_local global i32 0, align 4
@MUL_STEP_NONE = common dso_local global i32 0, align 4
@MUL_TYPE_STEP_32x32 = common dso_local global i32 0, align 4
@MUL_STEP_1 = common dso_local global i32 0, align 4
@MUL_STEP_2 = common dso_local global i32 0, align 4
@MUL_STEP_3 = common dso_local global i32 0, align 4
@MUL_STEP_4 = common dso_local global i32 0, align 4
@MUL_LAST = common dso_local global i32 0, align 4
@MUL_LAST_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32, i32)* @wrp_mul_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrp_mul_u32(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nfp_prog*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @MUL_TYPE_START, align 4
  %16 = load i32, i32* @MUL_STEP_NONE, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @emit_mul(%struct.nfp_prog* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MUL_TYPE_STEP_32x32, align 4
  %22 = load i32, i32* @MUL_STEP_1, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @emit_mul(%struct.nfp_prog* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MUL_TYPE_STEP_32x32, align 4
  %28 = load i32, i32* @MUL_STEP_2, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @emit_mul(%struct.nfp_prog* %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MUL_TYPE_STEP_32x32, align 4
  %34 = load i32, i32* @MUL_STEP_3, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @emit_mul(%struct.nfp_prog* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MUL_TYPE_STEP_32x32, align 4
  %40 = load i32, i32* @MUL_STEP_4, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @emit_mul(%struct.nfp_prog* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MUL_TYPE_STEP_32x32, align 4
  %46 = load i32, i32* @MUL_LAST, align 4
  %47 = call i32 (...) @reg_none()
  %48 = call i32 @emit_mul(%struct.nfp_prog* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %6
  %52 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @MUL_TYPE_STEP_32x32, align 4
  %55 = load i32, i32* @MUL_LAST_2, align 4
  %56 = call i32 (...) @reg_none()
  %57 = call i32 @emit_mul(%struct.nfp_prog* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %62

58:                                               ; preds = %6
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @wrp_immed(%struct.nfp_prog* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %58, %51
  ret void
}

declare dso_local i32 @emit_mul(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
