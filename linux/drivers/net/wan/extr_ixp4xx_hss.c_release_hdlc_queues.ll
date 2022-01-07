; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_release_hdlc_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_release_hdlc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.port = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@queue_ids = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @release_hdlc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_hdlc_queues(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @queue_ids, align 8
  %4 = load %struct.port*, %struct.port** %2, align 8
  %5 = getelementptr inbounds %struct.port, %struct.port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @qmgr_release_queue(i32 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @queue_ids, align 8
  %12 = load %struct.port*, %struct.port** %2, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qmgr_release_queue(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @queue_ids, align 8
  %20 = load %struct.port*, %struct.port** %2, align 8
  %21 = getelementptr inbounds %struct.port, %struct.port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qmgr_release_queue(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @queue_ids, align 8
  %28 = load %struct.port*, %struct.port** %2, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qmgr_release_queue(i32 %33)
  %35 = load %struct.port*, %struct.port** %2, align 8
  %36 = getelementptr inbounds %struct.port, %struct.port* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @qmgr_release_queue(i32 %39)
  ret void
}

declare dso_local i32 @qmgr_release_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
