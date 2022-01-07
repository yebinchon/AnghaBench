; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_dealloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_dealloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qed_ll2_buffer = type { i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"All LL2 entries were removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_ll2_buffer*)* @qed_ll2_dealloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_dealloc_buffer(%struct.qed_dev* %0, %struct.qed_ll2_buffer* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_ll2_buffer*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_ll2_buffer* %1, %struct.qed_ll2_buffer** %4, align 8
  %5 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %18 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %23 = call i32 @dma_unmap_single(i32* %13, i32 %16, i32 %21, i32 %22)
  %24 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %28, i32 0, i32 0
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %32 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %38 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %45 = call i32 @DP_INFO(%struct.qed_dev* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %2
  %47 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %48 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
