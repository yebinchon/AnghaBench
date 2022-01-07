; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_main.c_fjes_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.fjes_adapter = type { i32, i32, %struct.fjes_hw }
%struct.fjes_hw = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@fjes_support_mtu = common dso_local global i32* null, align 8
@FJES_RX_MTU_CHANGING_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @fjes_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fjes_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fjes_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.fjes_adapter* %14, %struct.fjes_adapter** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fjes_adapter*, %struct.fjes_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %17, i32 0, i32 2
  store %struct.fjes_hw* %18, %struct.fjes_hw** %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %50, %2
  %22 = load i32*, i32** @fjes_support_mtu, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** @fjes_support_mtu, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %29, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load i32*, i32** @fjes_support_mtu, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %189

48:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %53

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %21

53:                                               ; preds = %48, %21
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %189

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %116

61:                                               ; preds = %58
  %62 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %63 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %62, i32 0, i32 2
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %95, %61
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %69 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %75 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %95

79:                                               ; preds = %72
  %80 = load i32, i32* @FJES_RX_MTU_CHANGING_DONE, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %83 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %81
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %79, %78
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %66

98:                                               ; preds = %66
  %99 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %100 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %99, i32 0, i32 2
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %103)
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i32 @netif_carrier_off(%struct.net_device* %105)
  %107 = load %struct.fjes_adapter*, %struct.fjes_adapter** %6, align 8
  %108 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %107, i32 0, i32 1
  %109 = call i32 @cancel_work_sync(i32* %108)
  %110 = load %struct.fjes_adapter*, %struct.fjes_adapter** %6, align 8
  %111 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %110, i32 0, i32 0
  %112 = call i32 @napi_disable(i32* %111)
  %113 = call i32 @msleep(i32 1000)
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %114)
  br label %116

116:                                              ; preds = %98, %58
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %187

122:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %173, %122
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %126 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %176

129:                                              ; preds = %123
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %132 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %173

136:                                              ; preds = %129
  %137 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %138 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %137, i32 0, i32 2
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @spin_lock_irqsave(i32* %138, i64 %139)
  %141 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %142 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %141, i32 0, i32 3
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.net_device*, %struct.net_device** %4, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @fjes_hw_setup_epbuf(%struct.TYPE_8__* %147, i32 %150, i32 %153)
  %155 = load i32, i32* @FJES_RX_MTU_CHANGING_DONE, align 4
  %156 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %157 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %156, i32 0, i32 3
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %155
  store i32 %168, i32* %166, align 4
  %169 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %170 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %169, i32 0, i32 2
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  br label %173

173:                                              ; preds = %136, %135
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %123

176:                                              ; preds = %123
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %177)
  %179 = load %struct.net_device*, %struct.net_device** %4, align 8
  %180 = call i32 @netif_carrier_on(%struct.net_device* %179)
  %181 = load %struct.fjes_adapter*, %struct.fjes_adapter** %6, align 8
  %182 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %181, i32 0, i32 0
  %183 = call i32 @napi_enable(i32* %182)
  %184 = load %struct.fjes_adapter*, %struct.fjes_adapter** %6, align 8
  %185 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %184, i32 0, i32 0
  %186 = call i32 @napi_schedule(i32* %185)
  br label %187

187:                                              ; preds = %176, %116
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %56, %47
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @fjes_hw_setup_epbuf(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
