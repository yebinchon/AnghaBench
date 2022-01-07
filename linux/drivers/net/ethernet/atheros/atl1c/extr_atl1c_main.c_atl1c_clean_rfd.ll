; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_rfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_rfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_rfd_ring = type { i64, i64, %struct.atl1c_buffer* }
%struct.atl1c_buffer = type { i32* }
%struct.atl1c_recv_ret_status = type { i64 }

@RRS_RX_RFD_INDEX_SHIFT = common dso_local global i64 0, align 8
@RRS_RX_RFD_INDEX_MASK = common dso_local global i64 0, align 8
@ATL1C_BUFFER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_rfd_ring*, %struct.atl1c_recv_ret_status*, i64)* @atl1c_clean_rfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_clean_rfd(%struct.atl1c_rfd_ring* %0, %struct.atl1c_recv_ret_status* %1, i64 %2) #0 {
  %4 = alloca %struct.atl1c_rfd_ring*, align 8
  %5 = alloca %struct.atl1c_recv_ret_status*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.atl1c_buffer*, align 8
  store %struct.atl1c_rfd_ring* %0, %struct.atl1c_rfd_ring** %4, align 8
  store %struct.atl1c_recv_ret_status* %1, %struct.atl1c_recv_ret_status** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %11 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %10, i32 0, i32 2
  %12 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %11, align 8
  store %struct.atl1c_buffer* %12, %struct.atl1c_buffer** %9, align 8
  %13 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %5, align 8
  %14 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RRS_RX_RFD_INDEX_SHIFT, align 8
  %17 = ashr i64 %15, %16
  %18 = load i64, i64* @RRS_RX_RFD_INDEX_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %42, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %25, i64 %26
  %28 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %29, i64 %30
  %32 = load i32, i32* @ATL1C_BUFFER_FREE, align 4
  %33 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %31, i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %8, align 8
  %36 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %37 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %40, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %20

45:                                               ; preds = %20
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.atl1c_rfd_ring*, %struct.atl1c_rfd_ring** %4, align 8
  %48 = getelementptr inbounds %struct.atl1c_rfd_ring, %struct.atl1c_rfd_ring* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  ret void
}

declare dso_local i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
