; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_upload_device_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_upload_device_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i32*, i32 }

@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"== mwifiex dump information to /sys/class/devcoredump start\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"== mwifiex dump information to /sys/class/devcoredump end\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_upload_device_dump(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %3 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %4 = load i32, i32* @MSG, align 4
  %5 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %3, i32 %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @dev_coredumpv(i32 %8, i32* %11, i64 %14, i32 %15)
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %18 = load i32, i32* @MSG, align 4
  %19 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %17, i32 %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @dev_coredumpv(i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
