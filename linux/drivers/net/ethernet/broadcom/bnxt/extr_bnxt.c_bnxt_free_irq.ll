; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32*, %struct.bnxt_irq*, %struct.TYPE_2__* }
%struct.bnxt_irq = type { i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_irq(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_irq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 2
  %8 = load %struct.bnxt_irq*, %struct.bnxt_irq** %7, align 8
  %9 = icmp ne %struct.bnxt_irq* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %71

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %68, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %17
  %24 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @bnxt_cp_num_to_irq_num(%struct.bnxt* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 2
  %29 = load %struct.bnxt_irq*, %struct.bnxt_irq** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %29, i64 %31
  store %struct.bnxt_irq* %32, %struct.bnxt_irq** %3, align 8
  %33 = load %struct.bnxt_irq*, %struct.bnxt_irq** %3, align 8
  %34 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %23
  %38 = load %struct.bnxt_irq*, %struct.bnxt_irq** %3, align 8
  %39 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.bnxt_irq*, %struct.bnxt_irq** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @irq_set_affinity_hint(i32 %45, i32* null)
  %47 = load %struct.bnxt_irq*, %struct.bnxt_irq** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @free_cpumask_var(i32 %49)
  %51 = load %struct.bnxt_irq*, %struct.bnxt_irq** %3, align 8
  %52 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %42, %37
  %54 = load %struct.bnxt_irq*, %struct.bnxt_irq** %3, align 8
  %55 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @free_irq(i32 %56, i32 %63)
  br label %65

65:                                               ; preds = %53, %23
  %66 = load %struct.bnxt_irq*, %struct.bnxt_irq** %3, align 8
  %67 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %17

71:                                               ; preds = %15, %17
  ret void
}

declare dso_local i32 @bnxt_cp_num_to_irq_num(%struct.bnxt*, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
