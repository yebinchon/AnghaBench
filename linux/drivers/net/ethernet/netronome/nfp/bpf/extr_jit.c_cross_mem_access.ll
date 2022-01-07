; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_cross_mem_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_cross_mem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i64 }
%struct.nfp_insn_meta = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn*, %struct.nfp_insn_meta*, %struct.nfp_insn_meta*)* @cross_mem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cross_mem_access(%struct.bpf_insn* %0, %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bpf_insn* %0, %struct.bpf_insn** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store %struct.nfp_insn_meta* %2, %struct.nfp_insn_meta** %7, align 8
  %11 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %16 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  %22 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %23 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %27 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %85

32:                                               ; preds = %21
  %33 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %34 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %38 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  store i64 %41, i64* %8, align 8
  %42 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %43 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %47 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %45, %49
  store i64 %50, i64* %9, align 8
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %52 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %55 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %53, %57
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %32
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %85

71:                                               ; preds = %66, %62, %32
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp sle i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %85

84:                                               ; preds = %79, %75, %71
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %83, %70, %31, %20
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
