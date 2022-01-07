; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_irq*, %struct.ena_ring* }
%struct.ena_irq = type { i32 }
%struct.ena_ring = type { i32, i32*, i32, i64, i64, i32, i32* }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"rx_buffer_info is not NULL\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, i64)* @ena_setup_rx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_setup_rx_resources(%struct.ena_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca %struct.ena_irq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 2
  %13 = load %struct.ena_ring*, %struct.ena_ring** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %13, i64 %14
  store %struct.ena_ring* %15, %struct.ena_ring** %6, align 8
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 1
  %18 = load %struct.ena_irq*, %struct.ena_irq** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @ENA_IO_IRQ_IDX(i64 %19)
  %21 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %18, i64 %20
  store %struct.ena_irq* %21, %struct.ena_irq** %7, align 8
  %22 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %23 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %28 = load i32, i32* @ifup, align 4
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_err(%struct.ena_adapter* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %139

35:                                               ; preds = %2
  %36 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %37 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ena_irq*, %struct.ena_irq** %7, align 8
  %44 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_node(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @vzalloc_node(i32 %47, i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %51, i32 0, i32 6
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %54 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @vzalloc(i32 %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %62 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %61, i32 0, i32 6
  store i32* %60, i32** %62, align 8
  %63 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %64 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %139

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %73 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i8* @vzalloc_node(i32 %78, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %83 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %85 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @vzalloc(i32 %89)
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %93 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %95 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %88
  %99 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %100 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @vfree(i32* %101)
  %103 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %104 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %103, i32 0, i32 6
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %139

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %71
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %123, %108
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %112 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %118 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %109

126:                                              ; preds = %109
  %127 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %128 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %127, i32 0, i32 5
  %129 = call i32 @memset(i32* %128, i32 0, i32 4)
  %130 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %131 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %133 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %132, i32 0, i32 3
  store i64 0, i64* %133, align 8
  %134 = load %struct.ena_irq*, %struct.ena_irq** %7, align 8
  %135 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %138 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %126, %98, %67, %26
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @ENA_IO_IRQ_IDX(i64) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i8* @vzalloc_node(i32, i32) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
