; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx_data_from_pktcache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_ldx_data_from_pktcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@REG_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32)* @mem_ldx_data_from_pktcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_ldx_data_from_pktcache(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %10 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %12, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @REG_WIDTH, align 4
  %20 = call i64 @IS_ALIGNED(i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %24 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mem_ldx_data_from_pktcache_aligned(%struct.nfp_prog* %23, %struct.nfp_insn_meta* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %29 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mem_ldx_data_from_pktcache_unaligned(%struct.nfp_prog* %28, %struct.nfp_insn_meta* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @mem_ldx_data_from_pktcache_aligned(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

declare dso_local i32 @mem_ldx_data_from_pktcache_unaligned(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
