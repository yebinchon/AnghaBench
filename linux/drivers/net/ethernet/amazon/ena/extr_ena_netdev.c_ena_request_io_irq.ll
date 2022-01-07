; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_request_io_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_request_io_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_irq*, i32, i32 }
%struct.ena_irq = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@ENA_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to request I/O IRQ: MSI-X is not enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENA_IO_IRQ_FIRST_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to request I/O IRQ. index %d rc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"set affinity hint of irq. index %d to 0x%lx (irq vector: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_request_io_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_request_io_irq(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ena_irq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @ENA_FLAG_MSIX_ENABLED, align 4
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 3
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %16 = load i32, i32* @ifup, align 4
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (%struct.ena_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ena_adapter* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %116

23:                                               ; preds = %1
  %24 = load i32, i32* @ENA_IO_IRQ_FIRST_IDX, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %86, %23
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %25
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 1
  %34 = load %struct.ena_irq*, %struct.ena_irq** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %34, i64 %36
  store %struct.ena_irq* %37, %struct.ena_irq** %5, align 8
  %38 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %39 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %42 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %46 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %49 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @request_irq(i32 %40, i32 %43, i64 %44, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %31
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %56 = load i32, i32* @ifup, align 4
  %57 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (%struct.ena_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ena_adapter* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  br label %91

63:                                               ; preds = %31
  %64 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %65 = load i32, i32* @ifup, align 4
  %66 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %71 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %77 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_dbg(%struct.ena_adapter* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %75, i32 %78)
  %80 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %81 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %84 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %83, i32 0, i32 2
  %85 = call i32 @irq_set_affinity_hint(i32 %82, %struct.TYPE_2__* %84)
  br label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %25

89:                                               ; preds = %25
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %116

91:                                               ; preds = %54
  %92 = load i32, i32* @ENA_IO_IRQ_FIRST_IDX, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %111, %91
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %98, i32 0, i32 1
  %100 = load %struct.ena_irq*, %struct.ena_irq** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %100, i64 %102
  store %struct.ena_irq* %103, %struct.ena_irq** %5, align 8
  %104 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %105 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %108 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @free_irq(i32 %106, i32 %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %93

114:                                              ; preds = %93
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %89, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.ena_adapter*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @free_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
