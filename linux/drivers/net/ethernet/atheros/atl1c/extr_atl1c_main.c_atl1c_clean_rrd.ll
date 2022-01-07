; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_rrd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_rrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_rrd_ring = type { i64, i64 }
%struct.atl1c_recv_ret_status = type { i32 }

@RRS_RXD_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_rrd_ring*, %struct.atl1c_recv_ret_status*, i64)* @atl1c_clean_rrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_clean_rrd(%struct.atl1c_rrd_ring* %0, %struct.atl1c_recv_ret_status* %1, i64 %2) #0 {
  %4 = alloca %struct.atl1c_rrd_ring*, align 8
  %5 = alloca %struct.atl1c_recv_ret_status*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.atl1c_rrd_ring* %0, %struct.atl1c_rrd_ring** %4, align 8
  store %struct.atl1c_recv_ret_status* %1, %struct.atl1c_recv_ret_status** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %31, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load i32, i32* @RRS_RXD_UPDATED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.atl1c_recv_ret_status*, %struct.atl1c_recv_ret_status** %5, align 8
  %16 = getelementptr inbounds %struct.atl1c_recv_ret_status, %struct.atl1c_recv_ret_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %4, align 8
  %20 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %4, align 8
  %24 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %4, align 8
  %29 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  %34 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %4, align 8
  %35 = load %struct.atl1c_rrd_ring*, %struct.atl1c_rrd_ring** %4, align 8
  %36 = getelementptr inbounds %struct.atl1c_rrd_ring, %struct.atl1c_rrd_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.atl1c_recv_ret_status* @ATL1C_RRD_DESC(%struct.atl1c_rrd_ring* %34, i64 %37)
  store %struct.atl1c_recv_ret_status* %38, %struct.atl1c_recv_ret_status** %5, align 8
  br label %8

39:                                               ; preds = %8
  ret void
}

declare dso_local %struct.atl1c_recv_ret_status* @ATL1C_RRD_DESC(%struct.atl1c_rrd_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
