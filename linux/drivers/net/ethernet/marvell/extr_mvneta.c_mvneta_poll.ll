; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.mvneta_port = type { i32, i64, %struct.TYPE_2__*, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mvneta_pcpu_port = type { i32 }

@MVNETA_INTR_NEW_CAUSE = common dso_local global i32 0, align 4
@MVNETA_MISCINTR_INTR_MASK = common dso_local global i32 0, align 4
@MVNETA_INTR_MISC_CAUSE = common dso_local global i32 0, align 4
@MVNETA_CAUSE_PHY_STATUS_CHANGE = common dso_local global i32 0, align 4
@MVNETA_CAUSE_LINK_CHANGE = common dso_local global i32 0, align 4
@MVNETA_TX_INTR_MASK_ALL = common dso_local global i32 0, align 4
@MVNETA_INTR_NEW_MASK = common dso_local global i32 0, align 4
@rxq_number = common dso_local global i32 0, align 4
@txq_number = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @mvneta_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvneta_port*, align 8
  %10 = alloca %struct.mvneta_pcpu_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %14 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mvneta_port* @netdev_priv(i32 %15)
  store %struct.mvneta_port* %16, %struct.mvneta_port** %9, align 8
  %17 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %18 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.mvneta_pcpu_port* @this_cpu_ptr(i32 %19)
  store %struct.mvneta_pcpu_port* %20, %struct.mvneta_pcpu_port** %10, align 8
  %21 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %22 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @netif_running(%struct.TYPE_2__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %28 = call i32 @napi_complete(%struct.napi_struct* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %173

30:                                               ; preds = %2
  %31 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %32 = load i32, i32* @MVNETA_INTR_NEW_CAUSE, align 4
  %33 = call i32 @mvreg_read(%struct.mvneta_port* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MVNETA_MISCINTR_INTR_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %30
  %39 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %40 = load i32, i32* @MVNETA_INTR_MISC_CAUSE, align 4
  %41 = call i32 @mvreg_read(%struct.mvneta_port* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %43 = load i32, i32* @MVNETA_INTR_MISC_CAUSE, align 4
  %44 = call i32 @mvreg_write(%struct.mvneta_port* %42, i32 %43, i32 0)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MVNETA_CAUSE_PHY_STATUS_CHANGE, align 4
  %47 = load i32, i32* @MVNETA_CAUSE_LINK_CHANGE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %53 = call i32 @mvneta_link_change(%struct.mvneta_port* %52)
  br label %54

54:                                               ; preds = %51, %38
  br label %55

55:                                               ; preds = %54, %30
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MVNETA_TX_INTR_MASK_ALL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MVNETA_TX_INTR_MASK_ALL, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @mvneta_tx_done_gbe(%struct.mvneta_port* %61, i32 %64)
  %66 = load i32, i32* @MVNETA_TX_INTR_MASK_ALL, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %60, %55
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 255
  %74 = call i32 @fls(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %76 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %81 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  br label %87

83:                                               ; preds = %70
  %84 = load %struct.mvneta_pcpu_port*, %struct.mvneta_pcpu_port** %10, align 8
  %85 = getelementptr inbounds %struct.mvneta_pcpu_port, %struct.mvneta_pcpu_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %82, %79 ], [ %86, %83 ]
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  %96 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %97 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %102 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %105 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @mvneta_rx_hwbm(%struct.napi_struct* %101, %struct.mvneta_port* %102, i32 %103, i32* %109)
  store i32 %110, i32* %6, align 4
  br label %122

111:                                              ; preds = %93
  %112 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %113 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %116 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @mvneta_rx_swbm(%struct.napi_struct* %112, %struct.mvneta_port* %113, i32 %114, i32* %120)
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %111, %100
  br label %123

123:                                              ; preds = %122, %87
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  %128 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @napi_complete_done(%struct.napi_struct* %128, i32 %129)
  %131 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %132 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %127
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @local_irq_save(i64 %136)
  %138 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %139 = load i32, i32* @MVNETA_INTR_NEW_MASK, align 4
  %140 = load i32, i32* @rxq_number, align 4
  %141 = call i32 @MVNETA_RX_INTR_MASK(i32 %140)
  %142 = load i32, i32* @txq_number, align 4
  %143 = call i32 @MVNETA_TX_INTR_MASK(i32 %142)
  %144 = or i32 %141, %143
  %145 = load i32, i32* @MVNETA_MISCINTR_INTR_MASK, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @mvreg_write(%struct.mvneta_port* %138, i32 %139, i32 %146)
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @local_irq_restore(i64 %148)
  br label %157

150:                                              ; preds = %127
  %151 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %152 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @enable_percpu_irq(i32 %155, i32 0)
  br label %157

157:                                              ; preds = %150, %135
  br label %158

158:                                              ; preds = %157, %123
  %159 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %160 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.mvneta_port*, %struct.mvneta_port** %9, align 8
  %166 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %171

167:                                              ; preds = %158
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.mvneta_pcpu_port*, %struct.mvneta_pcpu_port** %10, align 8
  %170 = getelementptr inbounds %struct.mvneta_pcpu_port, %struct.mvneta_pcpu_port* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %26
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.mvneta_port* @netdev_priv(i32) #1

declare dso_local %struct.mvneta_pcpu_port* @this_cpu_ptr(i32) #1

declare dso_local i32 @netif_running(%struct.TYPE_2__*) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @mvreg_read(%struct.mvneta_port*, i32) #1

declare dso_local i32 @mvreg_write(%struct.mvneta_port*, i32, i32) #1

declare dso_local i32 @mvneta_link_change(%struct.mvneta_port*) #1

declare dso_local i32 @mvneta_tx_done_gbe(%struct.mvneta_port*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mvneta_rx_hwbm(%struct.napi_struct*, %struct.mvneta_port*, i32, i32*) #1

declare dso_local i32 @mvneta_rx_swbm(%struct.napi_struct*, %struct.mvneta_port*, i32, i32*) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @MVNETA_RX_INTR_MASK(i32) #1

declare dso_local i32 @MVNETA_TX_INTR_MASK(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @enable_percpu_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
