; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_nodeqp_intrhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_nodeqp_intrhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32 }
%struct.scif_qp = type { i32 }
%struct.scifmsg = type { i64 }

@SCIF_EXIT_ACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_nodeqp_intrhandler(%struct.scif_dev* %0, %struct.scif_qp* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_qp*, align 8
  %5 = alloca %struct.scifmsg, align 8
  %6 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scif_qp* %1, %struct.scif_qp** %4, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load %struct.scif_qp*, %struct.scif_qp** %4, align 8
  %9 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %8, i32 0, i32 0
  %10 = call i32 @scif_rb_get_next(i32* %9, %struct.scifmsg* %5, i32 8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %28

14:                                               ; preds = %7
  %15 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %16 = load %struct.scif_qp*, %struct.scif_qp** %4, align 8
  %17 = call i32 @scif_nodeqp_msg_handler(%struct.scif_dev* %15, %struct.scif_qp* %16, %struct.scifmsg* %5)
  %18 = load i64, i64* @SCIF_EXIT_ACK, align 8
  %19 = getelementptr inbounds %struct.scifmsg, %struct.scifmsg* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.scif_qp*, %struct.scif_qp** %4, align 8
  %25 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %24, i32 0, i32 0
  %26 = call i32 @scif_rb_update_read_ptr(i32* %25)
  br label %27

27:                                               ; preds = %23
  br i1 true, label %7, label %28

28:                                               ; preds = %27, %22, %13
  ret void
}

declare dso_local i32 @scif_rb_get_next(i32*, %struct.scifmsg*, i32) #1

declare dso_local i32 @scif_nodeqp_msg_handler(%struct.scif_dev*, %struct.scif_qp*, %struct.scifmsg*) #1

declare dso_local i32 @scif_rb_update_read_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
