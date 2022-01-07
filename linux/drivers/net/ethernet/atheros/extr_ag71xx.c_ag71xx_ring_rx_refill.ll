; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_rx_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_ring_rx_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, %struct.ag71xx_ring }
%struct.ag71xx_ring = type { i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ag71xx_desc = type { i32 }

@napi_alloc_frag = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%u rx descriptors refilled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_ring_rx_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_ring_rx_refill(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ag71xx_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %10 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %9, i32 0, i32 2
  store %struct.ag71xx_ring* %10, %struct.ag71xx_ring** %3, align 8
  %11 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %12 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @BIT(i32 %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %67, %1
  %20 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %24 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %22, %26
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %19
  %30 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %31 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %35, i32 %36)
  store %struct.ag71xx_desc* %37, %struct.ag71xx_desc** %7, align 8
  %38 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %39 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %29
  %49 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %50 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %51 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @napi_alloc_frag, align 4
  %58 = call i32 @ag71xx_fill_rx_buf(%struct.ag71xx* %49, %struct.TYPE_4__* %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %72

61:                                               ; preds = %48, %29
  %62 = load i32, i32* @DESC_EMPTY, align 4
  %63 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %7, align 8
  %64 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %3, align 8
  %69 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %19

72:                                               ; preds = %60, %19
  %73 = call i32 (...) @wmb()
  %74 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %75 = load i32, i32* @rx_status, align 4
  %76 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %77 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @netif_dbg(%struct.ag71xx* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_fill_rx_buf(%struct.ag71xx*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_dbg(%struct.ag71xx*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
