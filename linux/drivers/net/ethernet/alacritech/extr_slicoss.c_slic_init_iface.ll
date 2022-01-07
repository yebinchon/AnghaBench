; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__, %struct.slic_shmem }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.slic_shmem = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to init shared memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to load firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to load firmware for receive sequencer\0A\00", align 1
@SLIC_REG_ICR = common dso_local global i32 0, align 4
@SLIC_ICR_INT_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to init rx queue: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to init tx queue: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to init status queue: %u\0A\00", align 1
@SLIC_REG_ISP = common dso_local global i32 0, align 4
@SLIC_REG_INTAGG = common dso_local global i32 0, align 4
@SLIC_REG_ISR = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@slic_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to request irq: %u\0A\00", align 1
@SLIC_ICR_INT_ON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to set initial link state: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_init_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_init_iface(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.slic_shmem*, align 8
  %5 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  %6 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %7 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %6, i32 0, i32 7
  store %struct.slic_shmem* %7, %struct.slic_shmem** %4, align 8
  %8 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %9 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %12 = call i32 @slic_init_shmem(%struct.slic_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %17 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @netdev_err(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %170

21:                                               ; preds = %1
  %22 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %23 = call i32 @slic_load_firmware(%struct.slic_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %28 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @netdev_err(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %164

31:                                               ; preds = %21
  %32 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %33 = call i32 @slic_load_rcvseq_firmware(%struct.slic_device* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %38 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @netdev_err(i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %164

41:                                               ; preds = %31
  %42 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %43 = load i32, i32* @SLIC_REG_ICR, align 4
  %44 = load i32, i32* @SLIC_ICR_INT_OFF, align 4
  %45 = call i32 @slic_write(%struct.slic_device* %42, i32 %43, i32 %44)
  %46 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %47 = call i32 @slic_flush_write(%struct.slic_device* %46)
  %48 = call i32 @mdelay(i32 1)
  %49 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %50 = call i32 @slic_init_rx_queue(%struct.slic_device* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %55 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i8*, ...) @netdev_err(i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %164

59:                                               ; preds = %41
  %60 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %61 = call i32 @slic_init_tx_queue(%struct.slic_device* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %66 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i32, i8*, ...) @netdev_err(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %161

70:                                               ; preds = %59
  %71 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %72 = call i32 @slic_init_stat_queue(%struct.slic_device* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %77 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i32, i8*, ...) @netdev_err(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %158

81:                                               ; preds = %70
  %82 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %83 = load i32, i32* @SLIC_REG_ISP, align 4
  %84 = load %struct.slic_shmem*, %struct.slic_shmem** %4, align 8
  %85 = getelementptr inbounds %struct.slic_shmem, %struct.slic_shmem* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @lower_32_bits(i32 %86)
  %88 = call i32 @slic_write(%struct.slic_device* %82, i32 %83, i32 %87)
  %89 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %90 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %89, i32 0, i32 0
  %91 = call i32 @napi_enable(i32* %90)
  %92 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %93 = load i32, i32* @SLIC_REG_INTAGG, align 4
  %94 = call i32 @slic_write(%struct.slic_device* %92, i32 %93, i32 0)
  %95 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %96 = load i32, i32* @SLIC_REG_ISR, align 4
  %97 = call i32 @slic_write(%struct.slic_device* %95, i32 %96, i32 0)
  %98 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %99 = call i32 @slic_flush_write(%struct.slic_device* %98)
  %100 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %101 = call i32 @slic_set_mac_address(%struct.slic_device* %100)
  %102 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %103 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %102, i32 0, i32 3
  %104 = call i32 @spin_lock_bh(i32* %103)
  %105 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %106 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %107 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @SPEED_UNKNOWN, align 4
  %109 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %110 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %112 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %111, i32 0, i32 3
  %113 = call i32 @spin_unlock_bh(i32* %112)
  %114 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %115 = call i32 @slic_set_link_autoneg(%struct.slic_device* %114)
  %116 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %117 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @slic_irq, align 4
  %122 = load i32, i32* @IRQF_SHARED, align 4
  %123 = load i32, i32* @DRV_NAME, align 4
  %124 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %125 = call i32 @request_irq(i32 %120, i32 %121, i32 %122, i32 %123, %struct.slic_device* %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %81
  %129 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %130 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 (i32, i8*, ...) @netdev_err(i32 %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %152

134:                                              ; preds = %81
  %135 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %136 = load i32, i32* @SLIC_REG_ICR, align 4
  %137 = load i32, i32* @SLIC_ICR_INT_ON, align 4
  %138 = call i32 @slic_write(%struct.slic_device* %135, i32 %136, i32 %137)
  %139 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %140 = call i32 @slic_flush_write(%struct.slic_device* %139)
  %141 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %142 = call i32 @slic_handle_link_change(%struct.slic_device* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %134
  %146 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %147 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @netdev_warn(i32 %148, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %145, %134
  store i32 0, i32* %2, align 4
  br label %170

152:                                              ; preds = %128
  %153 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %154 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %153, i32 0, i32 0
  %155 = call i32 @napi_disable(i32* %154)
  %156 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %157 = call i32 @slic_free_stat_queue(%struct.slic_device* %156)
  br label %158

158:                                              ; preds = %152, %75
  %159 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %160 = call i32 @slic_free_tx_queue(%struct.slic_device* %159)
  br label %161

161:                                              ; preds = %158, %64
  %162 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %163 = call i32 @slic_free_rx_queue(%struct.slic_device* %162)
  br label %164

164:                                              ; preds = %161, %53, %36, %26
  %165 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %166 = call i32 @slic_free_shmem(%struct.slic_device* %165)
  %167 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %168 = call i32 @slic_card_reset(%struct.slic_device* %167)
  %169 = load i32, i32* %5, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %164, %151, %15
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @slic_init_shmem(%struct.slic_device*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @slic_load_firmware(%struct.slic_device*) #1

declare dso_local i32 @slic_load_rcvseq_firmware(%struct.slic_device*) #1

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @slic_init_rx_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_init_tx_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_init_stat_queue(%struct.slic_device*) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @slic_set_mac_address(%struct.slic_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @slic_set_link_autoneg(%struct.slic_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.slic_device*) #1

declare dso_local i32 @slic_handle_link_change(%struct.slic_device*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @slic_free_stat_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_free_tx_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_free_rx_queue(%struct.slic_device*) #1

declare dso_local i32 @slic_free_shmem(%struct.slic_device*) #1

declare dso_local i32 @slic_card_reset(%struct.slic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
