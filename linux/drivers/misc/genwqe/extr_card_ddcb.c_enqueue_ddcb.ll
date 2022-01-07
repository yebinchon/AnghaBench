; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_enqueue_ddcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_enqueue_ddcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }
%struct.ddcb_queue = type { i32, i32, %struct.ddcb* }
%struct.ddcb = type { i32 }

@DDCB_COMPLETED_BE32 = common dso_local global i32 0, align 4
@DDCB_NEXT_BE32 = common dso_local global i32 0, align 4
@RET_DDCB_APPENDED = common dso_local global i32 0, align 4
@RET_DDCB_TAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*, %struct.ddcb_queue*, %struct.ddcb*, i32)* @enqueue_ddcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_ddcb(%struct.genwqe_dev* %0, %struct.ddcb_queue* %1, %struct.ddcb* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genwqe_dev*, align 8
  %7 = alloca %struct.ddcb_queue*, align 8
  %8 = alloca %struct.ddcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ddcb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %6, align 8
  store %struct.ddcb_queue* %1, %struct.ddcb_queue** %7, align 8
  store %struct.ddcb* %2, %struct.ddcb** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %18 = call i32 @ddcb_mark_unused(%struct.ddcb* %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %23 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  br label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %25, %21 ], [ %28, %26 ]
  store i32 %30, i32* %11, align 4
  %31 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %32 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %31, i32 0, i32 2
  %33 = load %struct.ddcb*, %struct.ddcb** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %33, i64 %35
  store %struct.ddcb* %36, %struct.ddcb** %12, align 8
  %37 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %38 = call i32 @ddcb_mark_appended(%struct.ddcb* %37)
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %67, %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load %struct.ddcb*, %struct.ddcb** %12, align 8
  %44 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @DDCB_COMPLETED_BE32, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %70

51:                                               ; preds = %42
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @DDCB_NEXT_BE32, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = call i32 (...) @wmb()
  %56 = load %struct.ddcb*, %struct.ddcb** %12, align 8
  %57 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %56, i32 0, i32 0
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @cmpxchg(i32* %57, i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @RET_DDCB_APPENDED, align 4
  store i32 %65, i32* %5, align 4
  br label %83

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %39

70:                                               ; preds = %50, %39
  %71 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %72 = call i32 @ddcb_mark_tapped(%struct.ddcb* %71)
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 8
  store i32 %74, i32* %16, align 4
  %75 = call i32 (...) @wmb()
  %76 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %77 = load %struct.ddcb_queue*, %struct.ddcb_queue** %7, align 8
  %78 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %76, i32 %79, i32 %80)
  %82 = load i32, i32* @RET_DDCB_TAPPED, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %70, %64
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @ddcb_mark_unused(%struct.ddcb*) #1

declare dso_local i32 @ddcb_mark_appended(%struct.ddcb*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @ddcb_mark_tapped(%struct.ddcb*) #1

declare dso_local i32 @__genwqe_writeq(%struct.genwqe_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
