; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_lio_wait_for_instr_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_lio_wait_for_instr_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_3__**, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_wait_for_instr_fetch(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 1000, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %59, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %43, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @BIT_ULL(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %43

23:                                               ; preds = %13
  %24 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @atomic_read(i32* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @__check_db_timeout(%struct.octeon_device* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %23
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %22
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %61

50:                                               ; preds = %46
  %51 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %7, label %61

61:                                               ; preds = %59, %49
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__check_db_timeout(%struct.octeon_device*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
