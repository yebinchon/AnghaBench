; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64, i64, i64, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ksz_desc* }
%struct.ksz_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@KS_DMA_TX_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @hw_send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_send_pkt(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca %struct.ksz_desc*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %4 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.ksz_desc*, %struct.ksz_desc** %6, align 8
  store %struct.ksz_desc* %7, %struct.ksz_desc** %3, align 8
  %8 = load %struct.ksz_desc*, %struct.ksz_desc** %3, align 8
  %9 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.ksz_desc*, %struct.ksz_desc** %3, align 8
  %22 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %20, %1
  %31 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ksz_desc*, %struct.ksz_desc** %3, align 8
  %35 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 %33, i32* %38, align 4
  %39 = load %struct.ksz_desc*, %struct.ksz_desc** %3, align 8
  %40 = call i32 @release_desc(%struct.ksz_desc* %39)
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KS_DMA_TX_START, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  ret void
}

declare dso_local i32 @release_desc(%struct.ksz_desc*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
