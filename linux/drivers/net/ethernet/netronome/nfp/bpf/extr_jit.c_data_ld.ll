; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_data_ld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_data_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32 }

@CMD_TGT_READ8 = common dso_local global i32 0, align 4
@CMD_MODE_32b = common dso_local global i32 0, align 4
@CMD_CTX_SWAP = common dso_local global i32 0, align 4
@SHF_OP_NONE = common dso_local global i32 0, align 4
@SHF_SC_R_SHF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i64, i32)* @data_ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_ld(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @max(i32 %14, i32 4)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 4, %19
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ %20, %18 ], [ 0, %21 ]
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %25 = load i32, i32* @CMD_TGT_READ8, align 4
  %26 = load i32, i32* @CMD_MODE_32b, align 4
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %28 = call i32 @pptr_reg(%struct.nfp_prog* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @CMD_CTX_SWAP, align 4
  %33 = call i32 @emit_cmd(%struct.nfp_prog* %24, i32 %25, i32 %26, i32 0, i32 %28, i32 %29, i32 %31, i32 %32)
  store i32 0, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %22
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @reg_both(i64 %38)
  %40 = call i32 (...) @reg_none()
  %41 = load i32, i32* @SHF_OP_NONE, align 4
  %42 = call i32 @reg_xfer(i32 0)
  %43 = load i32, i32* @SHF_SC_R_SHF, align 4
  %44 = load i32, i32* %12, align 4
  %45 = mul nsw i32 %44, 8
  %46 = call i32 @emit_shf(%struct.nfp_prog* %37, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %45)
  br label %67

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %11, align 4
  %50 = mul i32 %49, 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @reg_both(i64 %58)
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @reg_xfer(i32 %60)
  %62 = call i32 @wrp_mov(%struct.nfp_prog* %54, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %48

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %11, align 4
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %72 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @wrp_zext(%struct.nfp_prog* %71, %struct.nfp_insn_meta* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %67
  ret i32 0
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @emit_cmd(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pptr_reg(%struct.nfp_prog*) #1

declare dso_local i32 @emit_shf(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i64) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_xfer(i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_zext(%struct.nfp_prog*, %struct.nfp_insn_meta*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
