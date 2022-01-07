; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_init_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_init_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ocelot_ptp_clock_info = common dso_local global i32 0, align 4
@SYS_PTP_CFG = common dso_local global i32 0, align 4
@ANA_TABLES_PTP_ID_LOW = common dso_local global i32 0, align 4
@ANA_TABLES_PTP_ID_HIGH = common dso_local global i32 0, align 4
@PTP_CFG_MISC_PTP_EN = common dso_local global i32 0, align 4
@PTP_CFG_MISC = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot*)* @ocelot_init_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_init_timestamp(%struct.ocelot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocelot*, align 8
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  %4 = load i32, i32* @ocelot_ptp_clock_info, align 4
  %5 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %6 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 4
  %7 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %8 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %7, i32 0, i32 3
  %9 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %10 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ptp_clock_register(i32* %8, i32 %11)
  %13 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %14 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %16 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %22 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %1
  %26 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %27 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %50

31:                                               ; preds = %25
  %32 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %33 = call i32 @SYS_PTP_CFG_PTP_STAMP_WID(i32 30)
  %34 = load i32, i32* @SYS_PTP_CFG, align 4
  %35 = call i32 @ocelot_write(%struct.ocelot* %32, i32 %33, i32 %34)
  %36 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %37 = load i32, i32* @ANA_TABLES_PTP_ID_LOW, align 4
  %38 = call i32 @ocelot_write(%struct.ocelot* %36, i32 -1, i32 %37)
  %39 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %40 = load i32, i32* @ANA_TABLES_PTP_ID_HIGH, align 4
  %41 = call i32 @ocelot_write(%struct.ocelot* %39, i32 -1, i32 %40)
  %42 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %43 = load i32, i32* @PTP_CFG_MISC_PTP_EN, align 4
  %44 = load i32, i32* @PTP_CFG_MISC, align 4
  %45 = call i32 @ocelot_write(%struct.ocelot* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_EVENT, align 4
  %47 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %48 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %31, %30, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ptp_clock_register(i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @SYS_PTP_CFG_PTP_STAMP_WID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
