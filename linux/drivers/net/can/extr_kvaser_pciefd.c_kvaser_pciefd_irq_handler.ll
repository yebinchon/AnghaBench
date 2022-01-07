; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_IRQ_ALL_MSK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@KVASER_PCIEFD_IRQ_SRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"IRQ mask points to unallocated controller\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @kvaser_pciefd_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kvaser_pciefd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.kvaser_pciefd*
  store %struct.kvaser_pciefd* %10, %struct.kvaser_pciefd** %6, align 8
  %11 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %6, align 8
  %12 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KVASER_PCIEFD_IRQ_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @KVASER_PCIEFD_IRQ_ALL_MSK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %81

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @KVASER_PCIEFD_IRQ_SRB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %6, align 8
  %30 = call i32 @kvaser_pciefd_receive_irq(%struct.kvaser_pciefd* %29)
  br label %31

31:                                               ; preds = %28, %23
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %69, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %6, align 8
  %35 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %32
  %39 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %6, align 8
  %40 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %6, align 8
  %49 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %72

53:                                               ; preds = %38
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %6, align 8
  %61 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @kvaser_pciefd_transmit_irq(i32 %66)
  br label %68

68:                                               ; preds = %59, %53
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %32

72:                                               ; preds = %47, %32
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %6, align 8
  %75 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @KVASER_PCIEFD_IRQ_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @iowrite32(i32 %73, i64 %78)
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %21
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @kvaser_pciefd_receive_irq(%struct.kvaser_pciefd*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kvaser_pciefd_transmit_irq(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
