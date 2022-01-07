; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_hdl_pm_debug_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_hdl_pm_debug_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IL_RX_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Dumping %d bytes of unhandled notification for %s:\0A\00", align 1
@IL_DL_RADIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_hdl_pm_debug_stats(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %7 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %8 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %7)
  store %struct.il_rx_pkt* %8, %struct.il_rx_pkt** %5, align 8
  %9 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %10 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = load i32, i32* @IL_RX_FRAME_SIZE_MSK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %17 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @il_get_cmd_string(i32 %19)
  %21 = call i32 @D_RADIO(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %23 = load i32, i32* @IL_DL_RADIO, align 4
  %24 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %25 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @il_print_hex_dump(%struct.il_priv* %22, i32 %23, i32 %27, i32 %28)
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @D_RADIO(i8*, i32, i32) #1

declare dso_local i32 @il_get_cmd_string(i32) #1

declare dso_local i32 @il_print_hex_dump(%struct.il_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
