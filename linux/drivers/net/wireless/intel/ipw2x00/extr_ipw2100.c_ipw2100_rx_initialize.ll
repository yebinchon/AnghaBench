; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_rx_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_rx_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_3__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IPW_MEM_HOST_SHARED_RX_BD_BASE = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_RX_BD_SIZE = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_RX_READ_INDEX = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_RX_WRITE_INDEX = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_RX_STATUS_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*)* @ipw2100_rx_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw2100_rx_initialize(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %3 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  %12 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i64 %19, i64* %22, align 8
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %24 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %23, i32 0, i32 3
  %25 = call i32 @INIT_STAT(i32* %24)
  %26 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %26, i32 0, i32 3
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @SET_STAT(i32* %27, i64 %31)
  %33 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %34 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %34, i32 0, i32 2
  %36 = load i32, i32* @IPW_MEM_HOST_SHARED_RX_BD_BASE, align 4
  %37 = load i32, i32* @IPW_MEM_HOST_SHARED_RX_BD_SIZE, align 4
  %38 = load i32, i32* @IPW_MEM_HOST_SHARED_RX_READ_INDEX, align 4
  %39 = load i32, i32* @IPW_MEM_HOST_SHARED_RX_WRITE_INDEX, align 4
  %40 = call i32 @bd_queue_initialize(%struct.ipw2100_priv* %33, %struct.TYPE_4__* %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IPW_MEM_HOST_SHARED_RX_STATUS_BASE, align 4
  %45 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %46 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @write_register(i32 %43, i32 %44, i32 %48)
  %50 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @INIT_STAT(i32*) #1

declare dso_local i32 @SET_STAT(i32*, i64) #1

declare dso_local i32 @bd_queue_initialize(%struct.ipw2100_priv*, %struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @write_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
