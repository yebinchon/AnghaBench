; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_cmsg_cache_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_cmsg.c_nfp_bpf_ctrl_cmsg_cache_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app_bpf = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NFP_BPF_MAP_CACHE_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_bpf_ctrl_cmsg_cache_cnt(%struct.nfp_app_bpf* %0) #0 {
  %2 = alloca %struct.nfp_app_bpf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_app_bpf* %0, %struct.nfp_app_bpf** %2, align 8
  %7 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %2, align 8
  %8 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %2, align 8
  %16 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nfp_app_bpf*, %struct.nfp_app_bpf** %2, align 8
  %19 = getelementptr inbounds %struct.nfp_app_bpf, %struct.nfp_app_bpf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = sub i64 %23, 4
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = udiv i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = sub i64 %30, 4
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = udiv i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @NFP_BPF_MAP_CACHE_CNT, align 4
  %39 = call i32 @min3(i32 %36, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @min3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
