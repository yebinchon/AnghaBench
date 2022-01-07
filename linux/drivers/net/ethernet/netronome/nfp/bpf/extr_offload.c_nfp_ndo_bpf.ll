; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_ndo_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_ndo_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_net = type { i32 }
%struct.netdev_bpf = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_ndo_bpf(%struct.nfp_app* %0, %struct.nfp_net* %1, %struct.netdev_bpf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.netdev_bpf*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %6, align 8
  store %struct.netdev_bpf* %2, %struct.netdev_bpf** %7, align 8
  %8 = load %struct.netdev_bpf*, %struct.netdev_bpf** %7, align 8
  %9 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %27 [
    i32 129, label %11
    i32 128, label %19
  ]

11:                                               ; preds = %3
  %12 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.netdev_bpf*, %struct.netdev_bpf** %7, align 8
  %16 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nfp_bpf_map_alloc(i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.netdev_bpf*, %struct.netdev_bpf** %7, align 8
  %24 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nfp_bpf_map_free(i32 %22, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %19, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @nfp_bpf_map_alloc(i32, i32) #1

declare dso_local i32 @nfp_bpf_map_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
