; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_setup_loopback_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_setup_loopback_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.scif_dev*, i32, i32, i32 }
%struct.scif_dev = type { i32, %struct.scif_qp* }
%struct.scif_qp = type { i32, i32, i32, i32, i32, i32, i32 }

@scif_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"SCIF LOOPB %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@scif_loopb_wq_handler = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCIFEP_MAGIC = common dso_local global i32 0, align 4
@SCIF_NODE_QP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_setup_loopback_qp(%struct.scif_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.scif_qp*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %8 = call i32 @scif_setup_intr_wq(%struct.scif_dev* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %101

12:                                               ; preds = %1
  %13 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 5))
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 4), align 4
  %15 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %16 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @snprintf(i32 %14, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 4), align 4
  %20 = call i32 @alloc_ordered_workqueue(i32 %19, i32 0)
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 1), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 1), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %98

26:                                               ; preds = %12
  %27 = load i32, i32* @scif_loopb_wq_handler, align 4
  %28 = call i32 @INIT_WORK(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 3), i32 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 28, i32 %29)
  %31 = bitcast i8* %30 to %struct.scif_qp*
  %32 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %33 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %32, i32 0, i32 1
  store %struct.scif_qp* %31, %struct.scif_qp** %33, align 8
  %34 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %35 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %34, i32 0, i32 1
  %36 = load %struct.scif_qp*, %struct.scif_qp** %35, align 8
  %37 = icmp ne %struct.scif_qp* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %95

41:                                               ; preds = %26
  %42 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %43 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %42, i32 0, i32 1
  %44 = load %struct.scif_qp*, %struct.scif_qp** %43, align 8
  store %struct.scif_qp* %44, %struct.scif_qp** %6, align 8
  %45 = load i32, i32* @SCIFEP_MAGIC, align 4
  %46 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %47 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %49 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %48, i32 0, i32 5
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %52 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %51, i32 0, i32 4
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load i32, i32* @SCIF_NODE_QP_SIZE, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 %54, i32 %55)
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %41
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %90

62:                                               ; preds = %41
  %63 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %64 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %63, i32 0, i32 3
  %65 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %66 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %65, i32 0, i32 1
  %67 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %68 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %67, i32 0, i32 0
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @SCIF_NODE_QP_SIZE, align 4
  %71 = call i32 @get_count_order(i32 %70)
  %72 = call i32 @scif_rb_init(i32* %64, i32* %66, i32* %68, i8* %69, i32 %71)
  %73 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %74 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %73, i32 0, i32 2
  %75 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %76 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %75, i32 0, i32 1
  %77 = load %struct.scif_qp*, %struct.scif_qp** %6, align 8
  %78 = getelementptr inbounds %struct.scif_qp, %struct.scif_qp* %77, i32 0, i32 0
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* @SCIF_NODE_QP_SIZE, align 4
  %81 = call i32 @get_count_order(i32 %80)
  %82 = call i32 @scif_rb_init(i32* %74, i32* %76, i32* %78, i8* %79, i32 %81)
  %83 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %84 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 0), align 8
  %86 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %87 = call i32 @scif_peer_register_device(%struct.scif_dev* %86)
  %88 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  store %struct.scif_dev* %88, %struct.scif_dev** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 2), align 8
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %103

90:                                               ; preds = %59
  %91 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %92 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %91, i32 0, i32 1
  %93 = load %struct.scif_qp*, %struct.scif_qp** %92, align 8
  %94 = call i32 @kfree(%struct.scif_qp* %93)
  br label %95

95:                                               ; preds = %90, %38
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scif_info, i32 0, i32 1), align 4
  %97 = call i32 @destroy_workqueue(i32 %96)
  br label %98

98:                                               ; preds = %95, %23
  %99 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %100 = call i32 @scif_destroy_intr_wq(%struct.scif_dev* %99)
  br label %101

101:                                              ; preds = %98, %11
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %62
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @scif_setup_intr_wq(%struct.scif_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @scif_rb_init(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @scif_peer_register_device(%struct.scif_dev*) #1

declare dso_local i32 @kfree(%struct.scif_qp*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @scif_destroy_intr_wq(%struct.scif_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
