; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@SPI_REG_WRBUF_SPC_AVA = common dso_local global i32 0, align 4
@QCASPI_HW_BUF_LEN = common dso_local global i64 0, align 8
@QCASPI_HW_PKT_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcaspi*)* @qcaspi_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_transmit(%struct.qcaspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcaspi*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.qcaspi* %0, %struct.qcaspi** %3, align 8
  %9 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %10 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %14 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %17 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %18 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %16, i64 %20
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %192

25:                                               ; preds = %1
  %26 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %27 = load i32, i32* @SPI_REG_WRBUF_SPC_AVA, align 4
  %28 = call i32 @qcaspi_read_register(%struct.qcaspi* %26, i32 %27, i64* %5)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @QCASPI_HW_BUF_LEN, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %34 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  store i32 -1, i32* %2, align 4
  br label %192

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %186, %38
  %40 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %41 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %42, align 8
  %44 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %45 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %43, i64 %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %191

51:                                               ; preds = %39
  %52 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %53 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %54, align 8
  %56 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %57 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %55, i64 %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QCASPI_HW_PKT_LEN, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %51
  %70 = load i64, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %74 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %69
  br label %191

79:                                               ; preds = %51
  %80 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %81 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %82 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %83, align 8
  %85 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %86 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %84, i64 %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @qcaspi_tx_frame(%struct.qcaspi* %80, %struct.TYPE_11__* %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %95 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  store i32 -1, i32* %2, align 4
  br label %192

99:                                               ; preds = %79
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %103 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %107 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %108, align 8
  %110 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %111 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %109, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %5, align 8
  %126 = sub nsw i64 %125, %124
  store i64 %126, i64* %5, align 8
  %127 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %128 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = call i32 @netif_tx_lock_bh(%struct.TYPE_12__* %129)
  %131 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %132 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %133, align 8
  %135 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %136 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %134, i64 %138
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = call i32 @dev_kfree_skb(%struct.TYPE_11__* %140)
  %142 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %143 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %144, align 8
  %146 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %147 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %145, i64 %149
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %150, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %153 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %156, %151
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 8
  %159 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %160 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %7, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %166 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sge i64 %164, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %99
  store i64 0, i64* %7, align 8
  br label %171

171:                                              ; preds = %170, %99
  %172 = load i64, i64* %7, align 8
  %173 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %174 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  store i64 %172, i64* %175, align 8
  %176 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %177 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %176, i32 0, i32 0
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = call i64 @netif_queue_stopped(%struct.TYPE_12__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %171
  %182 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %183 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %182, i32 0, i32 0
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = call i32 @netif_wake_queue(%struct.TYPE_12__* %184)
  br label %186

186:                                              ; preds = %181, %171
  %187 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %188 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %187, i32 0, i32 0
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = call i32 @netif_tx_unlock_bh(%struct.TYPE_12__* %189)
  br label %39

191:                                              ; preds = %78, %39
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %93, %32, %24
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @qcaspi_read_register(%struct.qcaspi*, i32, i64*) #1

declare dso_local i32 @qcaspi_tx_frame(%struct.qcaspi*, %struct.TYPE_11__*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_11__*) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_12__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_12__*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
