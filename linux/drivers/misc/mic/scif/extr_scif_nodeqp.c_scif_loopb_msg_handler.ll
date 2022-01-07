; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_loopb_msg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_loopb_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scif_dev = type { i32 }
%struct.scif_qp = type { i32, i32 }
%struct.scif_loopb_msg = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_loopb_msg_handler(%struct.scif_dev* %0, %struct.scif_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scif_dev*, align 8
  %5 = alloca %struct.scif_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scif_loopb_msg*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %4, align 8
  store %struct.scif_qp* %1, %struct.scif_qp** %5, align 8
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.scif_loopb_msg* @kmalloc(i32 8, i32 %9)
  store %struct.scif_loopb_msg* %10, %struct.scif_loopb_msg** %7, align 8
  %11 = load %struct.scif_loopb_msg*, %struct.scif_loopb_msg** %7, align 8
  %12 = icmp ne %struct.scif_loopb_msg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %8
  %17 = load %struct.scif_qp*, %struct.scif_qp** %5, align 8
  %18 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %17, i32 0, i32 0
  %19 = load %struct.scif_loopb_msg*, %struct.scif_loopb_msg** %7, align 8
  %20 = getelementptr inbounds %struct.scif_loopb_msg, %struct.scif_loopb_msg* %19, i32 0, i32 1
  %21 = call i32 @scif_rb_get_next(i32* %18, i32* %20, i32 4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.scif_loopb_msg*, %struct.scif_loopb_msg** %7, align 8
  %27 = call i32 @kfree(%struct.scif_loopb_msg* %26)
  %28 = load %struct.scif_qp*, %struct.scif_qp** %5, align 8
  %29 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %28, i32 0, i32 0
  %30 = call i32 @scif_rb_update_read_ptr(i32* %29)
  br label %50

31:                                               ; preds = %16
  %32 = load %struct.scif_qp*, %struct.scif_qp** %5, align 8
  %33 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.scif_loopb_msg*, %struct.scif_loopb_msg** %7, align 8
  %36 = getelementptr inbounds %struct.scif_loopb_msg, %struct.scif_loopb_msg* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 2))
  %38 = load %struct.scif_qp*, %struct.scif_qp** %5, align 8
  %39 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 1), align 4
  %42 = call i32 @queue_work(i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0))
  %43 = load %struct.scif_qp*, %struct.scif_qp** %5, align 8
  %44 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %43, i32 0, i32 0
  %45 = call i32 @scif_rb_update_read_ptr(i32* %44)
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %8, label %50

50:                                               ; preds = %46, %25
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.scif_loopb_msg* @kmalloc(i32, i32) #1

declare dso_local i32 @scif_rb_get_next(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.scif_loopb_msg*) #1

declare dso_local i32 @scif_rb_update_read_ptr(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
