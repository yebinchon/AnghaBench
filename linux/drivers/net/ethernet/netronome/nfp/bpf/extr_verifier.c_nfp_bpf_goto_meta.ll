; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_goto_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_goto_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_insn_meta* @nfp_bpf_goto_meta(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @min(i32 %20, i32 %21)
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %24 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub i32 %25, %26
  %28 = sub i32 %27, 1
  %29 = icmp ugt i32 %22, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %3
  %31 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %32 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %33, %34
  %36 = sub i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %38 = call %struct.nfp_insn_meta* @nfp_prog_last_meta(%struct.nfp_prog* %37)
  store %struct.nfp_insn_meta* %38, %struct.nfp_insn_meta** %5, align 8
  br label %39

39:                                               ; preds = %30, %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %52 = call %struct.nfp_insn_meta* @nfp_prog_first_meta(%struct.nfp_prog* %51)
  store %struct.nfp_insn_meta* %52, %struct.nfp_insn_meta** %5, align 8
  br label %53

53:                                               ; preds = %49, %45, %39
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %65, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %64 = call %struct.nfp_insn_meta* @nfp_meta_next(%struct.nfp_insn_meta* %63)
  store %struct.nfp_insn_meta* %64, %struct.nfp_insn_meta** %5, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %58

68:                                               ; preds = %58
  br label %81

69:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %77, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %76 = call %struct.nfp_insn_meta* @nfp_meta_prev(%struct.nfp_insn_meta* %75)
  store %struct.nfp_insn_meta* %76, %struct.nfp_insn_meta** %5, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %70

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %68
  %82 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  ret %struct.nfp_insn_meta* %82
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.nfp_insn_meta* @nfp_prog_last_meta(%struct.nfp_prog*) #1

declare dso_local %struct.nfp_insn_meta* @nfp_prog_first_meta(%struct.nfp_prog*) #1

declare dso_local %struct.nfp_insn_meta* @nfp_meta_next(%struct.nfp_insn_meta*) #1

declare dso_local %struct.nfp_insn_meta* @nfp_meta_prev(%struct.nfp_insn_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
