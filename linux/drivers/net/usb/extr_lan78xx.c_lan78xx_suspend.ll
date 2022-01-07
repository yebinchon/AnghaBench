; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.lan78xx_net = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, i32, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.lan78xx_priv = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EVENT_DEV_ASLEEP = common dso_local global i32 0, align 4
@MAC_TX = common dso_local global i32 0, align 4
@MAC_TX_TXEN_ = common dso_local global i32 0, align 4
@MAC_RX = common dso_local global i32 0, align 4
@MAC_RX_RXEN_ = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@WUCSR2 = common dso_local global i32 0, align 4
@WK_SRC = common dso_local global i32 0, align 4
@WUCSR_RFE_WAKE_EN_ = common dso_local global i32 0, align 4
@WUCSR_STORE_WAKE_ = common dso_local global i32 0, align 4
@PMT_CTL = common dso_local global i32 0, align 4
@PMT_CTL_RES_CLR_WKP_EN_ = common dso_local global i32 0, align 4
@PMT_CTL_RES_CLR_WKP_STS_ = common dso_local global i32 0, align 4
@PMT_CTL_PHY_WAKE_EN_ = common dso_local global i32 0, align 4
@PMT_CTL_WOL_EN_ = common dso_local global i32 0, align 4
@PMT_CTL_SUS_MODE_MASK_ = common dso_local global i32 0, align 4
@PMT_CTL_SUS_MODE_3_ = common dso_local global i32 0, align 4
@PMT_CTL_WUPS_MASK_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @lan78xx_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca %struct.lan78xx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.lan78xx_net* @usb_get_intfdata(%struct.usb_interface* %11)
  store %struct.lan78xx_net* %12, %struct.lan78xx_net** %5, align 8
  %13 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %14 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %13, i32 0, i32 7
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lan78xx_priv*
  store %struct.lan78xx_priv* %18, %struct.lan78xx_priv** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %22 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %98, label %26

26:                                               ; preds = %2
  %27 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %28 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %32 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %31, i32 0, i32 4
  %33 = call i64 @skb_queue_len(%struct.TYPE_6__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %37 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %36, i32 0, i32 5
  %38 = call i64 @skb_queue_len(%struct.TYPE_6__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35, %26
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @PMSG_IS_AUTO(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %47 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %212

52:                                               ; preds = %40, %35
  %53 = load i32, i32* @EVENT_DEV_ASLEEP, align 4
  %54 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %55 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %54, i32 0, i32 1
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %58 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_irq(i32* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %63 = load i32, i32* @MAC_TX, align 4
  %64 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %62, i32 %63, i32* %7)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @MAC_TX_TXEN_, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %70 = load i32, i32* @MAC_TX, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %69, i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %74 = load i32, i32* @MAC_RX, align 4
  %75 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %73, i32 %74, i32* %7)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @MAC_RX_RXEN_, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %81 = load i32, i32* @MAC_RX, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %80, i32 %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %85 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @netif_device_detach(i32 %86)
  %88 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %89 = call i32 @lan78xx_terminate_urbs(%struct.lan78xx_net* %88)
  %90 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %91 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usb_kill_urb(i32 %92)
  %94 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %95 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @netif_device_attach(i32 %96)
  br label %98

98:                                               ; preds = %61, %2
  %99 = load i32, i32* @EVENT_DEV_ASLEEP, align 4
  %100 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %101 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %100, i32 0, i32 1
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %211

104:                                              ; preds = %98
  %105 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %106 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %105, i32 0, i32 0
  %107 = call i32 @del_timer(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @PMSG_IS_AUTO(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %204

112:                                              ; preds = %104
  %113 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %114 = load i32, i32* @MAC_TX, align 4
  %115 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %113, i32 %114, i32* %7)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @MAC_TX_TXEN_, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %121 = load i32, i32* @MAC_TX, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %120, i32 %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %125 = load i32, i32* @MAC_RX, align 4
  %126 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %124, i32 %125, i32* %7)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @MAC_RX_RXEN_, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %7, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %132 = load i32, i32* @MAC_RX, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %131, i32 %132, i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %136 = load i32, i32* @WUCSR, align 4
  %137 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %135, i32 %136, i32 0)
  store i32 %137, i32* %8, align 4
  %138 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %139 = load i32, i32* @WUCSR2, align 4
  %140 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %138, i32 %139, i32 0)
  store i32 %140, i32* %8, align 4
  %141 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %142 = load i32, i32* @WK_SRC, align 4
  %143 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %141, i32 %142, i32 -917729)
  store i32 %143, i32* %8, align 4
  %144 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %145 = load i32, i32* @WUCSR, align 4
  %146 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %144, i32 %145, i32* %7)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @WUCSR_RFE_WAKE_EN_, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @WUCSR_STORE_WAKE_, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %154 = load i32, i32* @WUCSR, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %153, i32 %154, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %158 = load i32, i32* @PMT_CTL, align 4
  %159 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %157, i32 %158, i32* %7)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* @PMT_CTL_RES_CLR_WKP_EN_, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* @PMT_CTL_RES_CLR_WKP_STS_, align 4
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* @PMT_CTL_PHY_WAKE_EN_, align 4
  %168 = load i32, i32* %7, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* @PMT_CTL_WOL_EN_, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* @PMT_CTL_SUS_MODE_MASK_, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* @PMT_CTL_SUS_MODE_3_, align 4
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %181 = load i32, i32* @PMT_CTL, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %180, i32 %181, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %185 = load i32, i32* @PMT_CTL, align 4
  %186 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %184, i32 %185, i32* %7)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @PMT_CTL_WUPS_MASK_, align 4
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  %190 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %191 = load i32, i32* @PMT_CTL, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %190, i32 %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %195 = load i32, i32* @MAC_RX, align 4
  %196 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %194, i32 %195, i32* %7)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* @MAC_RX_RXEN_, align 4
  %198 = load i32, i32* %7, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %201 = load i32, i32* @MAC_RX, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %200, i32 %201, i32 %202)
  store i32 %203, i32* %8, align 4
  br label %210

204:                                              ; preds = %104
  %205 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %206 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %207 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @lan78xx_set_suspend(%struct.lan78xx_net* %205, i32 %208)
  br label %210

210:                                              ; preds = %204, %112
  br label %211

211:                                              ; preds = %210, %98
  store i32 0, i32* %8, align 4
  br label %212

212:                                              ; preds = %211, %45
  %213 = load i32, i32* %8, align 4
  ret i32 %213
}

declare dso_local %struct.lan78xx_net* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @skb_queue_len(%struct.TYPE_6__*) #1

declare dso_local i64 @PMSG_IS_AUTO(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @lan78xx_terminate_urbs(%struct.lan78xx_net*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @netif_device_attach(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @lan78xx_set_suspend(%struct.lan78xx_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
