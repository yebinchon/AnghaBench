; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_spi_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_spi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i64, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32** }

@.str = private unnamed_addr constant [20 x i8] c"SPI thread created\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@QCASPI_SYNC_READY = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"have work to do. int: %d, tx_skb: %p\0A\00", align 1
@QCASPI_EVENT_UPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"sync: not ready %u, turn off carrier and flush\0A\00", align 1
@QCASPI_QCA7K_REBOOT_TIME_MS = common dso_local global i32 0, align 4
@SPI_INT_CPU_ON = common dso_local global i32 0, align 4
@QCASPI_EVENT_CPUON = common dso_local global i32 0, align 4
@SPI_INT_RDBUF_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"===> rdbuf error!\0A\00", align 1
@QCASPI_SYNC_UNKNOWN = common dso_local global i8* null, align 8
@SPI_INT_WRBUF_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"===> wrbuf error!\0A\00", align 1
@SPI_INT_PKT_AVLBL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"SPI thread exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @qcaspi_spi_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_spi_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qcaspi*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.qcaspi*
  store %struct.qcaspi* %6, %struct.qcaspi** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %8 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netdev_info(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %208, %166, %147, %127, %1
  %12 = call i32 (...) @kthread_should_stop()
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %209

15:                                               ; preds = %11
  %16 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %17 = call i32 @set_current_state(i32 %16)
  %18 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %19 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %22 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %15
  %26 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %27 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %31 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32*, i32** %29, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %39 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @QCASPI_SYNC_READY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (...) @schedule()
  br label %45

45:                                               ; preds = %43, %37, %25, %15
  %46 = load i32, i32* @TASK_RUNNING, align 4
  %47 = call i32 @set_current_state(i32 %46)
  %48 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %49 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %52 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %55 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %59 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %63 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32*, i32** %61, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %57, i32* %67)
  %69 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %70 = load i32, i32* @QCASPI_EVENT_UPDATE, align 4
  %71 = call i32 @qcaspi_qca7k_sync(%struct.qcaspi* %69, i32 %70)
  %72 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %73 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @QCASPI_SYNC_READY, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %45
  %78 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %79 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %82 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %87 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @netif_stop_queue(i32 %88)
  %90 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %91 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @netif_carrier_off(i32 %92)
  %94 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %95 = call i32 @qcaspi_flush_tx_ring(%struct.qcaspi* %94)
  %96 = load i32, i32* @QCASPI_QCA7K_REBOOT_TIME_MS, align 4
  %97 = call i32 @msleep(i32 %96)
  br label %98

98:                                               ; preds = %77, %45
  %99 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %100 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %103 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %199

106:                                              ; preds = %98
  %107 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %108 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %111 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %113 = call i32 @start_spi_intr_handling(%struct.qcaspi* %112, i32* %4)
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @SPI_INT_CPU_ON, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %106
  %119 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %120 = load i32, i32* @QCASPI_EVENT_CPUON, align 4
  %121 = call i32 @qcaspi_qca7k_sync(%struct.qcaspi* %119, i32 %120)
  %122 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %123 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @QCASPI_SYNC_READY, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %11

128:                                              ; preds = %118
  %129 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %130 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %135 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @netif_wake_queue(i32 %136)
  %138 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %139 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @netif_carrier_on(i32 %140)
  br label %142

142:                                              ; preds = %128, %106
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @SPI_INT_RDBUF_ERR, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %149 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %152 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %153 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i8*, i8** @QCASPI_SYNC_UNKNOWN, align 8
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %160 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %159, i32 0, i32 2
  store i64 %158, i64* %160, align 8
  br label %11

161:                                              ; preds = %142
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @SPI_INT_WRBUF_ERR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %168 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %172 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load i8*, i8** @QCASPI_SYNC_UNKNOWN, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %179 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  br label %11

180:                                              ; preds = %161
  %181 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %182 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @QCASPI_SYNC_READY, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @SPI_INT_PKT_AVLBL, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %193 = call i32 @qcaspi_receive(%struct.qcaspi* %192)
  br label %194

194:                                              ; preds = %191, %186
  br label %195

195:                                              ; preds = %194, %180
  %196 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @end_spi_intr_handling(%struct.qcaspi* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %98
  %200 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %201 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @QCASPI_SYNC_READY, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %199
  %206 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %207 = call i32 @qcaspi_transmit(%struct.qcaspi* %206)
  br label %208

208:                                              ; preds = %205, %199
  br label %11

209:                                              ; preds = %11
  %210 = load i32, i32* @TASK_RUNNING, align 4
  %211 = call i32 @set_current_state(i32 %210)
  %212 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %213 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @netdev_info(i32 %214, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @qcaspi_qca7k_sync(%struct.qcaspi*, i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @qcaspi_flush_tx_ring(%struct.qcaspi*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @start_spi_intr_handling(%struct.qcaspi*, i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @qcaspi_receive(%struct.qcaspi*) #1

declare dso_local i32 @end_spi_intr_handling(%struct.qcaspi*, i32) #1

declare dso_local i32 @qcaspi_transmit(%struct.qcaspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
