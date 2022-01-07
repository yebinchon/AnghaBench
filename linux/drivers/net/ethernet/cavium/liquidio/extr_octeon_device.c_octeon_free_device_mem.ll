; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_free_device_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_free_device_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.octeon_device**, %struct.TYPE_2__, %struct.octeon_device** }
%struct.TYPE_2__ = type { i32, i32 }

@octeon_device = common dso_local global i32** null, align 8
@octeon_device_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_free_device_mem(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %28, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %4
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @BIT_ULL(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 3
  %21 = load %struct.octeon_device**, %struct.octeon_device*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.octeon_device*, %struct.octeon_device** %21, i64 %23
  %25 = load %struct.octeon_device*, %struct.octeon_device** %24, align 8
  %26 = call i32 @vfree(%struct.octeon_device* %25)
  br label %27

27:                                               ; preds = %18, %9
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %4

31:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %35 = call i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @BIT_ULL(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %48 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %47, i32 0, i32 1
  %49 = load %struct.octeon_device**, %struct.octeon_device*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.octeon_device*, %struct.octeon_device** %49, i64 %51
  %53 = load %struct.octeon_device*, %struct.octeon_device** %52, align 8
  %54 = call i32 @vfree(%struct.octeon_device* %53)
  br label %55

55:                                               ; preds = %46, %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %3, align 4
  %63 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %64 = call i32 @vfree(%struct.octeon_device* %63)
  %65 = load i32**, i32*** @octeon_device, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* @octeon_device_count, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* @octeon_device_count, align 4
  ret void
}

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @vfree(%struct.octeon_device*) #1

declare dso_local i32 @MAX_OCTEON_INSTR_QUEUES(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
