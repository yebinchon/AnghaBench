; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_poll_err_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_poll_err_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.can_frame = type { i32, i32* }
%struct.at91_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AT91_IRQ_CERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CERR irq\0A\00", align 1
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@AT91_IRQ_SERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"SERR irq\0A\00", align 1
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@AT91_IRQ_AERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"AERR irq\0A\00", align 1
@CAN_ERR_ACK = common dso_local global i32 0, align 4
@AT91_IRQ_FERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"FERR irq\0A\00", align 1
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@AT91_IRQ_BERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"BERR irq\0A\00", align 1
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.can_frame*, i32)* @at91_poll_err_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_poll_err_frame(%struct.net_device* %0, %struct.can_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.at91_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_frame* %1, %struct.can_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.at91_priv* %9, %struct.at91_priv** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AT91_IRQ_CERR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netdev_dbg(%struct.net_device* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %23 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @CAN_ERR_PROT, align 4
  %29 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %32 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %14, %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @AT91_IRQ_SERR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netdev_dbg(%struct.net_device* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %49 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @CAN_ERR_PROT, align 4
  %55 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %58 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %62 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %63 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %40, %35
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @AT91_IRQ_AERR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 @netdev_dbg(%struct.net_device* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @CAN_ERR_ACK, align 4
  %82 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %83 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %73, %68
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @AT91_IRQ_FERR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 @netdev_dbg(%struct.net_device* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %100 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @CAN_ERR_PROT, align 4
  %106 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %109 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %113 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %114 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %112
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %91, %86
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @AT91_IRQ_BERR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %119
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = call i32 @netdev_dbg(%struct.net_device* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %133 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @CAN_ERR_PROT, align 4
  %139 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %142 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %146 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %147 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %124, %119
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
