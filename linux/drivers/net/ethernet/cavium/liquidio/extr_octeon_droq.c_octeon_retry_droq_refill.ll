; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_retry_droq_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_retry_droq_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_droq = type { i32, %struct.octeon_device* }
%struct.octeon_device = type { i32 }

@CN23XX_SLI_DEF_BP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_retry_droq_refill(%struct.octeon_droq* %0) #0 {
  %2 = alloca %struct.octeon_droq*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.octeon_droq* %0, %struct.octeon_droq** %2, align 8
  %7 = load %struct.octeon_droq*, %struct.octeon_droq** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %7, i32 0, i32 1
  %9 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  store %struct.octeon_device* %9, %struct.octeon_device** %3, align 8
  store i32 1, i32* %5, align 4
  %10 = load %struct.octeon_droq*, %struct.octeon_droq** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @readl(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %15 = load %struct.octeon_droq*, %struct.octeon_droq** %2, align 8
  %16 = call i32 @octeon_droq_refill(%struct.octeon_device* %14, %struct.octeon_droq* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = call i32 (...) @wmb()
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.octeon_droq*, %struct.octeon_droq** %2, align 8
  %23 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @writel(i32 %21, i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i64, i64* @CN23XX_SLI_DEF_BP, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %19
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @octeon_droq_refill(%struct.octeon_device*, %struct.octeon_droq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
