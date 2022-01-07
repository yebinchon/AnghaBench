; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ax_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_ax_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ei_device = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Interrupted while interrupts are masked!\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Reentering the interrupt handler!\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s, isr=%#2x imr=%#2x\0A\00", align 1
@EN0_ISR = common dso_local global i64 0, align 8
@EN0_IMR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"interrupt(isr=%#2.2x)\0A\00", align 1
@MAX_SERVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"interrupt from stopped card\0A\00", align 1
@ENISR_OVER = common dso_local global i32 0, align 4
@ENISR_RX = common dso_local global i32 0, align 4
@ENISR_RX_ERR = common dso_local global i32 0, align 4
@ENISR_TX = common dso_local global i32 0, align 4
@ENISR_TX_ERR = common dso_local global i32 0, align 4
@ENISR_COUNTERS = common dso_local global i32 0, align 4
@EN0_COUNTER0 = common dso_local global i64 0, align 8
@EN0_COUNTER1 = common dso_local global i64 0, align 8
@EN0_COUNTER2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Too much work at interrupt, status %#2.2x\0A\00", align 1
@ENISR_ALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"unknown interrupt %#2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ax_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ei_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.net_device*
  store %struct.net_device* %16, %struct.net_device** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call %struct.ei_device* @netdev_priv(%struct.net_device* %20)
  store %struct.ei_device* %21, %struct.ei_device** %11, align 8
  %22 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %23 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %22, i32 0, i32 1
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %27 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %2
  %31 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %32 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @EN0_ISR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inb_p(i64 %42)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @EN0_IMR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @inb_p(i64 %46)
  %48 = call i32 @netdev_info(%struct.net_device* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %43, i32 %47)
  %49 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %50 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %49, i32 0, i32 1
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %247

54:                                               ; preds = %2
  %55 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %56 = load i32, i32* @intr, align 4
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @EN0_ISR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @inb_p(i64 %60)
  %62 = call i32 @netif_dbg(%struct.ei_device* %55, i32 %56, %struct.net_device* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @EN0_ISR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb_p(i32 0, i64 %65)
  %67 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %68 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %199, %54
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @EN0_ISR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @inb_p(i64 %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @MAX_SERVICE, align 4
  %79 = icmp slt i32 %77, %78
  br label %80

80:                                               ; preds = %75, %69
  %81 = phi i1 [ false, %69 ], [ %79, %75 ]
  br i1 %81, label %82, label %200

82:                                               ; preds = %80
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = call i32 @netif_running(%struct.net_device* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 255
  br i1 %88, label %89, label %99

89:                                               ; preds = %86, %82
  %90 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %91 = load i32, i32* @intr, align 4
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = call i32 @netif_warn(%struct.ei_device* %90, i32 %91, %struct.net_device* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* %8, align 4
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @EN0_ISR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outb_p(i32 %94, i64 %97)
  store i32 0, i32* %8, align 4
  br label %200

99:                                               ; preds = %86
  store i32 1, i32* %12, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @EN0_ISR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb_p(i32 %100, i64 %103)
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %127, %99
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 10
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @EN0_ISR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @inb(i64 %111)
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %130

117:                                              ; preds = %108
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @EN0_ISR, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @outb_p(i32 0, i64 %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @EN0_ISR, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outb_p(i32 %122, i64 %125)
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %105

130:                                              ; preds = %116, %105
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @ENISR_OVER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = call i32 @ei_rx_overrun(%struct.net_device* %136)
  br label %149

138:                                              ; preds = %130
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @ENISR_RX, align 4
  %141 = load i32, i32* @ENISR_RX_ERR, align 4
  %142 = add nsw i32 %140, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = call i32 @ei_receive(%struct.net_device* %146)
  br label %148

148:                                              ; preds = %145, %138
  br label %149

149:                                              ; preds = %148, %135
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @ENISR_TX, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.net_device*, %struct.net_device** %6, align 8
  %156 = call i32 @ei_tx_intr(%struct.net_device* %155)
  br label %166

157:                                              ; preds = %149
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @ENISR_TX_ERR, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.net_device*, %struct.net_device** %6, align 8
  %164 = call i32 @ei_tx_err(%struct.net_device* %163)
  br label %165

165:                                              ; preds = %162, %157
  br label %166

166:                                              ; preds = %165, %154
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @ENISR_COUNTERS, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %199

171:                                              ; preds = %166
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @EN0_COUNTER0, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @inb_p(i64 %174)
  %176 = load %struct.net_device*, %struct.net_device** %6, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, %175
  store i32 %180, i32* %178, align 8
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* @EN0_COUNTER1, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @inb_p(i64 %183)
  %185 = load %struct.net_device*, %struct.net_device** %6, align 8
  %186 = getelementptr inbounds %struct.net_device, %struct.net_device* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %184
  store i32 %189, i32* %187, align 4
  %190 = load i64, i64* %7, align 8
  %191 = load i64, i64* @EN0_COUNTER2, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @inb_p(i64 %192)
  %194 = load %struct.net_device*, %struct.net_device** %6, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, %193
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %171, %166
  br label %69

200:                                              ; preds = %89, %80
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %233

203:                                              ; preds = %200
  %204 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %205 = call i64 @netif_msg_intr(%struct.ei_device* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %233

207:                                              ; preds = %203
  store i32 1, i32* %12, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @MAX_SERVICE, align 4
  %210 = icmp sge i32 %208, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %207
  %212 = load i32, i32* %8, align 4
  %213 = icmp ne i32 %212, 255
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.net_device*, %struct.net_device** %6, align 8
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @netdev_warn(%struct.net_device* %215, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %214, %211
  %219 = load i32, i32* @ENISR_ALL, align 4
  %220 = load i64, i64* %7, align 8
  %221 = load i64, i64* @EN0_ISR, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @outb_p(i32 %219, i64 %222)
  br label %232

224:                                              ; preds = %207
  %225 = load %struct.net_device*, %struct.net_device** %6, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @netdev_warn(%struct.net_device* %225, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %226)
  %228 = load i64, i64* %7, align 8
  %229 = load i64, i64* @EN0_ISR, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @outb_p(i32 255, i64 %230)
  br label %232

232:                                              ; preds = %224, %218
  br label %233

233:                                              ; preds = %232, %203, %200
  %234 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %235 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %234, i32 0, i32 0
  store i32 0, i32* %235, align 4
  %236 = load i32, i32* @ENISR_ALL, align 4
  %237 = load i64, i64* %7, align 8
  %238 = load i64, i64* @EN0_IMR, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @outb_p(i32 %236, i64 %239)
  %241 = load %struct.ei_device*, %struct.ei_device** %11, align 8
  %242 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %241, i32 0, i32 1
  %243 = load i64, i64* %13, align 8
  %244 = call i32 @spin_unlock_irqrestore(i32* %242, i64 %243)
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @IRQ_RETVAL(i32 %245)
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %233, %37
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*, i32, i32) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_dbg(%struct.ei_device*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_warn(%struct.ei_device*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @ei_rx_overrun(%struct.net_device*) #1

declare dso_local i32 @ei_receive(%struct.net_device*) #1

declare dso_local i32 @ei_tx_intr(%struct.net_device*) #1

declare dso_local i32 @ei_tx_err(%struct.net_device*) #1

declare dso_local i64 @netif_msg_intr(%struct.ei_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
