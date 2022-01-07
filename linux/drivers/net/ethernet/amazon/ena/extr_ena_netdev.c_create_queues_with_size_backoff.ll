; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_create_queues_with_size_backoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_create_queues_with_size_backoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Queue creation failed with error code %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Not enough memory to create queues with sizes TX=%d, RX=%d\0A\00", align 1
@ENA_MIN_RING_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [117 x i8] c"Queue creation failed with the smallest possible queue size of %d for both queues. Not retrying with smaller queues\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Retrying queue creation with sizes TX=%d, RX=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @create_queues_with_size_backoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_queues_with_size_backoff(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @set_io_rings_size(%struct.ena_adapter* %9, i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %1, %118
  %18 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %19 = call i32 @ena_setup_all_tx_resources(%struct.ena_adapter* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %51

23:                                               ; preds = %17
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %25 = call i32 @ena_create_all_io_tx_queues(%struct.ena_adapter* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %48

29:                                               ; preds = %23
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %31 = call i32 @ena_setup_all_rx_resources(%struct.ena_adapter* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %29
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %37 = call i32 @ena_create_all_io_rx_queues(%struct.ena_adapter* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %131

42:                                               ; preds = %40
  %43 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %44 = call i32 @ena_free_all_io_rx_resources(%struct.ena_adapter* %43)
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %47 = call i32 @ena_destroy_all_tx_queues(%struct.ena_adapter* %46)
  br label %48

48:                                               ; preds = %45, %28
  %49 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %50 = call i32 @ena_free_all_io_tx_resources(%struct.ena_adapter* %49)
  br label %51

51:                                               ; preds = %48, %22
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %58 = load i32, i32* @ifup, align 4
  %59 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (%struct.ena_adapter*, i32, i32, i8*, i32, ...) @netif_err(%struct.ena_adapter* %57, i32 %58, i32 %61, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %131

65:                                               ; preds = %51
  %66 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %66, i32 0, i32 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %6, align 4
  %72 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  %78 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %79 = load i32, i32* @ifup, align 4
  %80 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (%struct.ena_adapter*, i32, i32, i8*, i32, ...) @netif_err(%struct.ena_adapter* %78, i32 %79, i32 %82, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %65
  %92 = load i32, i32* %6, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %65
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = sdiv i32 %99, 2
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @ENA_MIN_RING_SIZE, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @ENA_MIN_RING_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105, %101
  %110 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %111 = load i32, i32* @ifup, align 4
  %112 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ENA_MIN_RING_SIZE, align 4
  %116 = call i32 (%struct.ena_adapter*, i32, i32, i8*, i32, ...) @netif_err(%struct.ena_adapter* %110, i32 %111, i32 %114, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %131

118:                                              ; preds = %105
  %119 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %120 = load i32, i32* @ifup, align 4
  %121 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.ena_adapter*, i32, i32, i8*, i32, ...) @netif_err(%struct.ena_adapter* %119, i32 %120, i32 %123, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @set_io_rings_size(%struct.ena_adapter* %127, i32 %128, i32 %129)
  br label %17

131:                                              ; preds = %109, %56, %41
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @set_io_rings_size(%struct.ena_adapter*, i32, i32) #1

declare dso_local i32 @ena_setup_all_tx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_create_all_io_tx_queues(%struct.ena_adapter*) #1

declare dso_local i32 @ena_setup_all_rx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_create_all_io_rx_queues(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_io_rx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @ena_destroy_all_tx_queues(%struct.ena_adapter*) #1

declare dso_local i32 @ena_free_all_io_tx_resources(%struct.ena_adapter*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
