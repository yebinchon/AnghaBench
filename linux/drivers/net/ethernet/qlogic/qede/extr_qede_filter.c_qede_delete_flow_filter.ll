; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_delete_flow_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_delete_flow_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_arfs_fltr_node = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_delete_flow_filter(%struct.qede_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qede_arfs_fltr_node*, align 8
  %6 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.qede_arfs_fltr_node* null, %struct.qede_arfs_fltr_node** %5, align 8
  %7 = load i32, i32* @EPERM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %10 = call i32 @__qede_lock(%struct.qede_dev* %9)
  %11 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %12 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %18 = call i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev* %17, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.qede_arfs_fltr_node* @qede_get_arfs_fltr_by_loc(i32 %18, i32 %19)
  store %struct.qede_arfs_fltr_node* %20, %struct.qede_arfs_fltr_node** %5, align 8
  %21 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %22 = icmp ne %struct.qede_arfs_fltr_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %41

24:                                               ; preds = %16
  %25 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %26 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %27 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %28 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @qede_configure_arfs_fltr(%struct.qede_dev* %25, %struct.qede_arfs_fltr_node* %26, i32 %29, i32 0)
  %31 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %32 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %33 = call i32 @qede_poll_arfs_filter_config(%struct.qede_dev* %31, %struct.qede_arfs_fltr_node* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %38 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %5, align 8
  %39 = call i32 @qede_dequeue_fltr_and_config_searcher(%struct.qede_dev* %37, %struct.qede_arfs_fltr_node* %38)
  br label %40

40:                                               ; preds = %36, %24
  br label %41

41:                                               ; preds = %40, %23, %15
  %42 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %43 = call i32 @__qede_unlock(%struct.qede_dev* %42)
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local %struct.qede_arfs_fltr_node* @qede_get_arfs_fltr_by_loc(i32, i32) #1

declare dso_local i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev*, i32) #1

declare dso_local i32 @qede_configure_arfs_fltr(%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i32, i32) #1

declare dso_local i32 @qede_poll_arfs_filter_config(%struct.qede_dev*, %struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @qede_dequeue_fltr_and_config_searcher(%struct.qede_dev*, %struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
