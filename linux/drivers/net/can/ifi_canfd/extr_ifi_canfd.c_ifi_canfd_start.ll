; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifi_canfd_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IFI_CANFD_STCMD_HARDRESET = common dso_local global i32 0, align 4
@IFI_CANFD_STCMD = common dso_local global i64 0, align 8
@IFI_CANFD_STCMD_ENABLE_7_9_8_8_TIMING = common dso_local global i32 0, align 4
@IFI_CANFD_RXSTCMD_RESET = common dso_local global i32 0, align 4
@IFI_CANFD_RXSTCMD = common dso_local global i64 0, align 8
@IFI_CANFD_TXSTCMD_RESET = common dso_local global i32 0, align 4
@IFI_CANFD_TXSTCMD = common dso_local global i64 0, align 8
@IFI_CANFD_REPEAT = common dso_local global i64 0, align 8
@IFI_CANFD_SUSPEND = common dso_local global i64 0, align 8
@IFI_CANFD_INTERRUPT_SET_IRQ = common dso_local global i64 0, align 8
@IFI_CANFD_INTERRUPT = common dso_local global i64 0, align 8
@IFI_CANFD_STCMD_ENABLE = common dso_local global i32 0, align 4
@IFI_CANFD_STCMD_NORMAL_MODE = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@IFI_CANFD_STCMD_BUSMONITOR = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@IFI_CANFD_STCMD_LOOPBACK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@IFI_CANFD_STCMD_ENABLE_ISO = common dso_local global i32 0, align 4
@IFI_CANFD_STCMD_DISABLE_CANFD = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_UNLOCK_MAGIC = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR = common dso_local global i64 0, align 8
@IFI_CANFD_ERROR_CTR_ER_RESET = common dso_local global i32 0, align 4
@IFI_CANFD_ERROR_CTR_ER_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ifi_canfd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifi_canfd_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ifi_canfd_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ifi_canfd_priv* %6, %struct.ifi_canfd_priv** %3, align 8
  %7 = load i32, i32* @IFI_CANFD_STCMD_HARDRESET, align 4
  %8 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IFI_CANFD_STCMD, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load i32, i32* @IFI_CANFD_STCMD_ENABLE_7_9_8_8_TIMING, align 4
  %15 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IFI_CANFD_STCMD, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @ifi_canfd_set_bittiming(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @ifi_canfd_set_filters(%struct.net_device* %23)
  %25 = load i32, i32* @IFI_CANFD_RXSTCMD_RESET, align 4
  %26 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IFI_CANFD_RXSTCMD, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IFI_CANFD_RXSTCMD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  %38 = load i32, i32* @IFI_CANFD_TXSTCMD_RESET, align 4
  %39 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IFI_CANFD_TXSTCMD, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IFI_CANFD_TXSTCMD, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %52 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IFI_CANFD_REPEAT, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  %57 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IFI_CANFD_SUSPEND, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load i64, i64* @IFI_CANFD_INTERRUPT_SET_IRQ, align 8
  %64 = xor i64 %63, -1
  %65 = trunc i64 %64 to i32
  %66 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %67 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IFI_CANFD_INTERRUPT, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load i32, i32* @IFI_CANFD_STCMD_ENABLE, align 4
  %73 = load i32, i32* @IFI_CANFD_STCMD_NORMAL_MODE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @IFI_CANFD_STCMD_ENABLE_7_9_8_8_TIMING, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %4, align 4
  %77 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %78 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %1
  %85 = load i32, i32* @IFI_CANFD_STCMD_BUSMONITOR, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %1
  %89 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %90 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* @IFI_CANFD_STCMD_LOOPBACK, align 4
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %88
  %101 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %102 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %110 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @IFI_CANFD_STCMD_ENABLE_ISO, align 4
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %116, %108, %100
  %121 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %122 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* @IFI_CANFD_STCMD_DISABLE_CANFD, align 4
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %120
  %133 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %134 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %135 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load %struct.net_device*, %struct.net_device** %2, align 8
  %138 = call i32 @ifi_canfd_irq_enable(%struct.net_device* %137, i32 1)
  %139 = load i32, i32* @IFI_CANFD_ERROR_CTR_UNLOCK_MAGIC, align 4
  %140 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %141 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  %146 = load i32, i32* @IFI_CANFD_ERROR_CTR_ER_RESET, align 4
  %147 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %148 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 %146, i64 %151)
  %153 = load i32, i32* @IFI_CANFD_ERROR_CTR_ER_ENABLE, align 4
  %154 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %155 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @IFI_CANFD_ERROR_CTR, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  %160 = load i32, i32* %4, align 4
  %161 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %3, align 8
  %162 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @IFI_CANFD_STCMD, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i32 %160, i64 %165)
  ret void
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ifi_canfd_set_bittiming(%struct.net_device*) #1

declare dso_local i32 @ifi_canfd_set_filters(%struct.net_device*) #1

declare dso_local i32 @ifi_canfd_irq_enable(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
