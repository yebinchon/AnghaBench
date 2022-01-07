; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@DEV_CNTRL2 = common dso_local global i32 0, align 4
@VID_CHANNEL_NUM = common dso_local global i32 0, align 4
@VID_UPSTREAM_SRAM_CHANNEL_I = common dso_local global i32 0, align 4
@VID_UPSTREAM_SRAM_CHANNEL_J = common dso_local global i32 0, align 4
@AUD_INT_DMA_CTL = common dso_local global i32 0, align 4
@UART_CTL = common dso_local global i32 0, align 4
@PCI_INT_MSK = common dso_local global i32 0, align 4
@AUD_A_INT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*)* @cx25821_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_shutdown(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  %4 = load i32, i32* @DEV_CNTRL2, align 4
  %5 = call i32 @cx_write(i32 %4, i32 0)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VID_CHANNEL_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %12 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cx_write(i32 %20, i32 0)
  %22 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %23 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cx_write(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %10
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load i32, i32* @VID_UPSTREAM_SRAM_CHANNEL_I, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %65, %36
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @VID_UPSTREAM_SRAM_CHANNEL_J, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %44 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cx_write(i32 %52, i32 0)
  %54 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %55 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cx_write(i32 %63, i32 0)
  br label %65

65:                                               ; preds = %42
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %38

68:                                               ; preds = %38
  %69 = load i32, i32* @AUD_INT_DMA_CTL, align 4
  %70 = call i32 @cx_write(i32 %69, i32 0)
  %71 = load i32, i32* @UART_CTL, align 4
  %72 = call i32 @cx_write(i32 %71, i32 0)
  %73 = load i32, i32* @PCI_INT_MSK, align 4
  %74 = call i32 @cx_write(i32 %73, i32 0)
  %75 = load i32, i32* @AUD_A_INT_MSK, align 4
  %76 = call i32 @cx_write(i32 %75, i32 0)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
