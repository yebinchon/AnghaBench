; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_get_next_ddcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_get_next_ddcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddcb = type { i32, i32, i32 }
%struct.genwqe_dev = type { i32 }
%struct.ddcb_queue = type { i64, i32, i32, %struct.ddcb* }

@DDCB_COMPLETED_BE32 = common dso_local global i32 0, align 4
@DDCB_PRESET_PRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ddcb* (%struct.genwqe_dev*, %struct.ddcb_queue*, i32*)* @get_next_ddcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ddcb* @get_next_ddcb(%struct.genwqe_dev* %0, %struct.ddcb_queue* %1, i32* %2) #0 {
  %4 = alloca %struct.ddcb*, align 8
  %5 = alloca %struct.genwqe_dev*, align 8
  %6 = alloca %struct.ddcb_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ddcb*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %5, align 8
  store %struct.ddcb_queue* %1, %struct.ddcb_queue** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %11 = call i64 @queue_free_ddcbs(%struct.ddcb_queue* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.ddcb* null, %struct.ddcb** %4, align 8
  br label %73

14:                                               ; preds = %3
  %15 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %16 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %15, i32 0, i32 3
  %17 = load %struct.ddcb*, %struct.ddcb** %16, align 8
  %18 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %19 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %17, i64 %20
  store %struct.ddcb* %21, %struct.ddcb** %9, align 8
  %22 = load %struct.ddcb*, %struct.ddcb** %9, align 8
  %23 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DDCB_COMPLETED_BE32, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store %struct.ddcb* null, %struct.ddcb** %4, align 8
  br label %73

29:                                               ; preds = %14
  %30 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %31 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %36 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  %39 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %40 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = urem i64 %38, %42
  %44 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %45 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ddcb*, %struct.ddcb** %9, align 8
  %47 = bitcast %struct.ddcb* %46 to i64*
  store i64* %47, i64** %8, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 0, i64* %49, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  store i64 0, i64* %51, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 16
  store i64 0, i64* %53, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 17
  store i64 0, i64* %55, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 18
  store i64 0, i64* %57, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 19
  store i64 0, i64* %59, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 26
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @DDCB_PRESET_PRE, align 4
  %63 = load %struct.ddcb*, %struct.ddcb** %9, align 8
  %64 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %66 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = call i32 @cpu_to_be16(i32 %67)
  %70 = load %struct.ddcb*, %struct.ddcb** %9, align 8
  %71 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ddcb*, %struct.ddcb** %9, align 8
  store %struct.ddcb* %72, %struct.ddcb** %4, align 8
  br label %73

73:                                               ; preds = %29, %28, %13
  %74 = load %struct.ddcb*, %struct.ddcb** %4, align 8
  ret %struct.ddcb* %74
}

declare dso_local i64 @queue_free_ddcbs(%struct.ddcb_queue*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
