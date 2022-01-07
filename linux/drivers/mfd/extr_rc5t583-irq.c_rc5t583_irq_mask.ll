; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc5t583_irq_data = type { i64, i32, i64, i32 }
%struct.irq_data = type { i32 }
%struct.rc5t583 = type { i32, i32*, i32, i32* }

@rc5t583_irqs = common dso_local global %struct.rc5t583_irq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rc5t583_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc5t583_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.rc5t583*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc5t583_irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.rc5t583* %7, %struct.rc5t583** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %12 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** @rc5t583_irqs, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %15, i64 %17
  store %struct.rc5t583_irq_data* %18, %struct.rc5t583_irq_data** %5, align 8
  %19 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %20 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %26 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %29 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %24
  store i32 %33, i32* %31, align 4
  %34 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %35 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %38 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %1
  %44 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %45 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %50 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %43, %1
  %54 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %55 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %60 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %63 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %58
  store i32 %67, i32* %65, align 4
  ret void
}

declare dso_local %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
