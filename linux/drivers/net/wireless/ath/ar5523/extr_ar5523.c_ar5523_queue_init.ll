; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }
%struct.ar5523_cmd_txq_setup = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"setting up Tx queue\0A\00", align 1
@WDCMSG_SETUP_TX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_queue_init(%struct.ar5523* %0) #0 {
  %2 = alloca %struct.ar5523*, align 8
  %3 = alloca %struct.ar5523_cmd_txq_setup, align 8
  store %struct.ar5523* %0, %struct.ar5523** %2, align 8
  %4 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %5 = call i32 @ar5523_dbg(%struct.ar5523* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = call i8* @cpu_to_be32(i32 0)
  %7 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 2
  store i8* %6, i8** %7, align 8
  %8 = call i8* @cpu_to_be32(i32 56)
  %9 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 1
  store i8* %8, i8** %9, align 8
  %10 = call i8* @cpu_to_be32(i32 0)
  %11 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 6
  store i8* %10, i8** %12, align 8
  %13 = call i8* @cpu_to_be32(i32 3)
  %14 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = call i8* @cpu_to_be32(i32 4)
  %17 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = call i8* @cpu_to_be32(i32 10)
  %20 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = call i8* @cpu_to_be32(i32 0)
  %23 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = call i8* @cpu_to_be32(i32 0)
  %26 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = call i8* @cpu_to_be32(i32 1)
  %29 = getelementptr inbounds %struct.ar5523_cmd_txq_setup, %struct.ar5523_cmd_txq_setup* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %32 = load i32, i32* @WDCMSG_SETUP_TX_QUEUE, align 4
  %33 = call i32 @ar5523_cmd_write(%struct.ar5523* %31, i32 %32, %struct.ar5523_cmd_txq_setup* %3, i32 72, i32 0)
  ret i32 %33
}

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ar5523_cmd_write(%struct.ar5523*, i32, %struct.ar5523_cmd_txq_setup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
