; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_alloc_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_alloc_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MAX_TX_HELD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_hw*, i32, i32)* @hw_alloc_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_alloc_pkt(%struct.ksz_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %9 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

14:                                               ; preds = %3
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 1
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = call i32 @get_tx_pkt(%struct.TYPE_9__* %16, %struct.TYPE_10__** %19)
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %40 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_TX_HELD_SIZE, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %14
  %45 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %50 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %14
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %54 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %61 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %58, %13
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @get_tx_pkt(%struct.TYPE_9__*, %struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
