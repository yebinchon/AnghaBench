; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_el3_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.el3_private = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"interrupt, status %4.4x.\0A\00", align 1
@EL3_STATUS = common dso_local global i32 0, align 4
@IntLatch = common dso_local global i32 0, align 4
@RxComplete = common dso_local global i32 0, align 4
@StatsFull = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"interrupt from dead card\0A\00", align 1
@TxAvailable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"    TX room bit was handled.\0A\00", align 1
@AckIntr = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@TxComplete = common dso_local global i32 0, align 4
@AdapterFailure = common dso_local global i32 0, align 4
@RxEarly = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"adapter failure, FIFO diagnostic register %04x.\0A\00", align 1
@TxReset = common dso_local global i32 0, align 4
@TxEnable = common dso_local global i32 0, align 4
@RxReset = common dso_local global i32 0, align 4
@RxEnable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"infinite loop in interrupt, status %4.4x.\0A\00", align 1
@IntReq = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"exiting interrupt, status %4.4x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @el3_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.el3_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.el3_private* @netdev_priv(%struct.net_device* %15)
  store %struct.el3_private* %16, %struct.el3_private** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call i32 @netif_device_present(%struct.net_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %215

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EL3_STATUS, align 4
  %29 = add i32 %27, %28
  %30 = call i32 @inw(i32 %29)
  %31 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.el3_private*, %struct.el3_private** %7, align 8
  %33 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  br label %35

35:                                               ; preds = %189, %22
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EL3_STATUS, align 4
  %38 = add i32 %36, %37
  %39 = call i32 @inw(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* @IntLatch, align 4
  %41 = load i32, i32* @RxComplete, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @StatsFull, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %200

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 57344
  %50 = icmp ne i32 %49, 8192
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %200

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @RxComplete, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = call i32 @el3_rx(%struct.net_device* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @TxAvailable, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @AckIntr, align 4
  %71 = load i32, i32* @TxAvailable, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @EL3_CMD, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i32 %72, i64 %76)
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = call i32 @netif_wake_queue(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %67, %62
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @TxComplete, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = call i32 @pop_tx_status(%struct.net_device* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @AdapterFailure, align 4
  %91 = load i32, i32* @RxEarly, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @StatsFull, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %89, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %174

97:                                               ; preds = %88
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @StatsFull, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = call i32 @update_stats(%struct.net_device* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @RxEarly, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.net_device*, %struct.net_device** %6, align 8
  %112 = call i32 @el3_rx(%struct.net_device* %111)
  %113 = load i32, i32* @AckIntr, align 4
  %114 = load i32, i32* @RxEarly, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* @EL3_CMD, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @outw(i32 %115, i64 %119)
  br label %121

121:                                              ; preds = %110, %105
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @AdapterFailure, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %173

126:                                              ; preds = %121
  %127 = call i32 @EL3WINDOW(i32 4)
  %128 = load i32, i32* %8, align 4
  %129 = add i32 %128, 4
  %130 = call i32 @inw(i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = call i32 @EL3WINDOW(i32 1)
  %132 = load %struct.net_device*, %struct.net_device** %6, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @netdev_warn(%struct.net_device* %132, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = and i32 %135, 1024
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %126
  %139 = load %struct.net_device*, %struct.net_device** %6, align 8
  %140 = load i32, i32* @TxReset, align 4
  %141 = call i32 @tc589_wait_for_completion(%struct.net_device* %139, i32 %140)
  %142 = load i32, i32* @TxEnable, align 4
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @EL3_CMD, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outw(i32 %142, i64 %146)
  br label %148

148:                                              ; preds = %138, %126
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, 8192
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = load i32, i32* @RxReset, align 4
  %155 = call i32 @tc589_wait_for_completion(%struct.net_device* %153, i32 %154)
  %156 = load %struct.net_device*, %struct.net_device** %6, align 8
  %157 = call i32 @set_rx_mode(%struct.net_device* %156)
  %158 = load i32, i32* @RxEnable, align 4
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* @EL3_CMD, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @outw(i32 %158, i64 %162)
  br label %164

164:                                              ; preds = %152, %148
  %165 = load i32, i32* @AckIntr, align 4
  %166 = load i32, i32* @AdapterFailure, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* %8, align 4
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* @EL3_CMD, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @outw(i32 %167, i64 %171)
  br label %173

173:                                              ; preds = %164, %121
  br label %174

174:                                              ; preds = %173, %88
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = icmp sgt i32 %176, 10
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load %struct.net_device*, %struct.net_device** %6, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @netdev_err(%struct.net_device* %179, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @AckIntr, align 4
  %183 = or i32 %182, 255
  %184 = load i32, i32* %8, align 4
  %185 = zext i32 %184 to i64
  %186 = load i64, i64* @EL3_CMD, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @outw(i32 %183, i64 %187)
  br label %200

189:                                              ; preds = %174
  %190 = load i32, i32* @AckIntr, align 4
  %191 = load i32, i32* @IntReq, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @IntLatch, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %8, align 4
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* @EL3_CMD, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @outw(i32 %194, i64 %198)
  br label %35

200:                                              ; preds = %178, %51, %35
  %201 = load i32, i32* @jiffies, align 4
  %202 = load %struct.el3_private*, %struct.el3_private** %7, align 8
  %203 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.el3_private*, %struct.el3_private** %7, align 8
  %205 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %204, i32 0, i32 0
  %206 = call i32 @spin_unlock(i32* %205)
  %207 = load %struct.net_device*, %struct.net_device** %6, align 8
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @EL3_STATUS, align 4
  %210 = add i32 %208, %209
  %211 = call i32 @inw(i32 %210)
  %212 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @IRQ_RETVAL(i32 %213)
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %200, %20
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @el3_rx(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @pop_tx_status(%struct.net_device*) #1

declare dso_local i32 @update_stats(%struct.net_device*) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @tc589_wait_for_completion(%struct.net_device*, i32) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
