; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_async_state_change_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_async_state_change_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { i64, i64, i32 (i8*)*, i64*, %struct.at86rf230_local* }
%struct.at86rf230_local = type { i32 }

@TRX_STATE_MASK = common dso_local global i64 0, align 8
@STATE_TRANSITION_IN_PROGRESS = common dso_local global i64 0, align 8
@RG_TRX_STATUS = common dso_local global i32 0, align 4
@RG_TRX_STATE = common dso_local global i32 0, align 4
@at86rf230_async_state_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_async_state_change_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_async_state_change_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %8, %struct.at86rf230_state_change** %3, align 8
  %9 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %10 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %9, i32 0, i32 4
  %11 = load %struct.at86rf230_local*, %struct.at86rf230_local** %10, align 8
  store %struct.at86rf230_local* %11, %struct.at86rf230_local** %4, align 8
  %12 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %13 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %5, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TRX_STATE_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @STATE_TRANSITION_IN_PROGRESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = call i32 @udelay(i32 1)
  %25 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %26 = load i32, i32* @RG_TRX_STATUS, align 4
  %27 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %28 = call i32 @at86rf230_async_read_reg(%struct.at86rf230_local* %25, i32 %26, %struct.at86rf230_state_change* %27, void (i8*)* @at86rf230_async_state_change_start)
  br label %59

29:                                               ; preds = %1
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %32 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %37 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %36, i32 0, i32 2
  %38 = load i32 (i8*)*, i32 (i8*)** %37, align 8
  %39 = icmp ne i32 (i8*)* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %42 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %41, i32 0, i32 2
  %43 = load i32 (i8*)*, i32 (i8*)** %42, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 %43(i8* %44)
  br label %46

46:                                               ; preds = %40, %35
  br label %59

47:                                               ; preds = %29
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %50 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %52 = load i32, i32* @RG_TRX_STATE, align 4
  %53 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %54 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %57 = load i32, i32* @at86rf230_async_state_delay, align 4
  %58 = call i32 @at86rf230_async_write_reg(%struct.at86rf230_local* %51, i32 %52, i64 %55, %struct.at86rf230_state_change* %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %46, %23
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @at86rf230_async_read_reg(%struct.at86rf230_local*, i32, %struct.at86rf230_state_change*, void (i8*)*) #1

declare dso_local i32 @at86rf230_async_write_reg(%struct.at86rf230_local*, i32, i64, %struct.at86rf230_state_change*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
