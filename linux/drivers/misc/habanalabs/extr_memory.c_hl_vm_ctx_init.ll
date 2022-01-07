; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_vm_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_vm_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_vm_ctx_init(%struct.hl_ctx* %0) #0 {
  %2 = alloca %struct.hl_ctx*, align 8
  %3 = alloca %struct.asic_fixed_properties*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %2, align 8
  %8 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.asic_fixed_properties* %11, %struct.asic_fixed_properties** %3, align 8
  %12 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %12, i32 0, i32 1
  %14 = call i32 @atomic64_set(i32* %13, i32 0)
  %15 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %23 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %26 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %29 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %32 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %47

34:                                               ; preds = %1
  %35 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %36 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %39 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %42 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  %44 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %3, align 8
  %45 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %34, %21
  %48 = load %struct.hl_ctx*, %struct.hl_ctx** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @hl_vm_ctx_init_with_ranges(%struct.hl_ctx* %48, i32 %49, i32 %50, i32 %51, i32 %52)
  ret i32 %53
}

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @hl_vm_ctx_init_with_ranges(%struct.hl_ctx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
