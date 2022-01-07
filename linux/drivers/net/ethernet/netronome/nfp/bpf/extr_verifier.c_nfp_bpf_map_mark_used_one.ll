; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_mark_used_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_verifier.c_nfp_bpf_map_mark_used_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.nfp_bpf_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@NFP_MAP_UNUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"map value use type conflict %s vs %s off: %u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_MAP_USE_ATOMIC_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"atomic counter in map value may already be initialized to non-zero value off: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.nfp_bpf_map*, i32, i32)* @nfp_bpf_map_mark_used_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_map_mark_used_one(%struct.bpf_verifier_env* %0, %struct.nfp_bpf_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.nfp_bpf_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store %struct.nfp_bpf_map* %1, %struct.nfp_bpf_map** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %11 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = udiv i32 %13, 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NFP_MAP_UNUSED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %4
  %22 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %23 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = udiv i32 %25, 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %21
  %35 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %36 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %37 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = udiv i32 %39, 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @nfp_bpf_map_use_name(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @nfp_bpf_map_use_name(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @pr_vlog(%struct.bpf_verifier_env* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48, i32 %49)
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %85

53:                                               ; preds = %21, %4
  %54 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %55 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = udiv i32 %57, 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @NFP_MAP_USE_ATOMIC_CNT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @pr_vlog(%struct.bpf_verifier_env* %69, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %85

74:                                               ; preds = %64, %53
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  %78 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = udiv i32 %80, 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %76, i64* %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %74, %68, %34
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @pr_vlog(%struct.bpf_verifier_env*, i8*, i32, ...) #1

declare dso_local i32 @nfp_bpf_map_use_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
