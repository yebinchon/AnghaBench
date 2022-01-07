; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_get_nrxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_get_nrxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i64 }

@MVPP22 = common dso_local global i64 0, align 8
@queue_mode = common dso_local global i64 0, align 8
@MVPP2_QDIST_SINGLE_MODE = common dso_local global i64 0, align 8
@MVPP2_PORT_MAX_RXQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*)* @mvpp2_get_nrxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_get_nrxqs(%struct.mvpp2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  %5 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %6 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MVPP22, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i64, i64* @queue_mode, align 8
  %12 = load i64, i64* @MVPP2_QDIST_SINGLE_MODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %26

15:                                               ; preds = %10, %1
  %16 = call i32 (...) @num_possible_cpus()
  %17 = add nsw i32 %16, 3
  %18 = and i32 %17, -4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MVPP2_PORT_MAX_RXQ, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @MVPP2_PORT_MAX_RXQ, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @num_possible_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
