; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_record_adjust_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_record_adjust_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.bpf_reg_state = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@SCALAR_VALUE = common dso_local global i64 0, align 8
@ETH_ZLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app_bpf*, %struct.nfp_prog*, %struct.nfp_insn_meta*, %struct.bpf_reg_state*)* @nfp_record_adjust_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_record_adjust_head(%struct.nfp_app_bpf* %0, %struct.nfp_prog* %1, %struct.nfp_insn_meta* %2, %struct.bpf_reg_state* %3) #0 {
  %5 = alloca %struct.nfp_app_bpf*, align 8
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca %struct.nfp_insn_meta*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %5, align 8
  store %struct.nfp_prog* %1, %struct.nfp_prog** %6, align 8
  store %struct.nfp_insn_meta* %2, %struct.nfp_insn_meta** %7, align 8
  store %struct.bpf_reg_state* %3, %struct.bpf_reg_state** %8, align 8
  %11 = load i32, i32* @UINT_MAX, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %13 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCALAR_VALUE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %19 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @tnum_is_const(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %4
  br label %82

25:                                               ; preds = %17
  %26 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %27 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ETH_ZLEN, align 4
  %32 = load i32, i32* @ETH_HLEN, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %82

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %5, align 8
  %39 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp sgt i32 %37, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %5, align 8
  %47 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 0, %49
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %36
  br label %82

53:                                               ; preds = %44
  %54 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %55 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %60 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %63 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %82

67:                                               ; preds = %58
  %68 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %69 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %82

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %53
  %79 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %7, align 8
  %80 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %76, %66, %52, %35, %24
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %85 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  ret void
}

declare dso_local i32 @tnum_is_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
