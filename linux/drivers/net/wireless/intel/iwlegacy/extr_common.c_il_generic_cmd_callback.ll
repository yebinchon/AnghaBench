; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_generic_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_generic_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_device_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Bad return from %s (0x%08X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_device_cmd*, %struct.il_rx_pkt*)* @il_generic_cmd_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_generic_cmd_callback(%struct.il_priv* %0, %struct.il_device_cmd* %1, %struct.il_rx_pkt* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_device_cmd*, align 8
  %6 = alloca %struct.il_rx_pkt*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_device_cmd* %1, %struct.il_device_cmd** %5, align 8
  store %struct.il_rx_pkt* %2, %struct.il_rx_pkt** %6, align 8
  %7 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %6, align 8
  %8 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IL_CMD_FAILED_MSK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.il_device_cmd*, %struct.il_device_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.il_device_cmd, %struct.il_device_cmd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @il_get_cmd_string(i32 %18)
  %20 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %6, align 8
  %21 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @IL_ERR(i8*, i32, i32) #1

declare dso_local i32 @il_get_cmd_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
