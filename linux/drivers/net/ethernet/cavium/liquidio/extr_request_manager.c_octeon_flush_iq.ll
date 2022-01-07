; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_flush_iq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_flush_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.octeon_instr_queue*)* }
%struct.octeon_instr_queue = type { i64, i64, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_flush_iq(%struct.octeon_device* %0, %struct.octeon_instr_queue* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.octeon_instr_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %struct.octeon_instr_queue* %1, %struct.octeon_instr_queue** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %12 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %11, i32 0, i32 2
  %13 = call i32 @spin_trylock(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %102

17:                                               ; preds = %3
  %18 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %19 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %22 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.octeon_instr_queue*)*, i64 (%struct.octeon_instr_queue*)** %23, align 8
  %25 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %26 = call i64 %24(%struct.octeon_instr_queue* %25)
  %27 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %28 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %79, %17
  %30 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %31 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %34 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %83

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %43 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i64 @lio_process_iq_request_list(%struct.octeon_device* %42, %struct.octeon_instr_queue* %43, i64 %46)
  store i64 %47, i64* %8, align 8
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %50 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %51 = call i64 @lio_process_iq_request_list(%struct.octeon_device* %49, %struct.octeon_instr_queue* %50, i64 0)
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %58 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %65 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %64, i32 0, i32 6
  %66 = call i32 @atomic_sub(i64 %63, i32* %65)
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %69 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %67
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  br label %75

75:                                               ; preds = %55, %52
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %29, label %83

83:                                               ; preds = %79, %37
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %90, %86, %83
  %92 = load i32, i32* @jiffies, align 4
  %93 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %94 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %96 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %95, i32 0, i32 3
  %97 = call i32 @spin_unlock_bh(i32* %96)
  %98 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %99 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %98, i32 0, i32 2
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %91, %15
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @lio_process_iq_request_list(%struct.octeon_device*, %struct.octeon_instr_queue*, i64) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
