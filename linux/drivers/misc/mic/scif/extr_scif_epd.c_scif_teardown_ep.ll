; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_teardown_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_epd.c_scif_teardown_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.scif_qp* }
%struct.scif_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.scif_qp* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_teardown_ep(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.scif_endpt*, align 8
  %4 = alloca %struct.scif_qp*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.scif_endpt*
  store %struct.scif_endpt* %6, %struct.scif_endpt** %3, align 8
  %7 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %8 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.scif_qp*, %struct.scif_qp** %9, align 8
  store %struct.scif_qp* %10, %struct.scif_qp** %4, align 8
  %11 = load %struct.scif_qp*, %struct.scif_qp** %4, align 8
  %12 = icmp ne %struct.scif_qp* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %15 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %18 = call i32 @scif_cleanup_ep_qp(%struct.scif_endpt* %17)
  %19 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %20 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.scif_qp*, %struct.scif_qp** %4, align 8
  %23 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.scif_qp*, %struct.scif_qp** %24, align 8
  %26 = call i32 @kfree(%struct.scif_qp* %25)
  %27 = load %struct.scif_qp*, %struct.scif_qp** %4, align 8
  %28 = call i32 @kfree(%struct.scif_qp* %27)
  br label %29

29:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_cleanup_ep_qp(%struct.scif_endpt*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.scif_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
