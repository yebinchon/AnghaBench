; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_dev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_rdma.c_qede_rdma_dev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }

@qedr_dev_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*)* @qede_rdma_dev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_rdma_dev_close(%struct.qede_dev* %0) #0 {
  %2 = alloca %struct.qede_dev*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %2, align 8
  %3 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %4 = call i32 @qede_rdma_supported(%struct.qede_dev* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  %8 = call i32 @mutex_lock(i32* @qedr_dev_list_lock)
  %9 = load %struct.qede_dev*, %struct.qede_dev** %2, align 8
  %10 = call i32 @_qede_rdma_dev_close(%struct.qede_dev* %9)
  %11 = call i32 @mutex_unlock(i32* @qedr_dev_list_lock)
  br label %12

12:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @qede_rdma_supported(%struct.qede_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_qede_rdma_dev_close(%struct.qede_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
