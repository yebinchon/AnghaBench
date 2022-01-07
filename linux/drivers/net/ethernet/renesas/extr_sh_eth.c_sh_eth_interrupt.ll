; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32, i32, i32, %struct.sh_eth_cpu_data* }
%struct.sh_eth_cpu_data = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EESR = common dso_local global i32 0, align 4
@EESIPR = common dso_local global i32 0, align 4
@EESIPR_ECIIP = common dso_local global i32 0, align 4
@EESR_RX_CHECK = common dso_local global i32 0, align 4
@EESR_ECI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ignoring interrupt, status 0x%08x, mask 0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_eth_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sh_eth_private*, align 8
  %7 = alloca %struct.sh_eth_cpu_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %13)
  store %struct.sh_eth_private* %14, %struct.sh_eth_private** %6, align 8
  %15 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %16 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %15, i32 0, i32 3
  %17 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %16, align 8
  store %struct.sh_eth_cpu_data* %17, %struct.sh_eth_cpu_data** %7, align 8
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %20 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load i32, i32* @EESR, align 4
  %24 = call i32 @sh_eth_read(%struct.net_device* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load i32, i32* @EESIPR, align 4
  %27 = call i32 @sh_eth_read(%struct.net_device* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @EESIPR_ECIIP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @EESR_RX_CHECK, align 4
  %35 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %36 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = load i32, i32* @EESR_ECI, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %42 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = and i32 %33, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %8, align 4
  br label %50

49:                                               ; preds = %2
  br label %138

50:                                               ; preds = %47
  %51 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %52 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* @EESIPR, align 4
  %62 = call i32 @sh_eth_write(%struct.net_device* %60, i32 0, i32 %61)
  br label %138

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @EESR_RX_CHECK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %70 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %69, i32 0, i32 1
  %71 = call i64 @napi_schedule_prep(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @EESR_RX_CHECK, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load i32, i32* @EESIPR, align 4
  %80 = call i32 @sh_eth_write(%struct.net_device* %74, i32 %78, i32 %79)
  %81 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %82 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %81, i32 0, i32 1
  %83 = call i32 @__napi_schedule(i32* %82)
  br label %89

84:                                               ; preds = %68
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @netdev_warn(%struct.net_device* %85, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %73
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %93 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %101 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %99, %102
  %104 = load i32, i32* @EESR, align 4
  %105 = call i32 @sh_eth_write(%struct.net_device* %98, i32 %103, i32 %104)
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = call i32 @sh_eth_tx_free(%struct.net_device* %106, i32 1)
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = call i32 @netif_wake_queue(%struct.net_device* %108)
  br label %110

110:                                              ; preds = %97, %90
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @EESR_ECI, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = call i32 @sh_eth_emac_interrupt(%struct.net_device* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %121 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %118
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.sh_eth_cpu_data*, %struct.sh_eth_cpu_data** %7, align 8
  %129 = getelementptr inbounds %struct.sh_eth_cpu_data, %struct.sh_eth_cpu_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %127, %130
  %132 = load i32, i32* @EESR, align 4
  %133 = call i32 @sh_eth_write(%struct.net_device* %126, i32 %131, i32 %132)
  %134 = load %struct.net_device*, %struct.net_device** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @sh_eth_error(%struct.net_device* %134, i32 %135)
  br label %137

137:                                              ; preds = %125, %118
  br label %138

138:                                              ; preds = %137, %59, %49
  %139 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %140 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sh_eth_read(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sh_eth_write(%struct.net_device*, i32, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @sh_eth_tx_free(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @sh_eth_emac_interrupt(%struct.net_device*) #1

declare dso_local i32 @sh_eth_error(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
