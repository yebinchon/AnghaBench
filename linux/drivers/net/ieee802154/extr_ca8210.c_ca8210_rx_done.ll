; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_control = type { i32*, %struct.ca8210_priv* }
%struct.ca8210_priv = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.work_priv_container = type { i32, %struct.ca8210_priv* }

@CA8210_SPI_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Received packet len (%u) erroneously long\0A\00", align 1
@SPI_SYN = common dso_local global i32 0, align 4
@SPI_MCPS_DATA_CONFIRM = common dso_local global i32 0, align 4
@MAC_TRANSACTION_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Waiting for transaction overflow to stabilise...\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Resetting MAC...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ca8210_mlme_reset_worker = common dso_local global i32 0, align 4
@SPI_HWME_WAKEUP_INDICATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Wakeup indication received, reason:\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Transceiver woken up from Power Up / System Reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Watchdog Timer Time-Out\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Transceiver woken up from Power-Off by Sleep Timer Time-Out\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Transceiver woken up from Power-Off by GPIO Activity\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Transceiver woken up from Standby by Sleep Timer Time-Out\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Transceiver woken up from Standby by GPIO Activity\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Sleep-Timer Time-Out in Active Mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Wakeup reason unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas_control*)* @ca8210_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca8210_rx_done(%struct.cas_control* %0) #0 {
  %2 = alloca %struct.cas_control*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.work_priv_container*, align 8
  %6 = alloca %struct.ca8210_priv*, align 8
  store %struct.cas_control* %0, %struct.cas_control** %2, align 8
  %7 = load %struct.cas_control*, %struct.cas_control** %2, align 8
  %8 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %7, i32 0, i32 1
  %9 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  store %struct.ca8210_priv* %9, %struct.ca8210_priv** %6, align 8
  %10 = load %struct.cas_control*, %struct.cas_control** %2, align 8
  %11 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 2
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CA8210_SPI_BUF_SIZE, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %22 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_crit(i32* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %191

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SPI_SYN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %27
  %35 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %36 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %41 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @memcpy(i64 %42, i32* %43, i32 %44)
  %46 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %47 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %46, i32 0, i32 5
  %48 = call i32 @complete(i32* %47)
  br label %62

49:                                               ; preds = %34
  br i1 true, label %50, label %57

50:                                               ; preds = %49
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %54 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @cascoda_api_upstream(i32* %51, i32 %52, %struct.TYPE_2__* %55)
  br label %57

57:                                               ; preds = %50, %49
  %58 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %57, %39
  br label %72

63:                                               ; preds = %27
  br i1 true, label %64, label %71

64:                                               ; preds = %63
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %68 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @cascoda_api_upstream(i32* %65, i32 %66, %struct.TYPE_2__* %69)
  br label %71

71:                                               ; preds = %64, %63
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %74 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ca8210_net_rx(i32 %75, i32* %76, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SPI_MCPS_DATA_CONFIRM, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %72
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MAC_TRANSACTION_OVERFLOW, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %84
  %91 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %92 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @dev_info(i32* %94, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i32 @msleep(i32 2000)
  %97 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %98 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @dev_info(i32* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.work_priv_container* @kmalloc(i32 16, i32 %102)
  store %struct.work_priv_container* %103, %struct.work_priv_container** %5, align 8
  %104 = load %struct.work_priv_container*, %struct.work_priv_container** %5, align 8
  %105 = icmp ne %struct.work_priv_container* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %90
  br label %191

107:                                              ; preds = %90
  %108 = load %struct.work_priv_container*, %struct.work_priv_container** %5, align 8
  %109 = getelementptr inbounds %struct.work_priv_container, %struct.work_priv_container* %108, i32 0, i32 0
  %110 = load i32, i32* @ca8210_mlme_reset_worker, align 4
  %111 = call i32 @INIT_WORK(i32* %109, i32 %110)
  %112 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %113 = load %struct.work_priv_container*, %struct.work_priv_container** %5, align 8
  %114 = getelementptr inbounds %struct.work_priv_container, %struct.work_priv_container* %113, i32 0, i32 1
  store %struct.ca8210_priv* %112, %struct.ca8210_priv** %114, align 8
  %115 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %116 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.work_priv_container*, %struct.work_priv_container** %5, align 8
  %119 = getelementptr inbounds %struct.work_priv_container, %struct.work_priv_container* %118, i32 0, i32 0
  %120 = call i32 @queue_work(i32 %117, i32* %119)
  br label %121

121:                                              ; preds = %107, %84
  br label %190

122:                                              ; preds = %72
  %123 = load i32*, i32** %3, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SPI_HWME_WAKEUP_INDICATION, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %189

128:                                              ; preds = %122
  %129 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %130 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 @dev_notice(i32* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32*, i32** %3, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %179 [
    i32 0, label %137
    i32 1, label %143
    i32 2, label %149
    i32 3, label %155
    i32 4, label %161
    i32 5, label %167
    i32 6, label %173
  ]

137:                                              ; preds = %128
  %138 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %139 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @dev_notice(i32* %141, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %185

143:                                              ; preds = %128
  %144 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %145 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = call i32 @dev_notice(i32* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %185

149:                                              ; preds = %128
  %150 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %151 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = call i32 @dev_notice(i32* %153, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  br label %185

155:                                              ; preds = %128
  %156 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %157 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = call i32 @dev_notice(i32* %159, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %185

161:                                              ; preds = %128
  %162 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %163 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = call i32 @dev_notice(i32* %165, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  br label %185

167:                                              ; preds = %128
  %168 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %169 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = call i32 @dev_notice(i32* %171, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %185

173:                                              ; preds = %128
  %174 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %175 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %174, i32 0, i32 1
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = call i32 @dev_notice(i32* %177, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %185

179:                                              ; preds = %128
  %180 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %181 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = call i32 @dev_warn(i32* %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %185

185:                                              ; preds = %179, %173, %167, %161, %155, %149, %143, %137
  %186 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %187 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %186, i32 0, i32 0
  %188 = call i32 @complete(i32* %187)
  br label %189

189:                                              ; preds = %185, %122
  br label %190

190:                                              ; preds = %189, %121
  br label %191

191:                                              ; preds = %190, %106, %20
  ret void
}

declare dso_local i32 @dev_crit(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @cascoda_api_upstream(i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ca8210_net_rx(i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.work_priv_container* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
