; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_clr_err_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_canfd.c_pucan_clr_err_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_canfd_priv = type { i32 }
%struct.pucan_wr_err_cnt = type { i64, i64, i32 }

@PUCAN_CMD_WR_ERR_CNT = common dso_local global i32 0, align 4
@PUCAN_WRERRCNT_TE = common dso_local global i32 0, align 4
@PUCAN_WRERRCNT_RE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_canfd_priv*)* @pucan_clr_err_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pucan_clr_err_counters(%struct.peak_canfd_priv* %0) #0 {
  %2 = alloca %struct.peak_canfd_priv*, align 8
  %3 = alloca %struct.pucan_wr_err_cnt*, align 8
  store %struct.peak_canfd_priv* %0, %struct.peak_canfd_priv** %2, align 8
  %4 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %5 = call i32 @pucan_init_cmd(%struct.peak_canfd_priv* %4)
  %6 = load i32, i32* @PUCAN_CMD_WR_ERR_CNT, align 4
  %7 = call %struct.pucan_wr_err_cnt* @pucan_add_cmd(i32 %5, i32 %6)
  store %struct.pucan_wr_err_cnt* %7, %struct.pucan_wr_err_cnt** %3, align 8
  %8 = load i32, i32* @PUCAN_WRERRCNT_TE, align 4
  %9 = load i32, i32* @PUCAN_WRERRCNT_RE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = load %struct.pucan_wr_err_cnt*, %struct.pucan_wr_err_cnt** %3, align 8
  %13 = getelementptr inbounds %struct.pucan_wr_err_cnt, %struct.pucan_wr_err_cnt* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.pucan_wr_err_cnt*, %struct.pucan_wr_err_cnt** %3, align 8
  %15 = getelementptr inbounds %struct.pucan_wr_err_cnt, %struct.pucan_wr_err_cnt* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.pucan_wr_err_cnt*, %struct.pucan_wr_err_cnt** %3, align 8
  %17 = getelementptr inbounds %struct.pucan_wr_err_cnt, %struct.pucan_wr_err_cnt* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.peak_canfd_priv*, %struct.peak_canfd_priv** %2, align 8
  %19 = call i32 @pucan_write_cmd(%struct.peak_canfd_priv* %18)
  ret i32 %19
}

declare dso_local %struct.pucan_wr_err_cnt* @pucan_add_cmd(i32, i32) #1

declare dso_local i32 @pucan_init_cmd(%struct.peak_canfd_priv*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pucan_write_cmd(%struct.peak_canfd_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
