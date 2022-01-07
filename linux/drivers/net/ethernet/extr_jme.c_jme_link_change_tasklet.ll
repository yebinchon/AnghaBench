; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_link_change_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_link_change_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i64, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i64 }

@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Get link change lock failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Waiting link change lock\0A\00", align 1
@JME_FLAG_POLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Allocating resources for RX error, Device STOPPED!\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Allocating resources for TX error, Device STOPPED!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @jme_link_change_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_link_change_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.jme_adapter*
  store %struct.jme_adapter* %7, %struct.jme_adapter** %3, align 8
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %8, i32 0, i32 6
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  br label %11

11:                                               ; preds = %39, %1
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 1
  %14 = call i32 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %22 = load i32, i32* @intr, align 4
  %23 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %23, i32 0, i32 6
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = call i32 @netif_info(%struct.jme_adapter* %21, i32 %22, %struct.net_device* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %32, %17
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %28, i32 0, i32 1
  %30 = call i32 @atomic_read(i32* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %34 = load i32, i32* @intr, align 4
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %35, i32 0, i32 6
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  %38 = call i32 @netif_info(%struct.jme_adapter* %33, i32 %34, %struct.net_device* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %27

39:                                               ; preds = %27
  br label %11

40:                                               ; preds = %11
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i64 @jme_check_link(%struct.net_device* %41, i32 1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %164

53:                                               ; preds = %44, %40
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = call i32 @netif_stop_queue(%struct.net_device* %59)
  %61 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %62 = call i64 @jme_pseudo_hotplug_enabled(%struct.jme_adapter* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %66 = call i32 @jme_stop_shutdown_timer(%struct.jme_adapter* %65)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %69 = call i32 @jme_stop_pcc_timer(%struct.jme_adapter* %68)
  %70 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %70, i32 0, i32 4
  %72 = call i32 @tasklet_disable(i32* %71)
  %73 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %73, i32 0, i32 3
  %75 = call i32 @tasklet_disable(i32* %74)
  %76 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %76, i32 0, i32 2
  %78 = call i32 @tasklet_disable(i32* %77)
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i64 @netif_carrier_ok(%struct.net_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %67
  %83 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %84 = call i32 @jme_disable_rx_engine(%struct.jme_adapter* %83)
  %85 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %86 = call i32 @jme_disable_tx_engine(%struct.jme_adapter* %85)
  %87 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %88 = call i32 @jme_reset_mac_processor(%struct.jme_adapter* %87)
  %89 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %90 = call i32 @jme_free_rx_resources(%struct.jme_adapter* %89)
  %91 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %92 = call i32 @jme_free_tx_resources(%struct.jme_adapter* %91)
  %93 = load i32, i32* @JME_FLAG_POLL, align 4
  %94 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %94, i32 0, i32 5
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %100 = call i32 @jme_polling_mode(%struct.jme_adapter* %99)
  br label %101

101:                                              ; preds = %98, %82
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = call i32 @netif_carrier_off(%struct.net_device* %102)
  br label %104

104:                                              ; preds = %101, %67
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i64 @jme_check_link(%struct.net_device* %105, i32 0)
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i64 @netif_carrier_ok(%struct.net_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %142

110:                                              ; preds = %104
  %111 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %112 = call i32 @jme_setup_rx_resources(%struct.jme_adapter* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %154

117:                                              ; preds = %110
  %118 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %119 = call i32 @jme_setup_tx_resources(%struct.jme_adapter* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %151

124:                                              ; preds = %117
  %125 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %126 = call i32 @jme_enable_rx_engine(%struct.jme_adapter* %125)
  %127 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %128 = call i32 @jme_enable_tx_engine(%struct.jme_adapter* %127)
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = call i32 @netif_start_queue(%struct.net_device* %129)
  %131 = load i32, i32* @JME_FLAG_POLL, align 4
  %132 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %132, i32 0, i32 5
  %134 = call i64 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %138 = call i32 @jme_interrupt_mode(%struct.jme_adapter* %137)
  br label %139

139:                                              ; preds = %136, %124
  %140 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %141 = call i32 @jme_start_pcc_timer(%struct.jme_adapter* %140)
  br label %150

142:                                              ; preds = %104
  %143 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %144 = call i64 @jme_pseudo_hotplug_enabled(%struct.jme_adapter* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %148 = call i32 @jme_start_shutdown_timer(%struct.jme_adapter* %147)
  br label %149

149:                                              ; preds = %146, %142
  br label %150

150:                                              ; preds = %149, %139
  br label %154

151:                                              ; preds = %122
  %152 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %153 = call i32 @jme_free_rx_resources(%struct.jme_adapter* %152)
  br label %154

154:                                              ; preds = %151, %150, %115
  %155 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %155, i32 0, i32 4
  %157 = call i32 @tasklet_enable(i32* %156)
  %158 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %158, i32 0, i32 3
  %160 = call i32 @tasklet_enable(i32* %159)
  %161 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %161, i32 0, i32 2
  %163 = call i32 @tasklet_enable(i32* %162)
  br label %164

164:                                              ; preds = %154, %52
  %165 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %165, i32 0, i32 1
  %167 = call i32 @atomic_inc(i32* %166)
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @netif_info(%struct.jme_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @jme_check_link(%struct.net_device*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @jme_pseudo_hotplug_enabled(%struct.jme_adapter*) #1

declare dso_local i32 @jme_stop_shutdown_timer(%struct.jme_adapter*) #1

declare dso_local i32 @jme_stop_pcc_timer(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @jme_disable_rx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_disable_tx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_reset_mac_processor(%struct.jme_adapter*) #1

declare dso_local i32 @jme_free_rx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_free_tx_resources(%struct.jme_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jme_polling_mode(%struct.jme_adapter*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @jme_setup_rx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @jme_setup_tx_resources(%struct.jme_adapter*) #1

declare dso_local i32 @jme_enable_rx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @jme_enable_tx_engine(%struct.jme_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @jme_interrupt_mode(%struct.jme_adapter*) #1

declare dso_local i32 @jme_start_pcc_timer(%struct.jme_adapter*) #1

declare dso_local i32 @jme_start_shutdown_timer(%struct.jme_adapter*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
