; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_tx_trac_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_tx_trac_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { i32*, %struct.at86rf230_local* }
%struct.at86rf230_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@CONFIG_IEEE802154_AT86RF230_DEBUGFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"received tx trac status %d\0A\00", align 1
@STATE_TX_ON = common dso_local global i32 0, align 4
@at86rf230_tx_on = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_tx_trac_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_tx_trac_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %7, %struct.at86rf230_state_change** %3, align 8
  %8 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %9 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %8, i32 0, i32 1
  %10 = load %struct.at86rf230_local*, %struct.at86rf230_local** %9, align 8
  store %struct.at86rf230_local* %10, %struct.at86rf230_local** %4, align 8
  %11 = load i32, i32* @CONFIG_IEEE802154_AT86RF230_DEBUGFS, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %1
  %15 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %16 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TRAC_MASK(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %52 [
    i32 129, label %22
    i32 128, label %28
    i32 132, label %34
    i32 130, label %40
    i32 131, label %46
  ]

22:                                               ; preds = %14
  %23 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %24 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %55

28:                                               ; preds = %14
  %29 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %30 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %55

34:                                               ; preds = %14
  %35 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %36 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %55

40:                                               ; preds = %14
  %41 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %42 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %55

46:                                               ; preds = %14
  %47 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %48 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %55

52:                                               ; preds = %14
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %46, %40, %34, %28, %22
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %58 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %59 = load i32, i32* @STATE_TX_ON, align 4
  %60 = load i32, i32* @at86rf230_tx_on, align 4
  %61 = call i32 @at86rf230_async_state_change(%struct.at86rf230_local* %57, %struct.at86rf230_state_change* %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @TRAC_MASK(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @at86rf230_async_state_change(%struct.at86rf230_local*, %struct.at86rf230_state_change*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
