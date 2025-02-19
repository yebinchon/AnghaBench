; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_edmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_edmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to get external DMA channel.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci*)* @dw_mci_edmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_edmac_init(%struct.dw_mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_mci*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_3__* @kzalloc(i32 4, i32 %4)
  %6 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %7 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %6, i32 0, i32 0
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %7, align 8
  %8 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %9 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %17 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dma_request_slave_channel(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %21 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %25 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %15
  %31 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %32 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %36 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @kfree(%struct.TYPE_3__* %37)
  %39 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %40 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %39, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %40, align 8
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %30, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_request_slave_channel(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
