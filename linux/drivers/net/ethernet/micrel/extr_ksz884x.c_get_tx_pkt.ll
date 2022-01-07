; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_get_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_get_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_desc_info = type { i64, i64, i32, %struct.ksz_desc* }
%struct.ksz_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KS_DESC_TX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_desc_info*, %struct.ksz_desc**)* @get_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tx_pkt(%struct.ksz_desc_info* %0, %struct.ksz_desc** %1) #0 {
  %3 = alloca %struct.ksz_desc_info*, align 8
  %4 = alloca %struct.ksz_desc**, align 8
  store %struct.ksz_desc_info* %0, %struct.ksz_desc_info** %3, align 8
  store %struct.ksz_desc** %1, %struct.ksz_desc*** %4, align 8
  %5 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %6 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %5, i32 0, i32 3
  %7 = load %struct.ksz_desc*, %struct.ksz_desc** %6, align 8
  %8 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %9 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %7, i64 %10
  %12 = load %struct.ksz_desc**, %struct.ksz_desc*** %4, align 8
  store %struct.ksz_desc* %11, %struct.ksz_desc** %12, align 8
  %13 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %14 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %18 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %21 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %3, align 8
  %25 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @KS_DESC_TX_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ksz_desc**, %struct.ksz_desc*** %4, align 8
  %31 = load %struct.ksz_desc*, %struct.ksz_desc** %30, align 8
  %32 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %29
  store i32 %36, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
