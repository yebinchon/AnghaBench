; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_allocate_ioq_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_allocate_ioq_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_2__, i32*, %struct.octeon_ioq_vector* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_ioq_vector = type { i32, i32, i32, i32, i32, %struct.octeon_device* }

@OCTEON_CN23XX_PF_VID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_allocate_ioq_vector(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.octeon_ioq_vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 32, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.octeon_ioq_vector* @vzalloc(i32 %14)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 3
  store %struct.octeon_ioq_vector* %15, %struct.octeon_ioq_vector** %17, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 3
  %20 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %19, align 8
  %21 = icmp ne %struct.octeon_ioq_vector* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %79, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  %29 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 3
  %31 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %31, i64 %33
  store %struct.octeon_ioq_vector* %34, %struct.octeon_ioq_vector** %6, align 8
  %35 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %36 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %6, align 8
  %37 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %36, i32 0, i32 5
  store %struct.octeon_device* %35, %struct.octeon_device** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %6, align 8
  %40 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %6, align 8
  %43 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %6, align 8
  %52 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (...) @num_online_cpus()
  %55 = srem i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %6, align 8
  %58 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %57, i32 0, i32 3
  %59 = call i32 @cpumask_set_cpu(i32 %56, i32* %58)
  %60 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OCTEON_CN23XX_PF_VID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %28
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %68 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %66, %70
  %72 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %6, align 8
  %73 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %78

74:                                               ; preds = %28
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.octeon_ioq_vector*, %struct.octeon_ioq_vector** %6, align 8
  %77 = getelementptr inbounds %struct.octeon_ioq_vector, %struct.octeon_ioq_vector* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %24

82:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.octeon_ioq_vector* @vzalloc(i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
