; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_send_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_send_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.scif_dev = type { i64, i32 }
%struct.scifmsg = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@OP_IN_PROGRESS = common dso_local global i64 0, align 8
@SCIF_EXIT = common dso_local global i32 0, align 4
@scif_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@OP_COMPLETED = common dso_local global i64 0, align 8
@SCIF_NODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@OP_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_send_exit(%struct.scif_dev* %0) #0 {
  %2 = alloca %struct.scif_dev*, align 8
  %3 = alloca %struct.scifmsg, align 4
  %4 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %2, align 8
  %5 = load i64, i64* @OP_IN_PROGRESS, align 8
  %6 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %7 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load i32, i32* @SCIF_EXIT, align 4
  %9 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 1), align 4
  %11 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %14 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %19 = call i32 @scif_nodeqp_send(%struct.scif_dev* %18, %struct.scifmsg* %3)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %33

23:                                               ; preds = %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0), align 4
  %25 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %26 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OP_COMPLETED, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @SCIF_NODE_ALIVE_TIMEOUT, align 4
  %32 = call i32 @wait_event_timeout(i32 %24, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %22
  %34 = load i64, i64* @OP_IDLE, align 8
  %35 = load %struct.scif_dev*, %struct.scif_dev** %2, align 8
  %36 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  ret void
}

declare dso_local i32 @scif_nodeqp_send(%struct.scif_dev*, %struct.scifmsg*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
