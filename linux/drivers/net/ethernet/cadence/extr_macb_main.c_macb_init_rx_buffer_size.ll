; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_rx_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_init_rx_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MACB_RX_BUFFER_SIZE = common dso_local global i64 0, align 8
@RX_BUFFER_MULTIPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"RX buffer must be multiple of %d bytes, expanding\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"mtu [%u] rx_buffer_size [%zu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*, i64)* @macb_init_rx_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_init_rx_buffer_size(%struct.macb* %0, i64 %1) #0 {
  %3 = alloca %struct.macb*, align 8
  %4 = alloca i64, align 8
  store %struct.macb* %0, %struct.macb** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.macb*, %struct.macb** %3, align 8
  %6 = call i32 @macb_is_gem(%struct.macb* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @MACB_RX_BUFFER_SIZE, align 8
  %10 = load %struct.macb*, %struct.macb** %3, align 8
  %11 = getelementptr inbounds %struct.macb, %struct.macb* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.macb*, %struct.macb** %3, align 8
  %15 = getelementptr inbounds %struct.macb, %struct.macb* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.macb*, %struct.macb** %3, align 8
  %17 = getelementptr inbounds %struct.macb, %struct.macb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @RX_BUFFER_MULTIPLE, align 4
  %20 = sext i32 %19 to i64
  %21 = urem i64 %18, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %12
  %24 = load %struct.macb*, %struct.macb** %3, align 8
  %25 = getelementptr inbounds %struct.macb, %struct.macb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* @RX_BUFFER_MULTIPLE, align 4
  %28 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_2__* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.macb*, %struct.macb** %3, align 8
  %30 = getelementptr inbounds %struct.macb, %struct.macb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @RX_BUFFER_MULTIPLE, align 4
  %34 = call i32 @roundup(i32 %32, i32 %33)
  %35 = sext i32 %34 to i64
  %36 = load %struct.macb*, %struct.macb** %3, align 8
  %37 = getelementptr inbounds %struct.macb, %struct.macb* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %23, %12
  br label %39

39:                                               ; preds = %38, %8
  %40 = load %struct.macb*, %struct.macb** %3, align 8
  %41 = getelementptr inbounds %struct.macb, %struct.macb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.macb*, %struct.macb** %3, align 8
  %44 = getelementptr inbounds %struct.macb, %struct.macb* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.macb*, %struct.macb** %3, align 8
  %49 = getelementptr inbounds %struct.macb, %struct.macb* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_2__* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %50)
  ret void
}

declare dso_local i32 @macb_is_gem(%struct.macb*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_2__*, i8*, i32, ...) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
