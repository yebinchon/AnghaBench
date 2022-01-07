; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_build_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_build_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_rx_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ef4_rx_buffer = type { i32, i64 }

@FSF_AZ_RX_KER_BUF_SIZE = common dso_local global i32 0, align 4
@FSF_AZ_RX_KER_BUF_REGION = common dso_local global i32 0, align 4
@FSF_AZ_RX_KER_BUF_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_rx_queue*, i32)* @ef4_farch_build_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_farch_build_rx_desc(%struct.ef4_rx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_rx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_rx_buffer*, align 8
  %6 = alloca i32*, align 8
  store %struct.ef4_rx_queue* %0, %struct.ef4_rx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @ef4_rx_desc(%struct.ef4_rx_queue* %7, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ef4_rx_buffer* @ef4_rx_buffer(%struct.ef4_rx_queue* %10, i32 %11)
  store %struct.ef4_rx_buffer* %12, %struct.ef4_rx_buffer** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FSF_AZ_RX_KER_BUF_SIZE, align 4
  %16 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ef4_rx_queue*, %struct.ef4_rx_queue** %3, align 8
  %20 = getelementptr inbounds %struct.ef4_rx_queue, %struct.ef4_rx_queue* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %18, %25
  %27 = load i32, i32* @FSF_AZ_RX_KER_BUF_REGION, align 4
  %28 = load i32, i32* @FSF_AZ_RX_KER_BUF_ADDR, align 4
  %29 = load %struct.ef4_rx_buffer*, %struct.ef4_rx_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.ef4_rx_buffer, %struct.ef4_rx_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @EF4_POPULATE_QWORD_3(i32 %14, i32 %15, i64 %26, i32 %27, i32 0, i32 %28, i32 %31)
  ret void
}

declare dso_local i32* @ef4_rx_desc(%struct.ef4_rx_queue*, i32) #1

declare dso_local %struct.ef4_rx_buffer* @ef4_rx_buffer(%struct.ef4_rx_queue*, i32) #1

declare dso_local i32 @EF4_POPULATE_QWORD_3(i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
