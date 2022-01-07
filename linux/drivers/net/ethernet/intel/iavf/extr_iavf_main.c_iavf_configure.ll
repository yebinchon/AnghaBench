; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.iavf_ring*, i32, %struct.net_device* }
%struct.iavf_ring = type { i32 }
%struct.net_device = type { i32 }

@IAVF_FLAG_AQ_CONFIGURE_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*)* @iavf_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_configure(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_ring*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %6 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @iavf_set_rx_mode(%struct.net_device* %9)
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %12 = call i32 @iavf_configure_tx(%struct.iavf_adapter* %11)
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %14 = call i32 @iavf_configure_rx(%struct.iavf_adapter* %13)
  %15 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_QUEUES, align 4
  %16 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %37, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %27, i32 0, i32 1
  %29 = load %struct.iavf_ring*, %struct.iavf_ring** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %29, i64 %31
  store %struct.iavf_ring* %32, %struct.iavf_ring** %5, align 8
  %33 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %34 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %35 = call i32 @IAVF_DESC_UNUSED(%struct.iavf_ring* %34)
  %36 = call i32 @iavf_alloc_rx_buffers(%struct.iavf_ring* %33, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %20

40:                                               ; preds = %20
  ret void
}

declare dso_local i32 @iavf_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @iavf_configure_tx(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_configure_rx(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_alloc_rx_buffers(%struct.iavf_ring*, i32) #1

declare dso_local i32 @IAVF_DESC_UNUSED(%struct.iavf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
