; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_irq*, %struct.ena_ring* }
%struct.ena_irq = type { i32 }
%struct.ena_ring = type { i32*, i32, i32*, i32, i32, i64, i64, i32, i8* }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tx_buffer_info info is not NULL\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, i32)* @ena_setup_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_setup_tx_resources(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca %struct.ena_irq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 2
  %13 = load %struct.ena_ring*, %struct.ena_ring** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %13, i64 %15
  store %struct.ena_ring* %16, %struct.ena_ring** %6, align 8
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 1
  %19 = load %struct.ena_irq*, %struct.ena_irq** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ENA_IO_IRQ_IDX(i32 %20)
  %22 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %19, i64 %21
  store %struct.ena_irq* %22, %struct.ena_irq** %7, align 8
  %23 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %24 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %29 = load i32, i32* @ifup, align 4
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netif_err(%struct.ena_adapter* %28, i32 %29, i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %170

36:                                               ; preds = %2
  %37 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %38 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ena_irq*, %struct.ena_irq** %7, align 8
  %44 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_node(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i8* @vzalloc_node(i32 %47, i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %54 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @vzalloc(i32 %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %62 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %64 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  br label %167

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %36
  %70 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %71 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @vzalloc_node(i32 %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %81 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %83 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %69
  %87 = load i32, i32* %8, align 4
  %88 = call i8* @vzalloc(i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %91 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %93 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %86
  br label %160

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %69
  %99 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %100 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i8* @vzalloc_node(i32 %102, i32 %103)
  %105 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %106 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %105, i32 0, i32 8
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %108 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %107, i32 0, i32 8
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %122, label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %8, align 4
  %113 = call i8* @vzalloc(i32 %112)
  %114 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %115 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %114, i32 0, i32 8
  store i8* %113, i8** %115, align 8
  %116 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %117 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %116, i32 0, i32 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  br label %153

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %98
  store i32 0, i32* %9, align 4
  br label %123

123:                                              ; preds = %137, %122
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %126 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %132 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %130, i32* %136, align 4
  br label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %123

140:                                              ; preds = %123
  %141 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %142 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %141, i32 0, i32 7
  %143 = call i32 @memset(i32* %142, i32 0, i32 4)
  %144 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %145 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %144, i32 0, i32 6
  store i64 0, i64* %145, align 8
  %146 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %147 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %146, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load %struct.ena_irq*, %struct.ena_irq** %7, align 8
  %149 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %152 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  store i32 0, i32* %3, align 4
  br label %170

153:                                              ; preds = %120
  %154 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %155 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @vfree(i32* %156)
  %158 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %159 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %158, i32 0, i32 2
  store i32* null, i32** %159, align 8
  br label %160

160:                                              ; preds = %153, %96
  %161 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %162 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @vfree(i32* %163)
  %165 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %166 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %165, i32 0, i32 0
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %160, %67
  %168 = load i32, i32* @ENOMEM, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %140, %27
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i64 @ENA_IO_IRQ_IDX(i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i8* @vzalloc_node(i32, i32) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
