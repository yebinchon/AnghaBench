; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_remove_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_remove_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*)* }
%struct.mwifiex_adapter.0 = type opaque

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"info: unregister device\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"info: free adapter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_remove_card(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %4 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %5 = icmp ne %struct.mwifiex_adapter* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = call i32 @mwifiex_uninit_sw(%struct.mwifiex_adapter* %8)
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_init_wakeup(i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14, %7
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %21 = load i32, i32* @INFO, align 4
  %22 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %20, i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %25, align 8
  %27 = icmp ne i32 (%struct.mwifiex_adapter.0*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %31, align 8
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %34 = bitcast %struct.mwifiex_adapter* %33 to %struct.mwifiex_adapter.0*
  %35 = call i32 %32(%struct.mwifiex_adapter.0* %34)
  br label %36

36:                                               ; preds = %28, %19
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %38 = load i32, i32* @INFO, align 4
  %39 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %37, i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %41 = call i32 @mwifiex_free_adapter(%struct.mwifiex_adapter* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %6
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mwifiex_uninit_sw(%struct.mwifiex_adapter*) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_free_adapter(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
