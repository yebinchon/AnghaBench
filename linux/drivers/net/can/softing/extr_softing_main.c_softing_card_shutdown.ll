; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_card_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_card_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.softing*)* @softing_card_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @softing_card_shutdown(%struct.softing* %0) #0 {
  %2 = alloca %struct.softing*, align 8
  %3 = alloca i32, align 4
  store %struct.softing* %0, %struct.softing** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.softing*, %struct.softing** %2, align 8
  %5 = getelementptr inbounds %struct.softing, %struct.softing* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = call i64 @mutex_lock_interruptible(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %1
  %11 = load %struct.softing*, %struct.softing** %2, align 8
  %12 = getelementptr inbounds %struct.softing, %struct.softing* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.softing*, %struct.softing** %2, align 8
  %16 = getelementptr inbounds %struct.softing, %struct.softing* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.softing*, %struct.softing** %2, align 8
  %19 = getelementptr inbounds %struct.softing, %struct.softing* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %10
  %24 = load %struct.softing*, %struct.softing** %2, align 8
  %25 = getelementptr inbounds %struct.softing, %struct.softing* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.softing*, %struct.softing** %2, align 8
  %31 = getelementptr inbounds %struct.softing, %struct.softing* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.softing*, %struct.softing** %2, align 8
  %35 = call i32 @free_irq(i64 %33, %struct.softing* %34)
  %36 = load %struct.softing*, %struct.softing** %2, align 8
  %37 = getelementptr inbounds %struct.softing, %struct.softing* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %29, %23, %10
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = load %struct.softing*, %struct.softing** %2, align 8
  %44 = getelementptr inbounds %struct.softing, %struct.softing* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = icmp ne i32 (i32, i32)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.softing*, %struct.softing** %2, align 8
  %51 = getelementptr inbounds %struct.softing, %struct.softing* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load %struct.softing*, %struct.softing** %2, align 8
  %56 = getelementptr inbounds %struct.softing, %struct.softing* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 %54(i32 %57, i32 0)
  br label %59

59:                                               ; preds = %49, %42
  %60 = load %struct.softing*, %struct.softing** %2, align 8
  %61 = call i32 @softing_set_reset_dpram(%struct.softing* %60)
  %62 = load %struct.softing*, %struct.softing** %2, align 8
  %63 = getelementptr inbounds %struct.softing, %struct.softing* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = icmp ne i32 (i32, i32)* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %59
  %69 = load %struct.softing*, %struct.softing** %2, align 8
  %70 = getelementptr inbounds %struct.softing, %struct.softing* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load %struct.softing*, %struct.softing** %2, align 8
  %75 = getelementptr inbounds %struct.softing, %struct.softing* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %73(i32 %76, i32 1)
  br label %78

78:                                               ; preds = %68, %59
  br label %79

79:                                               ; preds = %78, %39
  %80 = load %struct.softing*, %struct.softing** %2, align 8
  %81 = getelementptr inbounds %struct.softing, %struct.softing* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  ret void
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.softing*) #1

declare dso_local i32 @softing_set_reset_dpram(%struct.softing*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
