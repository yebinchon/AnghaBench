; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_curr_pair_is_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_curr_pair_is_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_insn_meta = type { i32, %struct.TYPE_2__, %struct.bpf_insn }
%struct.TYPE_2__ = type { i64 }
%struct.bpf_insn = type { i64, i64, i32 }

@PTR_TO_PACKET = common dso_local global i64 0, align 8
@PTR_TO_MAP_VALUE = common dso_local global i64 0, align 8
@FLAG_INSN_IS_JUMP_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_insn_meta*, %struct.nfp_insn_meta*)* @curr_pair_is_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curr_pair_is_memcpy(%struct.nfp_insn_meta* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca %struct.bpf_insn*, align 8
  store %struct.nfp_insn_meta* %0, %struct.nfp_insn_meta** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %8 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %8, i32 0, i32 2
  store %struct.bpf_insn* %9, %struct.bpf_insn** %6, align 8
  %10 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %10, i32 0, i32 2
  store %struct.bpf_insn* %11, %struct.bpf_insn** %7, align 8
  %12 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %13 = call i32 @is_mbpf_load(%struct.nfp_insn_meta* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %17 = call i32 @is_mbpf_store(%struct.nfp_insn_meta* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %72

20:                                               ; preds = %15
  %21 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %22 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PTR_TO_PACKET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %29 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %72

35:                                               ; preds = %27, %20
  %36 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %37 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PTR_TO_PACKET, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %72

43:                                               ; preds = %35
  %44 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %45 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @BPF_SIZE(i32 %46)
  %48 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %49 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @BPF_SIZE(i32 %50)
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %72

54:                                               ; preds = %43
  %55 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %56 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %59 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %72

63:                                               ; preds = %54
  %64 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %65 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FLAG_INSN_IS_JUMP_DST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %72

71:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %70, %62, %53, %42, %34, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @is_mbpf_load(%struct.nfp_insn_meta*) #1

declare dso_local i32 @is_mbpf_store(%struct.nfp_insn_meta*) #1

declare dso_local i64 @BPF_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
