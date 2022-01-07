; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_core_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_core_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__*, i32, %struct.b43_wl* }
%struct.TYPE_2__ = type { i32 }
%struct.b43_wl = type { i32, i32*, %struct.b43_wldev*, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@B43_STAT_INITIALIZED = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@B43_QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wireless interface stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_wldev* (%struct.b43_wldev*)* @b43_wireless_core_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_wldev* @b43_wireless_core_stop(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_wl*, align 8
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = icmp ne %struct.b43_wldev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.b43_wldev* null, %struct.b43_wldev** %2, align 8
  br label %178

12:                                               ; preds = %1
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 2
  %15 = load %struct.b43_wl*, %struct.b43_wl** %14, align 8
  store %struct.b43_wl* %15, %struct.b43_wl** %4, align 8
  br label %16

16:                                               ; preds = %123, %12
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = icmp ne %struct.b43_wldev* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = call i64 @b43_status(%struct.b43_wldev* %20)
  %22 = load i64, i64* @B43_STAT_STARTED, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %16
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %25, %struct.b43_wldev** %2, align 8
  br label %178

26:                                               ; preds = %19
  %27 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %28 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %27, i32 0, i32 3
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 1
  %32 = call i32 @cancel_delayed_work_sync(i32* %31)
  %33 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %34 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %33, i32 0, i32 5
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = call i32 @b43_leds_stop(%struct.b43_wldev* %36)
  %38 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %39 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %38, i32 0, i32 3
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %42 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %41, i32 0, i32 2
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %42, align 8
  store %struct.b43_wldev* %43, %struct.b43_wldev** %3, align 8
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = icmp ne %struct.b43_wldev* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %26
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = call i64 @b43_status(%struct.b43_wldev* %47)
  %49 = load i64, i64* @B43_STAT_STARTED, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %26
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %52, %struct.b43_wldev** %2, align 8
  br label %178

53:                                               ; preds = %46
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = load i32, i32* @B43_STAT_INITIALIZED, align 4
  %56 = call i32 @b43_set_status(%struct.b43_wldev* %54, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i64 @b43_bus_host_is_sdio(%struct.TYPE_2__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %65 = call i32 @b43_write32(%struct.b43_wldev* %63, i32 %64, i32 0)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %68 = call i32 @b43_read32(%struct.b43_wldev* %66, i32 %67)
  br label %82

69:                                               ; preds = %53
  %70 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %71 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %70, i32 0, i32 4
  %72 = call i32 @spin_lock_irq(i32* %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %75 = call i32 @b43_write32(%struct.b43_wldev* %73, i32 %74, i32 0)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %78 = call i32 @b43_read32(%struct.b43_wldev* %76, i32 %77)
  %79 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %80 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %79, i32 0, i32 4
  %81 = call i32 @spin_unlock_irq(i32* %80)
  br label %82

82:                                               ; preds = %69, %62
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %83, %struct.b43_wldev** %5, align 8
  %84 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %85 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %84, i32 0, i32 3
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = call i64 @b43_bus_host_is_sdio(%struct.TYPE_2__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %94 = call i32 @b43_sdio_free_irq(%struct.b43_wldev* %93)
  br label %103

95:                                               ; preds = %82
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %97 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = call i32 @free_irq(i32 %100, %struct.b43_wldev* %101)
  br label %103

103:                                              ; preds = %95, %92
  %104 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %105 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %104, i32 0, i32 3
  %106 = call i32 @mutex_lock(i32* %105)
  %107 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %108 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %107, i32 0, i32 2
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %108, align 8
  store %struct.b43_wldev* %109, %struct.b43_wldev** %3, align 8
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %111 = icmp ne %struct.b43_wldev* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %113, %struct.b43_wldev** %2, align 8
  br label %178

114:                                              ; preds = %103
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %117 = icmp ne %struct.b43_wldev* %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %120 = call i64 @b43_status(%struct.b43_wldev* %119)
  %121 = load i64, i64* @B43_STAT_STARTED, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %16

124:                                              ; preds = %118
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %125, %struct.b43_wldev** %2, align 8
  br label %178

126:                                              ; preds = %114
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %128 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %129 = call i32 @b43_read32(%struct.b43_wldev* %127, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br label %135

135:                                              ; preds = %132, %126
  %136 = phi i1 [ false, %126 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @B43_WARN_ON(i32 %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %167, %135
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @B43_QOS_QUEUE_NUM, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %170

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %153, %143
  %145 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %146 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i64 @skb_queue_len(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %144
  %154 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %155 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = call %struct.sk_buff* @skb_dequeue(i32* %159)
  store %struct.sk_buff* %160, %struct.sk_buff** %8, align 8
  %161 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %162 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %165 = call i32 @ieee80211_free_txskb(i32 %163, %struct.sk_buff* %164)
  br label %144

166:                                              ; preds = %144
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %139

170:                                              ; preds = %139
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %172 = call i32 @b43_mac_suspend(%struct.b43_wldev* %171)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %174 = call i32 @b43_leds_exit(%struct.b43_wldev* %173)
  %175 = load %struct.b43_wl*, %struct.b43_wl** %4, align 8
  %176 = call i32 @b43dbg(%struct.b43_wl* %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  store %struct.b43_wldev* %177, %struct.b43_wldev** %2, align 8
  br label %178

178:                                              ; preds = %170, %124, %112, %51, %24, %11
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  ret %struct.b43_wldev* %179
}

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @b43_leds_stop(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b43_set_status(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_bus_host_is_sdio(%struct.TYPE_2__*) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @b43_sdio_free_irq(%struct.b43_wldev*) #1

declare dso_local i32 @free_irq(i32, %struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_leds_exit(%struct.b43_wldev*) #1

declare dso_local i32 @b43dbg(%struct.b43_wl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
