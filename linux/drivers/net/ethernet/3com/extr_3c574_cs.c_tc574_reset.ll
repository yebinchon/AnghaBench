; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_tc574_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_tc574_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32 }
%struct.el3_private = type { i32, i32, i32, i64 }

@TotalReset = common dso_local global i32 0, align 4
@RunnerWrCtrl = common dso_local global i32 0, align 4
@RunnerRdCtrl = common dso_local global i32 0, align 4
@Wn3_MAC_Ctrl = common dso_local global i32 0, align 4
@Wn3_Config = common dso_local global i64 0, align 8
@Wn3_Options = common dso_local global i32 0, align 4
@TxReset = common dso_local global i32 0, align 4
@RxReset = common dso_local global i32 0, align 4
@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i32 0, align 4
@Wn4_NetDiag = common dso_local global i32 0, align 4
@auto_polarity = common dso_local global i32 0, align 4
@StatsEnable = common dso_local global i32 0, align 4
@RxEnable = common dso_local global i32 0, align 4
@TxEnable = common dso_local global i32 0, align 4
@SetStatusEnb = common dso_local global i32 0, align 4
@AckIntr = common dso_local global i32 0, align 4
@IntLatch = common dso_local global i32 0, align 4
@TxAvailable = common dso_local global i32 0, align 4
@RxEarly = common dso_local global i32 0, align 4
@IntReq = common dso_local global i32 0, align 4
@SetIntrEnb = common dso_local global i32 0, align 4
@RxComplete = common dso_local global i32 0, align 4
@StatsFull = common dso_local global i32 0, align 4
@AdapterFailure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tc574_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc574_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.el3_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.el3_private* @netdev_priv(%struct.net_device* %7)
  store %struct.el3_private* %8, %struct.el3_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load i32, i32* @TotalReset, align 4
  %14 = or i32 %13, 16
  %15 = call i32 @tc574_wait_for_completion(%struct.net_device* %12, i32 %14)
  %16 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %17 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RunnerWrCtrl, align 4
  %22 = add i32 %20, %21
  %23 = call i32 @outw(i32 0, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @RunnerRdCtrl, align 4
  %26 = add i32 %24, %25
  %27 = call i32 @outw(i32 0, i32 %26)
  %28 = call i32 @EL3WINDOW(i32 2)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %44, %1
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %40, %41
  %43 = call i32 @outb(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %29

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 12
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %52, %53
  %55 = call i32 @outw(i32 0, i32 %54)
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %4, align 4
  br label %48

59:                                               ; preds = %48
  %60 = call i32 @EL3WINDOW(i32 3)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 1500
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 64, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @Wn3_MAC_Ctrl, align 4
  %69 = add i32 %67, %68
  %70 = call i32 @outb(i32 %66, i32 %69)
  %71 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %72 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 16777216, i32 0
  %77 = or i32 %76, 6422555
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @Wn3_Config, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outl(i32 %77, i64 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @Wn3_Options, align 4
  %85 = add i32 %83, %84
  %86 = call i32 @outw(i32 32832, i32 %85)
  %87 = call i32 @mdelay(i32 1)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @Wn3_Options, align 4
  %90 = add i32 %88, %89
  %91 = call i32 @outw(i32 49216, i32 %90)
  %92 = call i32 @EL3WINDOW(i32 1)
  %93 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %94 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %93, i32 0, i32 1
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @TxReset, align 4
  %99 = call i32 @tc574_wait_for_completion(%struct.net_device* %97, i32 %98)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* @RxReset, align 4
  %102 = call i32 @tc574_wait_for_completion(%struct.net_device* %100, i32 %101)
  %103 = call i32 @mdelay(i32 1)
  %104 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %105 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %104, i32 0, i32 1
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = call i32 @EL3WINDOW(i32 3)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @Wn3_Options, align 4
  %111 = add i32 %109, %110
  %112 = call i32 @outw(i32 32832, i32 %111)
  %113 = load i32, i32* @StatsDisable, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @EL3_CMD, align 4
  %116 = add i32 %114, %115
  %117 = call i32 @outw(i32 %113, i32 %116)
  %118 = call i32 @EL3WINDOW(i32 6)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %127, %59
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 10
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %4, align 4
  %125 = add i32 %123, %124
  %126 = call i32 @inb(i32 %125)
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %119

130:                                              ; preds = %119
  %131 = load i32, i32* %5, align 4
  %132 = add i32 %131, 10
  %133 = call i32 @inw(i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = add i32 %134, 12
  %136 = call i32 @inw(i32 %135)
  %137 = call i32 @EL3WINDOW(i32 4)
  %138 = load i32, i32* %5, align 4
  %139 = add i32 %138, 12
  %140 = call i32 @inb(i32 %139)
  %141 = load i32, i32* %5, align 4
  %142 = add i32 %141, 13
  %143 = call i32 @inb(i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @Wn4_NetDiag, align 4
  %146 = add i32 %144, %145
  %147 = call i32 @outw(i32 64, i32 %146)
  %148 = call i32 @EL3WINDOW(i32 1)
  %149 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %150 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %149, i32 0, i32 1
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @mdio_sync(i32 %153, i32 32)
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %157 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %160 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @mdio_write(i32 %155, i32 %158, i32 4, i32 %161)
  %163 = load i32, i32* @auto_polarity, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %130
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %168 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @mdio_read(i32 %166, i32 %169, i32 16)
  %171 = or i32 %170, 32
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %174 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @mdio_write(i32 %172, i32 %175, i32 16, i32 %176)
  br label %178

178:                                              ; preds = %165, %130
  %179 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %180 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %179, i32 0, i32 1
  %181 = load i64, i64* %6, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  %183 = load %struct.net_device*, %struct.net_device** %2, align 8
  %184 = call i32 @set_rx_mode(%struct.net_device* %183)
  %185 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %186 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %185, i32 0, i32 1
  %187 = load i64, i64* %6, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load i32, i32* @StatsEnable, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @EL3_CMD, align 4
  %192 = add i32 %190, %191
  %193 = call i32 @outw(i32 %189, i32 %192)
  %194 = load i32, i32* @RxEnable, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @EL3_CMD, align 4
  %197 = add i32 %195, %196
  %198 = call i32 @outw(i32 %194, i32 %197)
  %199 = load i32, i32* @TxEnable, align 4
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @EL3_CMD, align 4
  %202 = add i32 %200, %201
  %203 = call i32 @outw(i32 %199, i32 %202)
  %204 = load i32, i32* @SetStatusEnb, align 4
  %205 = or i32 %204, 255
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @EL3_CMD, align 4
  %208 = add i32 %206, %207
  %209 = call i32 @outw(i32 %205, i32 %208)
  %210 = load i32, i32* @AckIntr, align 4
  %211 = load i32, i32* @IntLatch, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @TxAvailable, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @RxEarly, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @IntReq, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @EL3_CMD, align 4
  %221 = add i32 %219, %220
  %222 = call i32 @outw(i32 %218, i32 %221)
  %223 = load i32, i32* @SetIntrEnb, align 4
  %224 = load i32, i32* @IntLatch, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @TxAvailable, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @RxComplete, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @StatsFull, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @AdapterFailure, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @RxEarly, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @EL3_CMD, align 4
  %238 = add i32 %236, %237
  %239 = call i32 @outw(i32 %235, i32 %238)
  ret void
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tc574_wait_for_completion(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @mdio_sync(i32, i32) #1

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
