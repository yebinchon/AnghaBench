; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_init_pause_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_q_fill_init_pause_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_queue_sp_obj = type { i32 }
%struct.rxq_pause_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.client_init_rx_data = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_queue_sp_obj*, %struct.rxq_pause_params*, %struct.client_init_rx_data*)* @bnx2x_q_fill_init_pause_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_q_fill_init_pause_data(%struct.bnx2x_queue_sp_obj* %0, %struct.rxq_pause_params* %1, %struct.client_init_rx_data* %2) #0 {
  %4 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %5 = alloca %struct.rxq_pause_params*, align 8
  %6 = alloca %struct.client_init_rx_data*, align 8
  store %struct.bnx2x_queue_sp_obj* %0, %struct.bnx2x_queue_sp_obj** %4, align 8
  store %struct.rxq_pause_params* %1, %struct.rxq_pause_params** %5, align 8
  store %struct.client_init_rx_data* %2, %struct.client_init_rx_data** %6, align 8
  %7 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %5, align 8
  %8 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @cpu_to_le16(i32 %9)
  %11 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %6, align 8
  %12 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %11, i32 0, i32 6
  store i8* %10, i8** %12, align 8
  %13 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %5, align 8
  %14 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %6, align 8
  %18 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %5, align 8
  %20 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %6, align 8
  %24 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %5, align 8
  %26 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %6, align 8
  %30 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %5, align 8
  %32 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %6, align 8
  %36 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %5, align 8
  %38 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %6, align 8
  %42 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %5, align 8
  %44 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.client_init_rx_data*, %struct.client_init_rx_data** %6, align 8
  %48 = getelementptr inbounds %struct.client_init_rx_data, %struct.client_init_rx_data* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
