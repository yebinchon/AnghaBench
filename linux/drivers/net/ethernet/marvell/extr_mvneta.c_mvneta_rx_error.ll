; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32 }
%struct.mvneta_rx_desc = type { i32, i32 }

@MVNETA_RXD_ERR_CODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bad rx status %08x (crc error), size=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"bad rx status %08x (overrun error), size=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"bad rx status %08x (max frame length error), size=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"bad rx status %08x (resource error), size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvneta_port*, %struct.mvneta_rx_desc*)* @mvneta_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_rx_error(%struct.mvneta_port* %0, %struct.mvneta_rx_desc* %1) #0 {
  %3 = alloca %struct.mvneta_port*, align 8
  %4 = alloca %struct.mvneta_rx_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.mvneta_port* %0, %struct.mvneta_port** %3, align 8
  store %struct.mvneta_rx_desc* %1, %struct.mvneta_rx_desc** %4, align 8
  %6 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %4, align 8
  %7 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MVNETA_RXD_ERR_CODE_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %48 [
    i32 131, label %12
    i32 129, label %21
    i32 130, label %30
    i32 128, label %39
  ]

12:                                               ; preds = %2
  %13 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %14 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %4, align 8
  %18 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_err(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %23 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %4, align 8
  %27 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28)
  br label %48

30:                                               ; preds = %2
  %31 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %32 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %4, align 8
  %36 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37)
  br label %48

39:                                               ; preds = %2
  %40 = load %struct.mvneta_port*, %struct.mvneta_port** %3, align 8
  %41 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %4, align 8
  %45 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %2, %39, %30, %21, %12
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
