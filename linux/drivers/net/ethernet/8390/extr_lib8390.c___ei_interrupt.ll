; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c___ei_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c___ei_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ei_device = type { i32, i64 }

@.str = private unnamed_addr constant [60 x i8] c"Interrupted while interrupts are masked! isr=%#2x imr=%#2x\0A\00", align 1
@EN0_ISR = common dso_local global i64 0, align 8
@EN0_IMR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"interrupt(isr=%#2.2x)\0A\00", align 1
@MAX_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"interrupt from stopped card\0A\00", align 1
@ENISR_OVER = common dso_local global i32 0, align 4
@ENISR_RX = common dso_local global i32 0, align 4
@ENISR_RX_ERR = common dso_local global i32 0, align 4
@ENISR_TX = common dso_local global i32 0, align 4
@ENISR_TX_ERR = common dso_local global i32 0, align 4
@ENISR_COUNTERS = common dso_local global i32 0, align 4
@EN0_COUNTER0 = common dso_local global i64 0, align 8
@EN0_COUNTER1 = common dso_local global i64 0, align 8
@EN0_COUNTER2 = common dso_local global i64 0, align 8
@ENISR_RDC = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Too much work at interrupt, status %#2.2x\0A\00", align 1
@ENISR_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown interrupt %#2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @__ei_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ei_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ei_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ei_device* @netdev_priv(%struct.net_device* %16)
  store %struct.ei_device* %17, %struct.ei_device** %10, align 8
  %18 = load %struct.ei_device*, %struct.ei_device** %10, align 8
  %19 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.ei_device*, %struct.ei_device** %10, align 8
  %22 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @EN0_ISR, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @ei_inb_p(i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @EN0_IMR, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @ei_inb_p(i64 %33)
  %35 = call i32 @netdev_err(%struct.net_device* %26, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.ei_device*, %struct.ei_device** %10, align 8
  %37 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %226

40:                                               ; preds = %2
  %41 = load i32, i32* @E8390_NODMA, align 4
  %42 = load i32, i32* @E8390_PAGE0, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @E8390_CMD, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @ei_outb_p(i32 %43, i64 %46)
  %48 = load %struct.ei_device*, %struct.ei_device** %10, align 8
  %49 = load i32, i32* @intr, align 4
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @EN0_ISR, align 8
  %53 = add i64 %51, %52
  %54 = call i32 @ei_inb_p(i64 %53)
  %55 = call i32 @netif_dbg(%struct.ei_device* %48, i32 %49, %struct.net_device* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %166, %40
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @EN0_ISR, align 8
  %59 = add i64 %57, %58
  %60 = call i32 @ei_inb_p(i64 %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @MAX_SERVICE, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i1 [ false, %56 ], [ %66, %62 ]
  br i1 %68, label %69, label %176

69:                                               ; preds = %67
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = call i32 @netif_running(%struct.net_device* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @EN0_ISR, align 8
  %79 = add i64 %77, %78
  %80 = call i32 @ei_outb_p(i32 %76, i64 %79)
  store i32 0, i32* %8, align 4
  br label %176

81:                                               ; preds = %69
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ENISR_OVER, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = call i32 @ei_rx_overrun(%struct.net_device* %87)
  br label %100

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @ENISR_RX, align 4
  %92 = load i32, i32* @ENISR_RX_ERR, align 4
  %93 = add nsw i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = call i32 @ei_receive(%struct.net_device* %97)
  br label %99

99:                                               ; preds = %96, %89
  br label %100

100:                                              ; preds = %99, %86
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @ENISR_TX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = call i32 @ei_tx_intr(%struct.net_device* %106)
  br label %117

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @ENISR_TX_ERR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = call i32 @ei_tx_err(%struct.net_device* %114)
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @ENISR_COUNTERS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %117
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @EN0_COUNTER0, align 8
  %125 = add i64 %123, %124
  %126 = call i32 @ei_inb_p(i64 %125)
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @EN0_COUNTER1, align 8
  %134 = add i64 %132, %133
  %135 = call i32 @ei_inb_p(i64 %134)
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %135
  store i32 %140, i32* %138, align 4
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @EN0_COUNTER2, align 8
  %143 = add i64 %141, %142
  %144 = call i32 @ei_inb_p(i64 %143)
  %145 = load %struct.net_device*, %struct.net_device** %6, align 8
  %146 = getelementptr inbounds %struct.net_device, %struct.net_device* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, %144
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* @ENISR_COUNTERS, align 4
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* @EN0_ISR, align 8
  %153 = add i64 %151, %152
  %154 = call i32 @ei_outb_p(i32 %150, i64 %153)
  br label %155

155:                                              ; preds = %122, %117
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @ENISR_RDC, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32, i32* @ENISR_RDC, align 4
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* @EN0_ISR, align 8
  %164 = add i64 %162, %163
  %165 = call i32 @ei_outb_p(i32 %161, i64 %164)
  br label %166

166:                                              ; preds = %160, %155
  %167 = load i32, i32* @E8390_NODMA, align 4
  %168 = load i32, i32* @E8390_PAGE0, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* @E8390_START, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @E8390_CMD, align 8
  %174 = add i64 %172, %173
  %175 = call i32 @ei_outb_p(i32 %171, i64 %174)
  br label %56

176:                                              ; preds = %73, %67
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %218

179:                                              ; preds = %176
  %180 = load %struct.ei_device*, %struct.ei_device** %10, align 8
  %181 = call i64 @netif_msg_intr(%struct.ei_device* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %218

183:                                              ; preds = %179
  %184 = load i32, i32* @E8390_NODMA, align 4
  %185 = load i32, i32* @E8390_PAGE0, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* @E8390_START, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i64, i64* %7, align 8
  %190 = load i64, i64* @E8390_CMD, align 8
  %191 = add i64 %189, %190
  %192 = call i32 @ei_outb_p(i32 %188, i64 %191)
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @MAX_SERVICE, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %183
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 255
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load %struct.net_device*, %struct.net_device** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %200, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i32, i32* @ENISR_ALL, align 4
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* @EN0_ISR, align 8
  %207 = add i64 %205, %206
  %208 = call i32 @ei_outb_p(i32 %204, i64 %207)
  br label %217

209:                                              ; preds = %183
  %210 = load %struct.net_device*, %struct.net_device** %6, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* @EN0_ISR, align 8
  %215 = add i64 %213, %214
  %216 = call i32 @ei_outb_p(i32 255, i64 %215)
  br label %217

217:                                              ; preds = %209, %203
  br label %218

218:                                              ; preds = %217, %179, %176
  %219 = load %struct.ei_device*, %struct.ei_device** %10, align 8
  %220 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %219, i32 0, i32 0
  %221 = call i32 @spin_unlock(i32* %220)
  %222 = load i32, i32* %9, align 4
  %223 = icmp sgt i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @IRQ_RETVAL(i32 %224)
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %218, %25
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @ei_inb_p(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ei_outb_p(i32, i64) #1

declare dso_local i32 @netif_dbg(%struct.ei_device*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ei_rx_overrun(%struct.net_device*) #1

declare dso_local i32 @ei_receive(%struct.net_device*) #1

declare dso_local i32 @ei_tx_intr(%struct.net_device*) #1

declare dso_local i32 @ei_tx_err(%struct.net_device*) #1

declare dso_local i64 @netif_msg_intr(%struct.ei_device*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
