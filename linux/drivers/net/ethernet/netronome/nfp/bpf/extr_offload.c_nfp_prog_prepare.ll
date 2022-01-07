; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_prog_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_prog_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32, i32 }
%struct.bpf_insn = type { i32 }
%struct.nfp_insn_meta = type { i32, i32, i8*, i8*, %struct.bpf_insn }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.bpf_insn*, i32)* @nfp_prog_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_prog_prepare(%struct.nfp_prog* %0, %struct.bpf_insn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_insn_meta*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %50, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nfp_insn_meta* @kzalloc(i32 32, i32 %15)
  store %struct.nfp_insn_meta* %16, %struct.nfp_insn_meta** %8, align 8
  %17 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %18 = icmp ne %struct.nfp_insn_meta* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %14
  %23 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %24 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %23, i32 0, i32 4
  %25 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %25, i64 %27
  %29 = bitcast %struct.bpf_insn* %24 to i8*
  %30 = bitcast %struct.bpf_insn* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %35 = call i64 @is_mbpf_alu(%struct.nfp_insn_meta* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load i8*, i8** @U64_MAX, align 8
  %39 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @U64_MAX, align 8
  %42 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %43 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %37, %22
  %45 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %8, align 8
  %46 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %45, i32 0, i32 1
  %47 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %48 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %47, i32 0, i32 1
  %49 = call i32 @list_add_tail(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %10

53:                                               ; preds = %10
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %56 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %58 = call i32 @nfp_bpf_jit_prepare(%struct.nfp_prog* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.nfp_insn_meta* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_mbpf_alu(%struct.nfp_insn_meta*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @nfp_bpf_jit_prepare(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
