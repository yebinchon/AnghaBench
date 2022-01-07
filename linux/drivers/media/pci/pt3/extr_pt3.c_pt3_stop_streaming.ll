; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3.c_pt3_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"PT3: failed to stop streaming of adap:%d/FE:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt3_adapter*)* @pt3_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt3_stop_streaming(%struct.pt3_adapter* %0) #0 {
  %2 = alloca %struct.pt3_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %2, align 8
  %4 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %5 = call i32 @pt3_stop_dma(%struct.pt3_adapter* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_warn(i32 %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  %24 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kthread_stop(i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @pt3_stop_dma(%struct.pt3_adapter*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @kthread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
