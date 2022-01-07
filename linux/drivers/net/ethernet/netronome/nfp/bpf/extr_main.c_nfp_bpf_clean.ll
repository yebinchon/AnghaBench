; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_app_bpf* }
%struct.nfp_app_bpf = type { i32, i64, i64, i32, i32, i32 }

@nfp_check_rhashtable_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*)* @nfp_bpf_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_bpf_clean(%struct.nfp_app* %0) #0 {
  %2 = alloca %struct.nfp_app*, align 8
  %3 = alloca %struct.nfp_app_bpf*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %2, align 8
  %4 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %4, i32 0, i32 0
  %6 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %5, align 8
  store %struct.nfp_app_bpf* %6, %struct.nfp_app_bpf** %3, align 8
  %7 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @bpf_offload_dev_destroy(i32 %9)
  %11 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %11, i32 0, i32 4
  %13 = call i32 @nfp_ccm_clean(i32* %12)
  %14 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %14, i32 0, i32 3
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %27 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %1
  %31 = phi i1 [ true, %1 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %34, i32 0, i32 0
  %36 = load i32, i32* @nfp_check_rhashtable_empty, align 4
  %37 = call i32 @rhashtable_free_and_destroy(i32* %35, i32 %36, i32* null)
  %38 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %39 = call i32 @kfree(%struct.nfp_app_bpf* %38)
  ret void
}

declare dso_local i32 @bpf_offload_dev_destroy(i32) #1

declare dso_local i32 @nfp_ccm_clean(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rhashtable_free_and_destroy(i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.nfp_app_bpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
