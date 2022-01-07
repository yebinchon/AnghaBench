; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_in_work_orders.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_in_work_orders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.cx18* }

@CX18_MAX_IN_WORK_ORDERS = common dso_local global i32 0, align 4
@cx18_in_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_init_in_work_orders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_init_in_work_orders(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CX18_MAX_IN_WORK_ORDERS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load %struct.cx18*, %struct.cx18** %2, align 8
  %10 = load %struct.cx18*, %struct.cx18** %2, align 8
  %11 = getelementptr inbounds %struct.cx18, %struct.cx18* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.cx18* %9, %struct.cx18** %16, align 8
  %17 = load %struct.cx18*, %struct.cx18** %2, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cx18*, %struct.cx18** %2, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %19, i32* %26, align 4
  %27 = load %struct.cx18*, %struct.cx18** %2, align 8
  %28 = getelementptr inbounds %struct.cx18, %struct.cx18* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @cx18_in_work_handler, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %4

39:                                               ; preds = %4
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
