; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_alloc_arfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_alloc_arfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@QEDE_RFS_FLW_MASK = common dso_local global i32 0, align 4
@QEDE_RFS_MAX_FLTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_alloc_arfs(%struct.qede_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  %5 = call i8* @vzalloc(i32 16)
  %6 = bitcast i8* %5 to %struct.TYPE_4__*
  %7 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %8 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %7, i32 0, i32 0
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %8, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %18 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_init(i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %31, %16
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @QEDE_RFS_FLW_MASK, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev* %27, i32 %28)
  %30 = call i32 @INIT_HLIST_HEAD(i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* @QEDE_RFS_MAX_FLTR, align 4
  %36 = call i32 @BITS_TO_LONGS(i32 %35)
  %37 = call i32 @array_size(i32 8, i32 %36)
  %38 = call i8* @vzalloc(i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_4__*
  %40 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %41 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %45 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %34
  %51 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %52 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @vfree(%struct.TYPE_4__* %53)
  %55 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %56 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %55, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %56, align 8
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32) #1

declare dso_local i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev*, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @vfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
