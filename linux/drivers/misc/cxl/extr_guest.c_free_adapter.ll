; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_free_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_free_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, %struct.cxl*, %struct.cxl*, %struct.cxl*, %struct.cxl* }
%struct.irq_avail = type { i32, %struct.irq_avail*, %struct.irq_avail*, %struct.irq_avail*, %struct.irq_avail* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl*)* @free_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_adapter(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca %struct.irq_avail*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %5 = load %struct.cxl*, %struct.cxl** %2, align 8
  %6 = getelementptr inbounds %struct.cxl, %struct.cxl* %5, i32 0, i32 1
  %7 = load %struct.cxl*, %struct.cxl** %6, align 8
  %8 = icmp ne %struct.cxl* %7, null
  br i1 %8, label %9, label %63

9:                                                ; preds = %1
  %10 = load %struct.cxl*, %struct.cxl** %2, align 8
  %11 = getelementptr inbounds %struct.cxl, %struct.cxl* %10, i32 0, i32 1
  %12 = load %struct.cxl*, %struct.cxl** %11, align 8
  %13 = getelementptr inbounds %struct.cxl, %struct.cxl* %12, i32 0, i32 3
  %14 = load %struct.cxl*, %struct.cxl** %13, align 8
  %15 = icmp ne %struct.cxl* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.cxl*, %struct.cxl** %2, align 8
  %20 = getelementptr inbounds %struct.cxl, %struct.cxl* %19, i32 0, i32 1
  %21 = load %struct.cxl*, %struct.cxl** %20, align 8
  %22 = getelementptr inbounds %struct.cxl, %struct.cxl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %17
  %26 = load %struct.cxl*, %struct.cxl** %2, align 8
  %27 = getelementptr inbounds %struct.cxl, %struct.cxl* %26, i32 0, i32 1
  %28 = load %struct.cxl*, %struct.cxl** %27, align 8
  %29 = getelementptr inbounds %struct.cxl, %struct.cxl* %28, i32 0, i32 3
  %30 = load %struct.cxl*, %struct.cxl** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cxl, %struct.cxl* %30, i64 %32
  %34 = bitcast %struct.cxl* %33 to %struct.irq_avail*
  store %struct.irq_avail* %34, %struct.irq_avail** %3, align 8
  %35 = load %struct.irq_avail*, %struct.irq_avail** %3, align 8
  %36 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %35, i32 0, i32 4
  %37 = load %struct.irq_avail*, %struct.irq_avail** %36, align 8
  %38 = call i32 @kfree(%struct.irq_avail* %37)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %17

42:                                               ; preds = %17
  %43 = load %struct.cxl*, %struct.cxl** %2, align 8
  %44 = getelementptr inbounds %struct.cxl, %struct.cxl* %43, i32 0, i32 1
  %45 = load %struct.cxl*, %struct.cxl** %44, align 8
  %46 = getelementptr inbounds %struct.cxl, %struct.cxl* %45, i32 0, i32 3
  %47 = load %struct.cxl*, %struct.cxl** %46, align 8
  %48 = bitcast %struct.cxl* %47 to %struct.irq_avail*
  %49 = call i32 @kfree(%struct.irq_avail* %48)
  br label %50

50:                                               ; preds = %42, %9
  %51 = load %struct.cxl*, %struct.cxl** %2, align 8
  %52 = getelementptr inbounds %struct.cxl, %struct.cxl* %51, i32 0, i32 1
  %53 = load %struct.cxl*, %struct.cxl** %52, align 8
  %54 = getelementptr inbounds %struct.cxl, %struct.cxl* %53, i32 0, i32 2
  %55 = load %struct.cxl*, %struct.cxl** %54, align 8
  %56 = bitcast %struct.cxl* %55 to %struct.irq_avail*
  %57 = call i32 @kfree(%struct.irq_avail* %56)
  %58 = load %struct.cxl*, %struct.cxl** %2, align 8
  %59 = getelementptr inbounds %struct.cxl, %struct.cxl* %58, i32 0, i32 1
  %60 = load %struct.cxl*, %struct.cxl** %59, align 8
  %61 = bitcast %struct.cxl* %60 to %struct.irq_avail*
  %62 = call i32 @kfree(%struct.irq_avail* %61)
  br label %63

63:                                               ; preds = %50, %1
  %64 = load %struct.cxl*, %struct.cxl** %2, align 8
  %65 = bitcast %struct.cxl* %64 to %struct.irq_avail*
  %66 = call i32 @cxl_remove_adapter_nr(%struct.irq_avail* %65)
  %67 = load %struct.cxl*, %struct.cxl** %2, align 8
  %68 = bitcast %struct.cxl* %67 to %struct.irq_avail*
  %69 = call i32 @kfree(%struct.irq_avail* %68)
  ret void
}

declare dso_local i32 @kfree(%struct.irq_avail*) #1

declare dso_local i32 @cxl_remove_adapter_nr(%struct.irq_avail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
