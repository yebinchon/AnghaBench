; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, %struct.bnad_rx_info*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.bnad_rx_info = type { %struct.bnad_rx_ctrl*, i32 }
%struct.bnad_rx_ctrl = type { i64 }
%struct.TYPE_2__ = type { %struct.bna_tcb** }
%struct.bna_tcb = type { i32 }

@BNAD_RF_MBOX_IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bnad_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bnad*, align 8
  %11 = alloca %struct.bnad_rx_info*, align 8
  %12 = alloca %struct.bnad_rx_ctrl*, align 8
  %13 = alloca %struct.bna_tcb*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.bnad*
  store %struct.bnad* %15, %struct.bnad** %10, align 8
  store %struct.bna_tcb* null, %struct.bna_tcb** %13, align 8
  %16 = load %struct.bnad*, %struct.bnad** %10, align 8
  %17 = getelementptr inbounds %struct.bnad, %struct.bnad* %16, i32 0, i32 6
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* @BNAD_RF_MBOX_IRQ_DISABLED, align 4
  %21 = load %struct.bnad*, %struct.bnad** %10, align 8
  %22 = getelementptr inbounds %struct.bnad, %struct.bnad* %21, i32 0, i32 8
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.bnad*, %struct.bnad** %10, align 8
  %28 = getelementptr inbounds %struct.bnad, %struct.bnad* %27, i32 0, i32 6
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %181

32:                                               ; preds = %2
  %33 = load %struct.bnad*, %struct.bnad** %10, align 8
  %34 = getelementptr inbounds %struct.bnad, %struct.bnad* %33, i32 0, i32 7
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @bna_intr_status_get(i32* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.bnad*, %struct.bnad** %10, align 8
  %45 = getelementptr inbounds %struct.bnad, %struct.bnad* %44, i32 0, i32 6
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %181

49:                                               ; preds = %32
  %50 = load %struct.bnad*, %struct.bnad** %10, align 8
  %51 = getelementptr inbounds %struct.bnad, %struct.bnad* %50, i32 0, i32 7
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @BNA_IS_MBOX_ERR_INTR(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.bnad*, %struct.bnad** %10, align 8
  %57 = getelementptr inbounds %struct.bnad, %struct.bnad* %56, i32 0, i32 7
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @bna_mbox_handler(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.bnad*, %struct.bnad** %10, align 8
  %62 = getelementptr inbounds %struct.bnad, %struct.bnad* %61, i32 0, i32 6
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @BNA_IS_INTX_DATA_INTR(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %181

70:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %125, %70
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.bnad*, %struct.bnad** %10, align 8
  %74 = getelementptr inbounds %struct.bnad, %struct.bnad* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %128

77:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %121, %77
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.bnad*, %struct.bnad** %10, align 8
  %81 = getelementptr inbounds %struct.bnad, %struct.bnad* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %78
  %85 = load %struct.bnad*, %struct.bnad** %10, align 8
  %86 = getelementptr inbounds %struct.bnad, %struct.bnad* %85, i32 0, i32 5
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.bna_tcb**, %struct.bna_tcb*** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %92, i64 %94
  %96 = load %struct.bna_tcb*, %struct.bna_tcb** %95, align 8
  store %struct.bna_tcb* %96, %struct.bna_tcb** %13, align 8
  %97 = load %struct.bna_tcb*, %struct.bna_tcb** %13, align 8
  %98 = icmp ne %struct.bna_tcb* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %84
  %100 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %101 = load %struct.bna_tcb*, %struct.bna_tcb** %13, align 8
  %102 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %101, i32 0, i32 0
  %103 = call i32 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load %struct.bnad*, %struct.bnad** %10, align 8
  %107 = load %struct.bnad*, %struct.bnad** %10, align 8
  %108 = getelementptr inbounds %struct.bnad, %struct.bnad* %107, i32 0, i32 5
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load %struct.bna_tcb**, %struct.bna_tcb*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %114, i64 %116
  %118 = load %struct.bna_tcb*, %struct.bna_tcb** %117, align 8
  %119 = call i32 @bnad_tx_complete(%struct.bnad* %106, %struct.bna_tcb* %118)
  br label %120

120:                                              ; preds = %105, %99, %84
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %78

124:                                              ; preds = %78
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %71

128:                                              ; preds = %71
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %176, %128
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.bnad*, %struct.bnad** %10, align 8
  %132 = getelementptr inbounds %struct.bnad, %struct.bnad* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %179

135:                                              ; preds = %129
  %136 = load %struct.bnad*, %struct.bnad** %10, align 8
  %137 = getelementptr inbounds %struct.bnad, %struct.bnad* %136, i32 0, i32 4
  %138 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %138, i64 %140
  store %struct.bnad_rx_info* %141, %struct.bnad_rx_info** %11, align 8
  %142 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %11, align 8
  %143 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %135
  br label %176

147:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %172, %147
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.bnad*, %struct.bnad** %10, align 8
  %151 = getelementptr inbounds %struct.bnad, %struct.bnad* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %148
  %155 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %11, align 8
  %156 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %155, i32 0, i32 0
  %157 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %157, i64 %159
  store %struct.bnad_rx_ctrl* %160, %struct.bnad_rx_ctrl** %12, align 8
  %161 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %12, align 8
  %162 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %154
  %166 = load %struct.bnad*, %struct.bnad** %10, align 8
  %167 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %12, align 8
  %168 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @bnad_netif_rx_schedule_poll(%struct.bnad* %166, i64 %169)
  br label %171

171:                                              ; preds = %165, %154
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %148

175:                                              ; preds = %148
  br label %176

176:                                              ; preds = %175, %146
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %129

179:                                              ; preds = %129
  %180 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %179, %68, %43, %26
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bna_intr_status_get(i32*, i32) #1

declare dso_local i64 @BNA_IS_MBOX_ERR_INTR(i32*, i32) #1

declare dso_local i32 @bna_mbox_handler(i32*, i32) #1

declare dso_local i32 @BNA_IS_INTX_DATA_INTR(i32) #1

declare dso_local i32 @bnad_tx_complete(%struct.bnad*, %struct.bna_tcb*) #1

declare dso_local i32 @bnad_netif_rx_schedule_poll(%struct.bnad*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
