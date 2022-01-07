; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_async_state_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_async_state_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { i64*, i64, i32 (i8*)*, i32, %struct.at86rf230_local* }
%struct.at86rf230_local = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRX_STATE_MASK = common dso_local global i64 0, align 8
@STATE_BUSY_RX_AACK = common dso_local global i64 0, align 8
@STATE_RX_AACK_ON = common dso_local global i64 0, align 8
@STATE_TX_ON = common dso_local global i64 0, align 8
@STATE_TRX_OFF = common dso_local global i64 0, align 8
@AT86RF2XX_MAX_TX_RETRIES = common dso_local global i64 0, align 8
@STATE_FORCE_TRX_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"unexcept state change from 0x%02x to 0x%02x. Actual state: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_async_state_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_async_state_assert(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %9, %struct.at86rf230_state_change** %3, align 8
  %10 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %11 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %10, i32 0, i32 4
  %12 = load %struct.at86rf230_local*, %struct.at86rf230_local** %11, align 8
  store %struct.at86rf230_local* %12, %struct.at86rf230_local** %4, align 8
  %13 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %14 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %5, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TRX_STATE_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %23 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %86

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @STATE_BUSY_RX_AACK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %32 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STATE_RX_AACK_ON, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %87

37:                                               ; preds = %30
  %38 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %39 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @STATE_TX_ON, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %45 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @STATE_TRX_OFF, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %43, %37
  %50 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %51 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %54 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AT86RF2XX_MAX_TX_RETRIES, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64, i64* @STATE_FORCE_TRX_OFF, align 8
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %58, %49
  %61 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %62 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %66 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %69 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %68, i32 0, i32 2
  %70 = load i32 (i8*)*, i32 (i8*)** %69, align 8
  %71 = call i32 @at86rf230_async_state_change(%struct.at86rf230_local* %65, %struct.at86rf230_state_change* %66, i64 %67, i32 (i8*)* %70)
  br label %98

72:                                               ; preds = %43
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %75 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %79 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %82 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @dev_warn(i32* %77, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %80, i64 %83, i64 %84)
  br label %86

86:                                               ; preds = %73, %1
  br label %87

87:                                               ; preds = %86, %36
  %88 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %89 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %88, i32 0, i32 2
  %90 = load i32 (i8*)*, i32 (i8*)** %89, align 8
  %91 = icmp ne i32 (i8*)* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %94 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %93, i32 0, i32 2
  %95 = load i32 (i8*)*, i32 (i8*)** %94, align 8
  %96 = load i8*, i8** %2, align 8
  %97 = call i32 %95(i8* %96)
  br label %98

98:                                               ; preds = %60, %92, %87
  ret void
}

declare dso_local i32 @at86rf230_async_state_change(%struct.at86rf230_local*, %struct.at86rf230_state_change*, i64, i32 (i8*)*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
