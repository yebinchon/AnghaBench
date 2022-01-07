; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ionic_queue }
%struct.ionic_queue = type { %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_adminq_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_adminq_flush(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca %struct.ionic_queue*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %4 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %5 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store %struct.ionic_queue* %7, %struct.ionic_queue** %3, align 8
  %8 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %9 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  br label %11

11:                                               ; preds = %19, %1
  %12 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %16 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %21 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memset(i32 %24, i32 0, i32 4)
  %26 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %27 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %31 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %35 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.ionic_queue*, %struct.ionic_queue** %3, align 8
  %40 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %39, i32 0, i32 0
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %40, align 8
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %43 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
