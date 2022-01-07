; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_release_used_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_virtio.c_cfv_release_used_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cfv_info* }
%struct.cfv_info = type { i64, i64, %struct.virtqueue*, %struct.TYPE_4__, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.buf_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @cfv_release_used_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfv_release_used_buf(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.cfv_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buf_info*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.cfv_info*, %struct.cfv_info** %10, align 8
  store %struct.cfv_info* %11, %struct.cfv_info** %3, align 8
  %12 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %13 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %14 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %13, i32 0, i32 2
  %15 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %16 = icmp ne %struct.virtqueue* %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  br label %19

19:                                               ; preds = %115, %46, %1
  %20 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %21 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %20, i32 0, i32 7
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %25 = call %struct.buf_info* @virtqueue_get_buf(%struct.virtqueue* %24, i32* %5)
  store %struct.buf_info* %25, %struct.buf_info** %6, align 8
  %26 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %27 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %26, i32 0, i32 7
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.buf_info*, %struct.buf_info** %6, align 8
  %31 = icmp ne %struct.buf_info* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %116

33:                                               ; preds = %19
  %34 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %35 = load %struct.buf_info*, %struct.buf_info** %6, align 8
  %36 = call i32 @free_buf_info(%struct.cfv_info* %34, %struct.buf_info* %35)
  %37 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %38 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %37, i32 0, i32 2
  %39 = load %struct.virtqueue*, %struct.virtqueue** %38, align 8
  %40 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %43 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %19

47:                                               ; preds = %33
  %48 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %49 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %54 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %59 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %62 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @gen_pool_alloc(i64 %60, i32 %63)
  %65 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %66 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %57, %52, %47
  %68 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %69 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %74 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %73, i32 0, i32 2
  %75 = load %struct.virtqueue*, %struct.virtqueue** %74, align 8
  %76 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %75)
  %77 = sext i32 %76 to i64
  %78 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %79 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %81 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @netif_tx_wake_all_queues(i32 %82)
  %84 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %85 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %84, i32 0, i32 2
  %86 = load %struct.virtqueue*, %struct.virtqueue** %85, align 8
  %87 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %86)
  %88 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %89 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %115

93:                                               ; preds = %67
  %94 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %95 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %98 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %97, i32 0, i32 2
  %99 = load %struct.virtqueue*, %struct.virtqueue** %98, align 8
  %100 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %99)
  %101 = sext i32 %100 to i64
  %102 = icmp sgt i64 %96, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @WARN_ON(i32 %103)
  %105 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %106 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %105, i32 0, i32 2
  %107 = load %struct.virtqueue*, %struct.virtqueue** %106, align 8
  %108 = call i32 @virtqueue_get_vring_size(%struct.virtqueue* %107)
  %109 = sdiv i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.cfv_info*, %struct.cfv_info** %3, align 8
  %112 = getelementptr inbounds %struct.cfv_info, %struct.cfv_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %93, %72
  br label %19

116:                                              ; preds = %32
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.buf_info* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_buf_info(%struct.cfv_info*, %struct.buf_info*) #1

declare dso_local i64 @gen_pool_alloc(i64, i32) #1

declare dso_local i32 @virtqueue_get_vring_size(%struct.virtqueue*) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
