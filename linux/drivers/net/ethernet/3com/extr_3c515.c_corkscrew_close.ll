; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c515.c_corkscrew_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32, i32 }
%struct.corkscrew_private = type { i32**, i64, i32**, i64, i32 }

@corkscrew_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: corkscrew_close() status %4.4x, Tx status %2.2x.\0A\00", align 1
@EL3_STATUS = common dso_local global i64 0, align 8
@TxStatus = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"%s: corkscrew close stats: rx_nocopy %d rx_copy %d tx_queued %d.\0A\00", align 1
@rx_nocopy = common dso_local global i32 0, align 4
@rx_copy = common dso_local global i32 0, align 4
@queued_packet = common dso_local global i32 0, align 4
@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@RxDisable = common dso_local global i32 0, align 4
@TxDisable = common dso_local global i32 0, align 4
@XCVR_10base2 = common dso_local global i64 0, align 8
@StopCoax = common dso_local global i32 0, align 4
@SetIntrEnb = common dso_local global i32 0, align 4
@UpListPtr = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@DownListPtr = common dso_local global i64 0, align 8
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @corkscrew_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corkscrew_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.corkscrew_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.corkscrew_private* @netdev_priv(%struct.net_device* %6)
  store %struct.corkscrew_private* %7, %struct.corkscrew_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load i32, i32* @corkscrew_debug, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @EL3_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @TxStatus, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inb(i64 %27)
  %29 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @rx_nocopy, align 4
  %34 = load i32, i32* @rx_copy, align 4
  %35 = load i32, i32* @queued_packet, align 4
  %36 = call i32 (i8*, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %15, %1
  %38 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %39 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %38, i32 0, i32 4
  %40 = call i32 @del_timer_sync(i32* %39)
  %41 = load i32, i32* @StatsDisable, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @EL3_CMD, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outw(i32 %41, i64 %45)
  %47 = load i32, i32* @RxDisable, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @EL3_CMD, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outw(i32 %47, i64 %51)
  %53 = load i32, i32* @TxDisable, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @EL3_CMD, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outw(i32 %53, i64 %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XCVR_10base2, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %37
  %65 = load i32, i32* @StopCoax, align 4
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @EL3_CMD, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outw(i32 %65, i64 %69)
  br label %71

71:                                               ; preds = %64, %37
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.net_device* %75)
  %77 = load i32, i32* @SetIntrEnb, align 4
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @EL3_CMD, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outw(i32 %77, i64 %81)
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = call i32 @update_stats(i32 %83, %struct.net_device* %84)
  %86 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %87 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %129

90:                                               ; preds = %71
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @UpListPtr, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outl(i32 0, i64 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %125, %90
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @RX_RING_SIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %102 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %101, i32 0, i32 2
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %100
  %110 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %111 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %110, i32 0, i32 2
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @dev_kfree_skb(i32* %116)
  %118 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %119 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %109, %100
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %96

128:                                              ; preds = %96
  br label %129

129:                                              ; preds = %128, %71
  %130 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %131 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %173

134:                                              ; preds = %129
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @DownListPtr, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @outl(i32 0, i64 %138)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %169, %134
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @TX_RING_SIZE, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %172

144:                                              ; preds = %140
  %145 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %146 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %144
  %154 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %155 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @dev_kfree_skb(i32* %160)
  %162 = load %struct.corkscrew_private*, %struct.corkscrew_private** %3, align 8
  %163 = getelementptr inbounds %struct.corkscrew_private, %struct.corkscrew_private* %162, i32 0, i32 0
  %164 = load i32**, i32*** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32*, i32** %164, i64 %166
  store i32* null, i32** %167, align 8
  br label %168

168:                                              ; preds = %153, %144
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %140

172:                                              ; preds = %140
  br label %173

173:                                              ; preds = %172, %129
  ret i32 0
}

declare dso_local %struct.corkscrew_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @update_stats(i32, %struct.net_device*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
