; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_get_stats_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_get_stats_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MLXSW_SP_PTP_PORT_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_ptp_port_stats = common dso_local global %struct.TYPE_2__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp1_get_stats_strings(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MLXSW_SP_PTP_PORT_STATS_LEN, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = load i32**, i32*** %2, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mlxsw_sp_ptp_port_stats, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %18 = call i32 @memcpy(i32* %10, i32 %16, i32 %17)
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %20 = load i32**, i32*** %2, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %20, align 8
  br label %24

24:                                               ; preds = %8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
