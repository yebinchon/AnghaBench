; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@softing_irq_v2 = common dso_local global i32 0, align 4
@softing_irq_v1 = common dso_local global i32 0, align 4
@softing_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"request_threaded_irq(%u) failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softing_enable_irq(%struct.softing* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.softing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.softing* %0, %struct.softing** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.softing*, %struct.softing** %4, align 8
  %8 = getelementptr inbounds %struct.softing, %struct.softing* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load %struct.softing*, %struct.softing** %4, align 8
  %15 = getelementptr inbounds %struct.softing, %struct.softing* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load %struct.softing*, %struct.softing** %4, align 8
  %24 = getelementptr inbounds %struct.softing, %struct.softing* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.softing*, %struct.softing** %4, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.softing* %27)
  %29 = load %struct.softing*, %struct.softing** %4, align 8
  %30 = getelementptr inbounds %struct.softing, %struct.softing* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %85

32:                                               ; preds = %19, %13
  %33 = load %struct.softing*, %struct.softing** %4, align 8
  %34 = getelementptr inbounds %struct.softing, %struct.softing* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %38
  %42 = load %struct.softing*, %struct.softing** %4, align 8
  %43 = getelementptr inbounds %struct.softing, %struct.softing* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.softing*, %struct.softing** %4, align 8
  %47 = getelementptr inbounds %struct.softing, %struct.softing* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* @softing_irq_v2, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @softing_irq_v1, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* @softing_irq_thread, align 4
  %59 = load i32, i32* @IRQF_SHARED, align 4
  %60 = load %struct.softing*, %struct.softing** %4, align 8
  %61 = getelementptr inbounds %struct.softing, %struct.softing* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @dev_name(i32* %63)
  %65 = load %struct.softing*, %struct.softing** %4, align 8
  %66 = call i32 @request_threaded_irq(i32 %45, i32 %57, i32 %58, i32 %59, i32 %64, %struct.softing* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %56
  %70 = load %struct.softing*, %struct.softing** %4, align 8
  %71 = getelementptr inbounds %struct.softing, %struct.softing* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.softing*, %struct.softing** %4, align 8
  %75 = getelementptr inbounds %struct.softing, %struct.softing* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_alert(i32* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %87

80:                                               ; preds = %56
  %81 = load %struct.softing*, %struct.softing** %4, align 8
  %82 = getelementptr inbounds %struct.softing, %struct.softing* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %38, %32
  br label %85

85:                                               ; preds = %84, %22
  br label %86

86:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %69, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @free_irq(i32, %struct.softing*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.softing*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_alert(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
