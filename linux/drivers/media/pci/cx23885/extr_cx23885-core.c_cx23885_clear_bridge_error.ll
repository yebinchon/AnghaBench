; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_clear_bridge_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_clear_bridge_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TC_REQ = common dso_local global i32 0, align 4
@TC_REQ_SET = common dso_local global i32 0, align 4
@VID_B_DMA = common dso_local global i32 0, align 4
@VBI_B_DMA = common dso_local global i32 0, align 4
@VID_C_DMA = common dso_local global i32 0, align 4
@VBI_C_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"dma in progress detected 0x%08x 0x%08x, clearing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*)* @cx23885_clear_bridge_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_clear_bridge_error(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %5 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* @TC_REQ, align 4
  %12 = call i64 @cx_read(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* @TC_REQ_SET, align 4
  %14 = call i64 @cx_read(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* @TC_REQ, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @cx_write(i32 %21, i64 %22)
  %24 = load i32, i32* @TC_REQ_SET, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @cx_write(i32 %24, i64 %25)
  %27 = load i32, i32* @VID_B_DMA, align 4
  %28 = call i64 @cx_read(i32 %27)
  %29 = load i32, i32* @VBI_B_DMA, align 4
  %30 = call i64 @cx_read(i32 %29)
  %31 = load i32, i32* @VID_C_DMA, align 4
  %32 = call i64 @cx_read(i32 %31)
  %33 = load i32, i32* @VBI_C_DMA, align 4
  %34 = call i64 @cx_read(i32 %33)
  %35 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %36 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %9, %20, %17, %10
  ret void
}

declare dso_local i64 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
