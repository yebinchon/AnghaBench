; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_event_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_event_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { i32 }
%struct.cmsg_bpf_event = type { i32*, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_bpf_neutral_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_CCM_ABI_VERSION = common dso_local global i64 0, align 8
@nfp_bpf_maps_neutral_params = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"perf event: map id %lld (0x%llx) not recognized, dropping event\0A\00", align 1
@nfp_bpf_perf_event_copy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_bpf_event_output(%struct.nfp_app_bpf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app_bpf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmsg_bpf_event*, align 8
  %9 = alloca %struct.nfp_bpf_neutral_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.cmsg_bpf_event*
  store %struct.cmsg_bpf_event* %15, %struct.cmsg_bpf_event** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, 40
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %101

22:                                               ; preds = %3
  %23 = load %struct.cmsg_bpf_event*, %struct.cmsg_bpf_event** %8, align 8
  %24 = getelementptr inbounds %struct.cmsg_bpf_event, %struct.cmsg_bpf_event* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @be32_to_cpu(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.cmsg_bpf_event*, %struct.cmsg_bpf_event** %8, align 8
  %28 = getelementptr inbounds %struct.cmsg_bpf_event, %struct.cmsg_bpf_event* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.cmsg_bpf_event*, %struct.cmsg_bpf_event** %8, align 8
  %32 = getelementptr inbounds %struct.cmsg_bpf_event, %struct.cmsg_bpf_event* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @be64_to_cpu(i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 40, %40
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %41, %43
  %45 = icmp ult i64 %38, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %22
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %101

49:                                               ; preds = %22
  %50 = load %struct.cmsg_bpf_event*, %struct.cmsg_bpf_event** %8, align 8
  %51 = getelementptr inbounds %struct.cmsg_bpf_event, %struct.cmsg_bpf_event* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NFP_CCM_ABI_VERSION, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %101

59:                                               ; preds = %49
  %60 = call i32 (...) @rcu_read_lock()
  %61 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %5, align 8
  %62 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %61, i32 0, i32 0
  %63 = load i32, i32* @nfp_bpf_maps_neutral_params, align 4
  %64 = call %struct.nfp_bpf_neutral_map* @rhashtable_lookup_fast(i32* %62, i32* %12, i32 %63)
  store %struct.nfp_bpf_neutral_map* %64, %struct.nfp_bpf_neutral_map** %9, align 8
  %65 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %9, align 8
  %66 = icmp ne %struct.nfp_bpf_neutral_map* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @U32_MAX, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67, %59
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %5, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @cmsg_warn(%struct.nfp_app_bpf* %73, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %101

79:                                               ; preds = %67
  %80 = load %struct.nfp_bpf_neutral_map*, %struct.nfp_bpf_neutral_map** %9, align 8
  %81 = getelementptr inbounds %struct.nfp_bpf_neutral_map, %struct.nfp_bpf_neutral_map* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cmsg_bpf_event*, %struct.cmsg_bpf_event** %8, align 8
  %84 = getelementptr inbounds %struct.cmsg_bpf_event, %struct.cmsg_bpf_event* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = load %struct.cmsg_bpf_event*, %struct.cmsg_bpf_event** %8, align 8
  %88 = getelementptr inbounds %struct.cmsg_bpf_event, %struct.cmsg_bpf_event* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @round_up(i32 %90, i32 4)
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.cmsg_bpf_event*, %struct.cmsg_bpf_event** %8, align 8
  %95 = getelementptr inbounds %struct.cmsg_bpf_event, %struct.cmsg_bpf_event* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @nfp_bpf_perf_event_copy, align 4
  %99 = call i32 @bpf_event_output(i32 %82, i32 %86, i32* %92, i32 %93, i32* %96, i32 %97, i32 %98)
  %100 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %79, %71, %56, %46, %19
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfp_bpf_neutral_map* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cmsg_warn(%struct.nfp_app_bpf*, i8*, i64, i64) #1

declare dso_local i32 @bpf_event_output(i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
