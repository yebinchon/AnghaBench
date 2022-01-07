; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_init_ring_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_init_ring_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.atl1c_rrd_ring, %struct.atl1c_rfd_ring, %struct.atl1c_tpd_ring* }
%struct.atl1c_rrd_ring = type { i64, i64 }
%struct.atl1c_rfd_ring = type { i32, %struct.atl1c_buffer*, i64, i64 }
%struct.atl1c_buffer = type { i32 }
%struct.atl1c_tpd_ring = type { i32, %struct.atl1c_buffer*, i32, i64 }

@AT_MAX_TRANSMIT_QUEUE = common dso_local global i32 0, align 4
@ATL1C_BUFFER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_init_ring_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_init_ring_ptrs(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_tpd_ring*, align 8
  %4 = alloca %struct.atl1c_rfd_ring*, align 8
  %5 = alloca %struct.atl1c_rrd_ring*, align 8
  %6 = alloca %struct.atl1c_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %9, i32 0, i32 2
  %11 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %10, align 8
  store %struct.atl1c_tpd_ring* %11, %struct.atl1c_tpd_ring** %3, align 8
  %12 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %12, i32 0, i32 1
  store %struct.atl1c_rfd_ring* %13, %struct.atl1c_rfd_ring** %4, align 8
  %14 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %14, i32 0, i32 0
  store %struct.atl1c_rrd_ring* %15, %struct.atl1c_rrd_ring** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %55, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AT_MAX_TRANSMIT_QUEUE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %16
  %21 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %21, i64 %23
  %25 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %26, i64 %28
  %30 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %29, i32 0, i32 2
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %32, i64 %34
  %36 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %35, i32 0, i32 1
  %37 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %36, align 8
  store %struct.atl1c_buffer* %37, %struct.atl1c_buffer** %6, align 8
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %51, %20
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %3, align 8
  %41 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %45, i64 %47
  %49 = load i32, i32* @ATL1C_BUFFER_FREE, align 4
  %50 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %48, i32 %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %38

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %16

58:                                               ; preds = %16
  %59 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %60 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %62 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %5, align 8
  %64 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %5, align 8
  %66 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %83, %58
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %70 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %75 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %74, i32 0, i32 1
  %76 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %76, i64 %78
  store %struct.atl1c_buffer* %79, %struct.atl1c_buffer** %6, align 8
  %80 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %6, align 8
  %81 = load i32, i32* @ATL1C_BUFFER_FREE, align 4
  %82 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %80, i32 %81)
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %67

86:                                               ; preds = %67
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
