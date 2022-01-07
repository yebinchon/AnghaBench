; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_irq_err_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_irq_err_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_frame = type { i32, i32* }
%struct.at91_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.can_berr_counter = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Error Warning IRQ\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Error Passive IRQ\0A\00", align 1
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"restarted\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Error Active\0A\00", align 1
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_ACTIVE = common dso_local global i32 0, align 4
@AT91_IRQ_ERRA = common dso_local global i32 0, align 4
@AT91_IRQ_WARN = common dso_local global i32 0, align 4
@AT91_IRQ_BOFF = common dso_local global i32 0, align 4
@AT91_IRQ_ERRP = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"bus-off\0A\00", align 1
@AT91_IDR = common dso_local global i32 0, align 4
@AT91_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.can_frame*, i32)* @at91_irq_err_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_irq_err_state(%struct.net_device* %0, %struct.can_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.at91_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.can_berr_counter, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_frame* %1, %struct.can_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.at91_priv* %12, %struct.at91_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @at91_get_berr_counter(%struct.net_device* %13, %struct.can_berr_counter* %10)
  %15 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %16 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %113 [
    i32 130, label %19
    i32 128, label %55
    i32 131, label %91
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp uge i32 %20, 128
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ule i32 %23, 131
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_dbg(%struct.net_device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %29 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @CAN_ERR_CRTL, align 4
  %35 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %36 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %25
  %45 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %48

46:                                               ; preds = %25
  %47 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %51 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %22, %19
  br label %55

55:                                               ; preds = %3, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp uge i32 %56, 129
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp ule i32 %59, 131
  br i1 %60, label %61, label %90

61:                                               ; preds = %58
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @netdev_dbg(%struct.net_device* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %65 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @CAN_ERR_CRTL, align 4
  %71 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %72 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %84

82:                                               ; preds = %61
  %83 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %87 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %58, %55
  br label %114

91:                                               ; preds = %3
  %92 = load i32, i32* %6, align 4
  %93 = icmp ule i32 %92, 129
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %96 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %97 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = call i32 @netdev_dbg(%struct.net_device* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %103 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = call i32 @netif_carrier_on(%struct.net_device* %108)
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = call i32 @netif_wake_queue(%struct.net_device* %110)
  br label %112

112:                                              ; preds = %94, %91
  br label %114

113:                                              ; preds = %3
  br label %114

114:                                              ; preds = %113, %112, %90
  %115 = load i32, i32* %6, align 4
  switch i32 %115, label %175 [
    i32 130, label %116
    i32 128, label %129
    i32 129, label %136
    i32 131, label %143
  ]

116:                                              ; preds = %114
  %117 = load %struct.net_device*, %struct.net_device** %4, align 8
  %118 = call i32 @netdev_dbg(%struct.net_device* %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @CAN_ERR_PROT, align 4
  %120 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %121 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @CAN_ERR_PROT_ACTIVE, align 4
  %125 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %126 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %114, %116
  %130 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %131 = load i32, i32* @AT91_IRQ_WARN, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @AT91_IRQ_BOFF, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @AT91_IRQ_ERRP, align 4
  store i32 %135, i32* %9, align 4
  br label %176

136:                                              ; preds = %114
  %137 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %138 = load i32, i32* @AT91_IRQ_WARN, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @AT91_IRQ_ERRP, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @AT91_IRQ_BOFF, align 4
  store i32 %142, i32* %9, align 4
  br label %176

143:                                              ; preds = %114
  %144 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %145 = load i32, i32* @AT91_IRQ_ERRP, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @AT91_IRQ_WARN, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @AT91_IRQ_BOFF, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %151 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %152 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %153 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = call i32 @netdev_dbg(%struct.net_device* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = call i32 @netif_carrier_off(%struct.net_device* %158)
  %160 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %161 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %167 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %143
  %172 = load %struct.net_device*, %struct.net_device** %4, align 8
  %173 = call i32 @at91_chip_stop(%struct.net_device* %172, i32 131)
  br label %185

174:                                              ; preds = %143
  br label %176

175:                                              ; preds = %114
  br label %176

176:                                              ; preds = %175, %174, %136, %129
  %177 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %178 = load i32, i32* @AT91_IDR, align 4
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @at91_write(%struct.at91_priv* %177, i32 %178, i32 %179)
  %181 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %182 = load i32, i32* @AT91_IER, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @at91_write(%struct.at91_priv* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %176, %171
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_get_berr_counter(%struct.net_device*, %struct.can_berr_counter*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @at91_chip_stop(%struct.net_device*, i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
