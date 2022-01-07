; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_tx_ring_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_tx_ring_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32, i32*, i32)* }
%struct.tx_ring_info = type { i32, i32, i64, i64, i64, i64, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Coherent alloc gives misaligned TXDMA mailbox %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Coherent alloc gives misaligned TXDMA descr table %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.tx_ring_info*)* @niu_alloc_tx_ring_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_alloc_tx_ring_info(%struct.niu* %0, %struct.tx_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.tx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.tx_ring_info* %1, %struct.tx_ring_info** %5, align 8
  %6 = call i32 @BUILD_BUG_ON(i32 1)
  %7 = load %struct.niu*, %struct.niu** %4, align 8
  %8 = getelementptr inbounds %struct.niu, %struct.niu* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %10, align 8
  %12 = load %struct.niu*, %struct.niu** %4, align 8
  %13 = getelementptr inbounds %struct.niu, %struct.niu* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %16 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %15, i32 0, i32 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 %11(i32 %14, i32 4, i32* %16, i32 %17)
  %19 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %20 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %19, i32 0, i32 7
  store i64 %18, i64* %20, align 8
  %21 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %22 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %105

28:                                               ; preds = %2
  %29 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %30 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, 63
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.niu*, %struct.niu** %4, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %39 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %105

44:                                               ; preds = %28
  %45 = load %struct.niu*, %struct.niu** %4, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %48, align 8
  %50 = load %struct.niu*, %struct.niu** %4, align 8
  %51 = getelementptr inbounds %struct.niu, %struct.niu* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MAX_TX_RING_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %58 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %57, i32 0, i32 6
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i64 %49(i32 %52, i32 %56, i32* %58, i32 %59)
  %61 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %62 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %64 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %44
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %105

70:                                               ; preds = %44
  %71 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %72 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, 63
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load %struct.niu*, %struct.niu** %4, align 8
  %78 = getelementptr inbounds %struct.niu, %struct.niu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %81 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @netdev_err(i32 %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %105

86:                                               ; preds = %70
  %87 = load i32, i32* @MAX_TX_RING_SIZE, align 4
  %88 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %89 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %91 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %93 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %95 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %97 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 4
  %100 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %101 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.niu*, %struct.niu** %4, align 8
  %103 = load %struct.tx_ring_info*, %struct.tx_ring_info** %5, align 8
  %104 = call i32 @niu_set_max_burst(%struct.niu* %102, %struct.tx_ring_info* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %86, %76, %67, %34, %25
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

declare dso_local i32 @niu_set_max_burst(%struct.niu*, %struct.tx_ring_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
