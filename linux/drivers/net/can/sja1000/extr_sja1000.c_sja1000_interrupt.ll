; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*)*, %struct.TYPE_2__, i32 (%struct.sja1000_priv*)* }
%struct.TYPE_2__ = type { i32 }

@SJA1000_IER = common dso_local global i32 0, align 4
@IRQ_OFF = common dso_local global i32 0, align 4
@SJA1000_IR = common dso_local global i32 0, align 4
@SJA1000_MAX_IRQ = common dso_local global i32 0, align 4
@SJA1000_SR = common dso_local global i32 0, align 4
@IRQ_WUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wakeup interrupt\0A\00", align 1
@IRQ_TI = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@SR_TCS = common dso_local global i32 0, align 4
@SJA1000_FI = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@IRQ_RI = common dso_local global i32 0, align 4
@SR_RBS = common dso_local global i32 0, align 4
@IRQ_DOI = common dso_local global i32 0, align 4
@IRQ_EI = common dso_local global i32 0, align 4
@IRQ_BEI = common dso_local global i32 0, align 4
@IRQ_EPI = common dso_local global i32 0, align 4
@IRQ_ALI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%d messages handled in ISR\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1000_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sja1000_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.sja1000_priv* %14, %struct.sja1000_priv** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %18 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %17, i32 0, i32 3
  %19 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %18, align 8
  %20 = icmp ne i32 (%struct.sja1000_priv*)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %23 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %22, i32 0, i32 3
  %24 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %23, align 8
  %25 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %26 = call i32 %24(%struct.sja1000_priv* %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %29 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %28, i32 0, i32 0
  %30 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %29, align 8
  %31 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %32 = load i32, i32* @SJA1000_IER, align 4
  %33 = call i32 %30(%struct.sja1000_priv* %31, i32 %32)
  %34 = load i32, i32* @IRQ_OFF, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %177

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %173, %37
  %39 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %40 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %39, i32 0, i32 0
  %41 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %40, align 8
  %42 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %43 = load i32, i32* @SJA1000_IR, align 4
  %44 = call i32 %41(%struct.sja1000_priv* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SJA1000_MAX_IRQ, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i1 [ false, %38 ], [ %49, %46 ]
  br i1 %51, label %52, label %176

52:                                               ; preds = %50
  %53 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %54 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %53, i32 0, i32 0
  %55 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %54, align 8
  %56 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %57 = load i32, i32* @SJA1000_SR, align 4
  %58 = call i32 %55(%struct.sja1000_priv* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 255
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %63 = call i64 @sja1000_is_absent(%struct.sja1000_priv* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %177

66:                                               ; preds = %61, %52
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @IRQ_WUI, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @netdev_warn(%struct.net_device* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @IRQ_TI, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %74
  %80 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %81 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @SR_TCS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %94 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = call i32 @can_free_echo_skb(%struct.net_device* %97, i32 0)
  br label %117

99:                                               ; preds = %87, %79
  %100 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %101 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %100, i32 0, i32 0
  %102 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %101, align 8
  %103 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %104 = load i32, i32* @SJA1000_FI, align 4
  %105 = call i32 %102(%struct.sja1000_priv* %103, i32 %104)
  %106 = and i32 %105, 15
  %107 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %108 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %112 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = call i32 @can_get_echo_skb(%struct.net_device* %115, i32 0)
  br label %117

117:                                              ; preds = %99, %92
  %118 = load %struct.net_device*, %struct.net_device** %5, align 8
  %119 = call i32 @netif_wake_queue(%struct.net_device* %118)
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %122 = call i32 @can_led_event(%struct.net_device* %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %74
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @IRQ_RI, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %150, %128
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @SR_RBS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = call i32 @sja1000_rx(%struct.net_device* %135)
  %137 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %138 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %137, i32 0, i32 0
  %139 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %138, align 8
  %140 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %141 = load i32, i32* @SJA1000_SR, align 4
  %142 = call i32 %139(%struct.sja1000_priv* %140, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp eq i32 %143, 255
  br i1 %144, label %145, label %150

145:                                              ; preds = %134
  %146 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %147 = call i64 @sja1000_is_absent(%struct.sja1000_priv* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %177

150:                                              ; preds = %145, %134
  br label %129

151:                                              ; preds = %129
  br label %152

152:                                              ; preds = %151, %123
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @IRQ_DOI, align 4
  %155 = load i32, i32* @IRQ_EI, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @IRQ_BEI, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @IRQ_EPI, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @IRQ_ALI, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %153, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %152
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i64 @sja1000_err(%struct.net_device* %166, i32 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %176

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %152
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %38

176:                                              ; preds = %171, %50
  br label %177

177:                                              ; preds = %176, %149, %65, %36
  %178 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %179 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %178, i32 0, i32 1
  %180 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %179, align 8
  %181 = icmp ne i32 (%struct.sja1000_priv*)* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %184 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %183, i32 0, i32 1
  %185 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %184, align 8
  %186 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %187 = call i32 %185(%struct.sja1000_priv* %186)
  br label %188

188:                                              ; preds = %182, %177
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @SJA1000_MAX_IRQ, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load %struct.net_device*, %struct.net_device** %5, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @netdev_dbg(%struct.net_device* %193, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %192, %188
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* @IRQ_HANDLED, align 4
  br label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @IRQ_NONE, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  ret i32 %204
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sja1000_is_absent(%struct.sja1000_priv*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @sja1000_rx(%struct.net_device*) #1

declare dso_local i64 @sja1000_err(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
