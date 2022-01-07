; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_hs_activated_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_hs_activated_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4
@RXREOR_FORCE_NO_DROP = common dso_local global i32 0, align 4
@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"event: hs_activated\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"event: HS not configured\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"event: hs_deactivated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_hs_activated_event(%struct.mwifiex_private* %0, i64 %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %46

7:                                                ; preds = %2
  %8 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = call i64 @test_bit(i32 %8, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %7
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %21 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* @RXREOR_FORCE_NO_DROP, align 4
  %24 = call i32 @mwifiex_update_rxreor_flags(%struct.TYPE_3__* %22, i32 %23)
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* @EVENT, align 4
  %29 = call i32 @mwifiex_dbg(%struct.TYPE_3__* %27, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = call i32 @wake_up_interruptible(i32* %37)
  br label %45

39:                                               ; preds = %7
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* @EVENT, align 4
  %44 = call i32 @mwifiex_dbg(%struct.TYPE_3__* %42, i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %15
  br label %56

46:                                               ; preds = %2
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %48 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* @EVENT, align 4
  %51 = call i32 @mwifiex_dbg(%struct.TYPE_3__* %49, i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %46, %45
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_update_rxreor_flags(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
