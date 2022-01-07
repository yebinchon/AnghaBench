; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.de4x5_private = type { i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@DISABLE_IRQs = common dso_local global i32 0, align 4
@MASK_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: Re-entering the interrupt handler.\0A\00", align 1
@DE4X5_STS = common dso_local global i32 0, align 4
@STS_RI = common dso_local global i32 0, align 4
@STS_RU = common dso_local global i32 0, align 4
@STS_TI = common dso_local global i32 0, align 4
@STS_TU = common dso_local global i32 0, align 4
@STS_LNF = common dso_local global i32 0, align 4
@IMR_LFM = common dso_local global i32 0, align 4
@STS_UNF = common dso_local global i32 0, align 4
@STS_SE = common dso_local global i32 0, align 4
@STOP_DE4X5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: Fatal bus error occurred, sts=%#8x, device stopped.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UNMASK_INTERRUPTS = common dso_local global i64 0, align 8
@ENABLE_IRQs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @de4x5_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.de4x5_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.net_device*
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %16)
  store %struct.de4x5_private* %17, %struct.de4x5_private** %7, align 8
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @DISABLE_IRQs, align 4
  %25 = load i32, i32* @MASK_INTERRUPTS, align 4
  %26 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %27 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %26, i32 0, i32 2
  %28 = bitcast i64* %27 to i8*
  %29 = call i64 @test_and_set_bit(i32 %25, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @synchronize_irq(i32 %39)
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %114, %36
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %117

44:                                               ; preds = %41
  %45 = load i32, i32* @DE4X5_STS, align 4
  %46 = call i32 @inl(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @DE4X5_STS, align 4
  %49 = call i32 @outl(i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %52 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  br label %117

57:                                               ; preds = %44
  store i32 1, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @STS_RI, align 4
  %60 = load i32, i32* @STS_RU, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = call i32 @de4x5_rx(%struct.net_device* %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @STS_TI, align 4
  %70 = load i32, i32* @STS_TU, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = call i32 @de4x5_tx(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @STS_LNF, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32, i32* @IMR_LFM, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %86 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @STS_UNF, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = call i32 @de4x5_txur(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %89
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @STS_SE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32, i32* @STOP_DE4X5, align 4
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %110 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %109, i32 0, i32 1
  %111 = call i32 @spin_unlock(i32* %110)
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %112, i32* %3, align 4
  br label %161

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %41

117:                                              ; preds = %56, %41
  %118 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %119 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = bitcast i64* %120 to i8*
  %122 = call i64 @test_and_set_bit(i32 0, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %151, label %124

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %142, %124
  %126 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %127 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = call i32 @skb_queue_empty(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %125
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = call i32 @netif_queue_stopped(%struct.net_device* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %137 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %135, %131, %125
  %141 = phi i1 [ false, %131 ], [ false, %125 ], [ %139, %135 ]
  br i1 %141, label %142, label %147

142:                                              ; preds = %140
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = call i32 @de4x5_get_cache(%struct.net_device* %143)
  %145 = load %struct.net_device*, %struct.net_device** %6, align 8
  %146 = call i32 @de4x5_queue_pkt(i32 %144, %struct.net_device* %145)
  br label %125

147:                                              ; preds = %140
  %148 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %149 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %117
  %152 = load i64, i64* @UNMASK_INTERRUPTS, align 8
  %153 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %154 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load i32, i32* @ENABLE_IRQs, align 4
  %156 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %157 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @IRQ_RETVAL(i32 %159)
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %151, %102
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @de4x5_rx(%struct.net_device*) #1

declare dso_local i32 @de4x5_tx(%struct.net_device*) #1

declare dso_local i32 @de4x5_txur(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @de4x5_queue_pkt(i32, %struct.net_device*) #1

declare dso_local i32 @de4x5_get_cache(%struct.net_device*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
