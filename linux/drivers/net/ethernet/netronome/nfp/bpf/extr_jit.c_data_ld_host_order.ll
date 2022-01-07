; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_data_ld_host_order.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_data_ld_host_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32 }

@CMD_TGT_READ32_SWAP = common dso_local global i32 0, align 4
@CMD_CTX_SWAP = common dso_local global i32 0, align 4
@SHF_SC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32, i32, i32, i32, i32)* @data_ld_host_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_ld_host_order(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nfp_prog*, align 8
  %9 = alloca %struct.nfp_insn_meta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %8, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @max(i32 %18, i32 4)
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @GENMASK(i32 %24, i32 0)
  br label %27

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 0, %26 ]
  store i32 %28, i32* %16, align 4
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %30 = load i32, i32* @CMD_TGT_READ32_SWAP, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %17, align 4
  %35 = sdiv i32 %34, 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @CMD_CTX_SWAP, align 4
  %38 = call i32 @emit_cmd(%struct.nfp_prog* %29, i32 %30, i32 %31, i32 0, i32 %32, i32 %33, i32 %36, i32 %37)
  store i32 0, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @reg_both(i32 %43)
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @reg_xfer(i32 0)
  %47 = load i32, i32* @SHF_SC_NONE, align 4
  %48 = call i32 @emit_ld_field_any(%struct.nfp_prog* %42, i32 %44, i32 %45, i32 %46, i32 %47, i32 0, i32 1)
  br label %68

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %15, align 4
  %52 = mul i32 %51, 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %15, align 4
  %59 = add i32 %57, %58
  %60 = call i32 @reg_both(i32 %59)
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @reg_xfer(i32 %61)
  %63 = call i32 @wrp_mov(%struct.nfp_prog* %56, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %15, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %50

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* %15, align 4
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.nfp_prog*, %struct.nfp_prog** %8, align 8
  %73 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @wrp_zext(%struct.nfp_prog* %72, %struct.nfp_insn_meta* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  ret i32 0
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @emit_cmd(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_ld_field_any(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @reg_xfer(i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @wrp_zext(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
