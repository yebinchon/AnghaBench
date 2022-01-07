; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, %struct.TYPE_3__*, %struct.igc_adapter**, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*)* @igc_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_free_irq(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %5 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.igc_adapter* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %45, %9
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %37, i32 0, i32 2
  %39 = load %struct.igc_adapter**, %struct.igc_adapter*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.igc_adapter*, %struct.igc_adapter** %39, i64 %41
  %43 = load %struct.igc_adapter*, %struct.igc_adapter** %42, align 8
  %44 = call i32 @free_irq(i32 %36, %struct.igc_adapter* %43)
  br label %45

45:                                               ; preds = %27
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %21

48:                                               ; preds = %21
  br label %57

49:                                               ; preds = %1
  %50 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.igc_adapter* %55)
  br label %57

57:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.igc_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
