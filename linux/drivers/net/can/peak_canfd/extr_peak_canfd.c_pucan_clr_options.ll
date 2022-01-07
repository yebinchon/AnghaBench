; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_clr_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_clr_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { i32 }
%struct.pucan_options = type { i32 }

@PUCAN_CMD_CLR_DIS_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*, i32)* @pucan_clr_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pucan_clr_options(%struct.peak_canfd_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.peak_canfd_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pucan_options*, align 8
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %7 = call i32 @pucan_init_cmd(%struct.peak_canfd_priv* %6)
  %8 = load i32, i32* @PUCAN_CMD_CLR_DIS_OPTION, align 4
  %9 = call %struct.pucan_options* @pucan_add_cmd(i32 %7, i32 %8)
  store %struct.pucan_options* %9, %struct.pucan_options** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = load %struct.pucan_options*, %struct.pucan_options** %5, align 8
  %13 = getelementptr inbounds %struct.pucan_options, %struct.pucan_options* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %3, align 8
  %15 = call i32 @pucan_write_cmd(%struct.peak_canfd_priv* %14)
  ret i32 %15
}

declare dso_local %struct.pucan_options* @pucan_add_cmd(i32, i32) #1

declare dso_local i32 @pucan_init_cmd(%struct.peak_canfd_priv*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pucan_write_cmd(%struct.peak_canfd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
