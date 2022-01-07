; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cc770_priv = type { i32*, i32 (%struct.cc770_priv*)*, i32 (%struct.cc770_priv*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CAN_STATE_STOPPED = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@CC770_MAX_IRQ = common dso_local global i32 0, align 4
@interrupt = common dso_local global i32 0, align 4
@CC770_OBJ_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unexpected interrupt id %d\0A\00", align 1
@CC770_OBJ_FLAG_RTR = common dso_local global i32 0, align 4
@CC770_OBJ_FLAG_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%d messages handled in ISR\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cc770_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc770_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cc770_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.cc770_priv* %14, %struct.cc770_priv** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %16 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CAN_STATE_STOPPED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %132

23:                                               ; preds = %2
  %24 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %25 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %24, i32 0, i32 2
  %26 = load i32 (%struct.cc770_priv*)*, i32 (%struct.cc770_priv*)** %25, align 8
  %27 = icmp ne i32 (%struct.cc770_priv*)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %30 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %29, i32 0, i32 2
  %31 = load i32 (%struct.cc770_priv*)*, i32 (%struct.cc770_priv*)** %30, align 8
  %32 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %33 = call i32 %31(%struct.cc770_priv* %32)
  br label %34

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %103, %63, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @CC770_MAX_IRQ, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %104

39:                                               ; preds = %35
  %40 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %41 = load i32, i32* @interrupt, align 4
  %42 = call i32 @cc770_read_reg(%struct.cc770_priv* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %104

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = call i64 @cc770_status_interrupt(%struct.net_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %104

56:                                               ; preds = %51
  br label %103

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @intid2obj(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @CC770_OBJ_MAX, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %35

67:                                               ; preds = %57
  %68 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %69 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CC770_OBJ_FLAG_RTR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @cc770_rtr_interrupt(%struct.net_device* %79, i32 %80)
  br label %102

82:                                               ; preds = %67
  %83 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %84 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CC770_OBJ_FLAG_RX, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @cc770_rx_interrupt(%struct.net_device* %94, i32 %95)
  br label %101

97:                                               ; preds = %82
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @cc770_tx_interrupt(%struct.net_device* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %102

102:                                              ; preds = %101, %78
  br label %103

103:                                              ; preds = %102, %56
  br label %35

104:                                              ; preds = %55, %45, %35
  %105 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %106 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %105, i32 0, i32 1
  %107 = load i32 (%struct.cc770_priv*)*, i32 (%struct.cc770_priv*)** %106, align 8
  %108 = icmp ne i32 (%struct.cc770_priv*)* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %111 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %110, i32 0, i32 1
  %112 = load i32 (%struct.cc770_priv*)*, i32 (%struct.cc770_priv*)** %111, align 8
  %113 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %114 = call i32 %112(%struct.cc770_priv* %113)
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @CC770_MAX_IRQ, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @netdev_dbg(%struct.net_device* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @IRQ_HANDLED, align 4
  br label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @IRQ_NONE, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %21
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i64 @cc770_status_interrupt(%struct.net_device*) #1

declare dso_local i32 @intid2obj(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @cc770_rtr_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @cc770_rx_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @cc770_tx_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
