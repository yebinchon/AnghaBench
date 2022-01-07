; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_reset_rx_buffers_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_reset_rx_buffers_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_recv_context* }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, i32, %struct.qlcnic_rx_buffer* }
%struct.qlcnic_rx_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_reset_rx_buffers_list(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_recv_context*, align 8
  %4 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %5 = alloca %struct.qlcnic_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  store %struct.qlcnic_recv_context* %10, %struct.qlcnic_recv_context** %3, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %3, align 8
  %19 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %18, i32 0, i32 0
  %20 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %20, i64 %22
  store %struct.qlcnic_host_rds_ring* %23, %struct.qlcnic_host_rds_ring** %4, align 8
  %24 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %28 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %27, i32 0, i32 2
  %29 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %28, align 8
  store %struct.qlcnic_rx_buffer* %29, %struct.qlcnic_rx_buffer** %5, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %44, %17
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %33 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %37, i32 0, i32 0
  %39 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %42, i32 1
  store %struct.qlcnic_rx_buffer* %43, %struct.qlcnic_rx_buffer** %5, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %30

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %11

51:                                               ; preds = %11
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
