; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_free_arfs_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_free_arfs_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qede_arfs_fltr_node = type { i64, %struct.qede_arfs_fltr_node* }

@QEDE_RFS_MAX_FLTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_arfs_fltr_node*)* @qede_free_arfs_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_free_arfs_filter(%struct.qede_dev* %0, %struct.qede_arfs_fltr_node* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.qede_arfs_fltr_node*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.qede_arfs_fltr_node* %1, %struct.qede_arfs_fltr_node** %4, align 8
  %5 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %6 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %5, i32 0, i32 1
  %7 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %8 = call i32 @kfree(%struct.qede_arfs_fltr_node* %7)
  %9 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %10 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QEDE_RFS_MAX_FLTR, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %16 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %19 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clear_bit(i64 %17, i32 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %4, align 8
  %26 = call i32 @kfree(%struct.qede_arfs_fltr_node* %25)
  ret void
}

declare dso_local i32 @kfree(%struct.qede_arfs_fltr_node*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
