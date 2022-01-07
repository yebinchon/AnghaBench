; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_local = type { i32, i32 }

@ISQ_PORT = common dso_local global i64 0, align 8
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"status=%04x\0A\00", align 1
@ISQ_EVENT_MASK = common dso_local global i32 0, align 4
@TX_OK = common dso_local global i32 0, align 4
@TX_LOST_CRS = common dso_local global i32 0, align 4
@TX_SQE_ERROR = common dso_local global i32 0, align 4
@TX_LATE_COL = common dso_local global i32 0, align 4
@TX_16_COL = common dso_local global i32 0, align 4
@READY_FOR_TX = common dso_local global i32 0, align 4
@TX_UNDERRUN = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"transmit underrun\0A\00", align 1
@TX_AFTER_381 = common dso_local global i32 0, align 4
@TX_AFTER_ALL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @net_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.net_local* @netdev_priv(%struct.net_device* %14)
  store %struct.net_local* %15, %struct.net_local** %6, align 8
  br label %16

16:                                               ; preds = %159, %2
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @ISQ_PORT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @nubus_readw(i64 %22)
  %24 = call i32 @swab16(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %160

26:                                               ; preds = %16
  %27 = load %struct.net_local*, %struct.net_local** %6, align 8
  %28 = load i32, i32* @intr, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (%struct.net_local*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.net_local* %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ISQ_EVENT_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %159 [
    i32 131, label %35
    i32 129, label %38
    i32 132, label %101
    i32 130, label %143
    i32 128, label %151
  ]

35:                                               ; preds = %26
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @net_rx(%struct.net_device* %36)
  br label %159

38:                                               ; preds = %26
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @netif_wake_queue(%struct.net_device* %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @TX_OK, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %38
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @TX_LOST_CRS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TX_SQE_ERROR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @TX_LATE_COL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @TX_16_COL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  br label %159

101:                                              ; preds = %26
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @READY_FOR_TX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @netif_wake_queue(%struct.net_device* %107)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @TX_UNDERRUN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %109
  %115 = load %struct.net_local*, %struct.net_local** %6, align 8
  %116 = load i32, i32* @tx_err, align 4
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = call i32 (%struct.net_local*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.net_local* %115, i32 %116, %struct.net_device* %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.net_local*, %struct.net_local** %6, align 8
  %120 = getelementptr inbounds %struct.net_local, %struct.net_local* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.net_local*, %struct.net_local** %6, align 8
  %124 = getelementptr inbounds %struct.net_local, %struct.net_local* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %127, label %131

127:                                              ; preds = %114
  %128 = load i32, i32* @TX_AFTER_381, align 4
  %129 = load %struct.net_local*, %struct.net_local** %6, align 8
  %130 = getelementptr inbounds %struct.net_local, %struct.net_local* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %141

131:                                              ; preds = %114
  %132 = load %struct.net_local*, %struct.net_local** %6, align 8
  %133 = getelementptr inbounds %struct.net_local, %struct.net_local* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 6
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* @TX_AFTER_ALL, align 4
  %138 = load %struct.net_local*, %struct.net_local** %6, align 8
  %139 = getelementptr inbounds %struct.net_local, %struct.net_local* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %136, %131
  br label %141

141:                                              ; preds = %140, %127
  br label %142

142:                                              ; preds = %141, %109
  br label %159

143:                                              ; preds = %26
  %144 = load i32, i32* %8, align 4
  %145 = ashr i32 %144, 6
  %146 = load %struct.net_device*, %struct.net_device** %5, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  br label %159

151:                                              ; preds = %26
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 6
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %153
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %26, %151, %143, %142, %100, %35
  br label %16

160:                                              ; preds = %16
  %161 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %161
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @nubus_readw(i64) #1

declare dso_local i32 @netif_dbg(%struct.net_local*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @net_rx(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
