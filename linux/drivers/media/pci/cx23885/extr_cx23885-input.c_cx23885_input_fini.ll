; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-input.c_cx23885_input_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_input_fini(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %3 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %4 = call i32 @cx23885_input_ir_stop(%struct.cx23885_dev* %3)
  %5 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @rc_unregister_device(i32 %15)
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @kfree(%struct.TYPE_2__* %21)
  %23 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %24 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @kfree(%struct.TYPE_2__* %27)
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %30 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @kfree(%struct.TYPE_2__* %31)
  %33 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %34 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %33, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %34, align 8
  br label %35

35:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @cx23885_input_ir_stop(%struct.cx23885_dev*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
