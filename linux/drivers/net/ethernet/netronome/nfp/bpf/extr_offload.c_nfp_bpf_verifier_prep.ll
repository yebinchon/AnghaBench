; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_verifier_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_verifier_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.nfp_prog* }
%struct.nfp_prog = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*)* @nfp_bpf_verifier_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_verifier_prep(%struct.bpf_prog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfp_prog* @kzalloc(i32 16, i32 %6)
  store %struct.nfp_prog* %7, %struct.nfp_prog** %4, align 8
  %8 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %9 = icmp ne %struct.nfp_prog* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %struct.nfp_prog* %14, %struct.nfp_prog** %20, align 8
  %21 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %22 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %21, i32 0, i32 3
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %28 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %30 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bpf_offload_dev_priv(i32 %35)
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %38 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %41 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %44 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nfp_prog_prepare(%struct.nfp_prog* %39, i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %13
  br label %55

50:                                               ; preds = %13
  %51 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %52 = call i32 @nfp_prog_first_meta(%struct.nfp_prog* %51)
  %53 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %54 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %49
  %56 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %57 = call i32 @nfp_prog_free(%struct.nfp_prog* %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %50, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.nfp_prog* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bpf_offload_dev_priv(i32) #1

declare dso_local i32 @nfp_prog_prepare(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @nfp_prog_first_meta(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_prog_free(%struct.nfp_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
