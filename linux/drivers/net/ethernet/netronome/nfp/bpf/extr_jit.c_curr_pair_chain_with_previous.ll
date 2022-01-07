; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_curr_pair_chain_with_previous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_curr_pair_chain_with_previous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_insn_meta = type { i32, %struct.bpf_insn }
%struct.bpf_insn = type { i64, i64, i64 }

@FLAG_INSN_IS_JUMP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_insn_meta*, %struct.nfp_insn_meta*, %struct.bpf_insn*, %struct.bpf_insn*)* @curr_pair_chain_with_previous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curr_pair_chain_with_previous(%struct.nfp_insn_meta* %0, %struct.nfp_insn_meta* %1, %struct.bpf_insn* %2, %struct.bpf_insn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca %struct.bpf_insn*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bpf_insn*, align 8
  %16 = alloca %struct.bpf_insn*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.nfp_insn_meta* %0, %struct.nfp_insn_meta** %6, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %7, align 8
  store %struct.bpf_insn* %2, %struct.bpf_insn** %8, align 8
  store %struct.bpf_insn* %3, %struct.bpf_insn** %9, align 8
  %19 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %19, i32 0, i32 1
  store %struct.bpf_insn* %20, %struct.bpf_insn** %15, align 8
  %21 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %22 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %21, i32 0, i32 1
  store %struct.bpf_insn* %22, %struct.bpf_insn** %16, align 8
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %24 = icmp ne %struct.bpf_insn* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %113

26:                                               ; preds = %4
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %28 = call i64 @BPF_LDST_BYTES(%struct.bpf_insn* %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %30 = call i64 @BPF_LDST_BYTES(%struct.bpf_insn* %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  %34 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %35 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %41 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %17, align 8
  %43 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %44 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %18, align 8
  %46 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %47 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %113

52:                                               ; preds = %26
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.bpf_insn*, %struct.bpf_insn** %16, align 8
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52
  store i32 0, i32* %5, align 4
  br label %113

65:                                               ; preds = %58
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %113

70:                                               ; preds = %65
  %71 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %72 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FLAG_INSN_IS_JUMP_DST, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %113

78:                                               ; preds = %70
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %79, %80
  %82 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %83 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.bpf_insn*, %struct.bpf_insn** %16, align 8
  %91 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 1, i32* %5, align 4
  br label %113

95:                                               ; preds = %86, %78
  %96 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %97 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* %17, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = load %struct.bpf_insn*, %struct.bpf_insn** %16, align 8
  %105 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i64, i64* %18, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 1, i32* %5, align 4
  br label %113

112:                                              ; preds = %103, %95
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %111, %94, %77, %69, %64, %51, %25
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @BPF_LDST_BYTES(%struct.bpf_insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
