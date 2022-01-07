; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ican3_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ican3_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ican3_dev*
  store %struct.ican3_dev* %9, %struct.ican3_dev** %6, align 8
  %10 = load %struct.ican3_dev*, %struct.ican3_dev** %6, align 8
  %11 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @ioread8(i32* %13)
  %15 = load %struct.ican3_dev*, %struct.ican3_dev** %6, align 8
  %16 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 1, %17
  %19 = and i32 %14, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ican3_dev*, %struct.ican3_dev** %6, align 8
  %22 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 1, %23
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.ican3_dev*, %struct.ican3_dev** %6, align 8
  %30 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @ioread8(i32* %32)
  %34 = load %struct.ican3_dev*, %struct.ican3_dev** %6, align 8
  %35 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  %38 = load %struct.ican3_dev*, %struct.ican3_dev** %6, align 8
  %39 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @iowrite8(i32 %37, i32* %41)
  %43 = load %struct.ican3_dev*, %struct.ican3_dev** %6, align 8
  %44 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %43, i32 0, i32 1
  %45 = call i32 @napi_schedule(i32* %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %28, %26
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
