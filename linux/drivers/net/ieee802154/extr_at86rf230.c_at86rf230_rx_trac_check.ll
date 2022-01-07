; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_rx_trac_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_rx_trac_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { i32*, %struct.TYPE_5__, %struct.TYPE_6__, %struct.at86rf230_local* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.at86rf230_local = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CONFIG_IEEE802154_AT86RF230_DEBUGFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"received rx trac status %d\0A\00", align 1
@CMD_FB = common dso_local global i32 0, align 4
@AT86RF2XX_MAX_BUF = common dso_local global i32 0, align 4
@at86rf230_rx_read_frame_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_rx_trac_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_rx_trac_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %9, %struct.at86rf230_state_change** %3, align 8
  %10 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %11 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %10, i32 0, i32 3
  %12 = load %struct.at86rf230_local*, %struct.at86rf230_local** %11, align 8
  store %struct.at86rf230_local* %12, %struct.at86rf230_local** %4, align 8
  %13 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %14 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @CONFIG_IEEE802154_AT86RF230_DEBUGFS, align 4
  %17 = call i64 @IS_ENABLED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @TRAC_MASK(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %43 [
    i32 129, label %25
    i32 128, label %31
    i32 130, label %37
  ]

25:                                               ; preds = %19
  %26 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %27 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %46

31:                                               ; preds = %19
  %32 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %33 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %46

37:                                               ; preds = %19
  %38 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %39 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %46

43:                                               ; preds = %19
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %37, %31, %25
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* @CMD_FB, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @AT86RF2XX_MAX_BUF, align 4
  %52 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %53 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @at86rf230_rx_read_frame_complete, align 4
  %56 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %57 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %60 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %63 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %62, i32 0, i32 2
  %64 = call i32 @spi_async(i32 %61, %struct.TYPE_6__* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %47
  %68 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %69 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 2, i32* %70, align 8
  %71 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %72 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @at86rf230_async_error(%struct.at86rf230_local* %71, %struct.at86rf230_state_change* %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %47
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @TRAC_MASK(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @spi_async(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @at86rf230_async_error(%struct.at86rf230_local*, %struct.at86rf230_state_change*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
