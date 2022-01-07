; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64, %struct.nfp_prog*, i32 }
%struct.nfp_prog = type { i32, i32, i32, i64 }
%struct.nfp_net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_MAX_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*)* @nfp_bpf_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_translate(%struct.bpf_prog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %8 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.nfp_net* @netdev_priv(i32 %14)
  store %struct.nfp_net* %15, %struct.nfp_net** %4, align 8
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %21, align 8
  store %struct.nfp_prog* %22, %struct.nfp_prog** %5, align 8
  %23 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %93

34:                                               ; preds = %1
  %35 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %36 = load i32, i32* @NFP_NET_CFG_BPF_MAX_LEN, align 4
  %37 = call i32 @nn_readw(%struct.nfp_net* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %43 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %45 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i64 @kvmalloc(i32 %46, i32 %47)
  %49 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %50 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %52 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %34
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %93

58:                                               ; preds = %34
  %59 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %60 = call i32 @nfp_bpf_jit(%struct.nfp_prog* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %93

65:                                               ; preds = %58
  %66 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %67 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %73 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 8
  %78 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %79 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %82 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 %80, i64* %86, align 8
  %87 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %88 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %91 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %92 = call i32 @nfp_map_ptrs_record(i32 %89, %struct.nfp_prog* %90, %struct.bpf_prog* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %65, %63, %55, %31
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.nfp_net* @netdev_priv(i32) #1

declare dso_local i32 @nn_readw(%struct.nfp_net*, i32) #1

declare dso_local i64 @kvmalloc(i32, i32) #1

declare dso_local i32 @nfp_bpf_jit(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_map_ptrs_record(i32, %struct.nfp_prog*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
