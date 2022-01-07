; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_map_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_map_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { i32, i32 }
%struct.bpf_offloaded_map = type { %struct.TYPE_2__, %struct.nfp_bpf_map* }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_bpf_map = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app_bpf*, %struct.bpf_offloaded_map*)* @nfp_bpf_map_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_map_free(%struct.nfp_app_bpf* %0, %struct.bpf_offloaded_map* %1) #0 {
  %3 = alloca %struct.nfp_app_bpf*, align 8
  %4 = alloca %struct.bpf_offloaded_map*, align 8
  %5 = alloca %struct.nfp_bpf_map*, align 8
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %3, align 8
  store %struct.bpf_offloaded_map* %1, %struct.bpf_offloaded_map** %4, align 8
  %6 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %6, i32 0, i32 1
  %8 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %7, align 8
  store %struct.nfp_bpf_map* %8, %struct.nfp_bpf_map** %5, align 8
  %9 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %10 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %11 = call i32 @nfp_bpf_ctrl_free_map(%struct.nfp_app_bpf* %9, %struct.nfp_bpf_map* %10)
  %12 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_consume_skb_any(i32 %14)
  %16 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %17 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_bpf_map, %struct.nfp_bpf_map* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %3, align 8
  %34 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.nfp_bpf_map*, %struct.nfp_bpf_map** %5, align 8
  %38 = call i32 @kfree(%struct.nfp_bpf_map* %37)
  ret i32 0
}

declare dso_local i32 @nfp_bpf_ctrl_free_map(%struct.nfp_app_bpf*, %struct.nfp_bpf_map*) #1

declare dso_local i32 @dev_consume_skb_any(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.nfp_bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
