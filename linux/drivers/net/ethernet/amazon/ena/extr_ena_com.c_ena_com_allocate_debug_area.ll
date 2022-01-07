; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_allocate_debug_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_allocate_debug_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_host_attribute }
%struct.ena_host_attribute = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_allocate_debug_area(%struct.ena_com_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_host_attribute*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %7, i32 0, i32 1
  store %struct.ena_host_attribute* %8, %struct.ena_host_attribute** %6, align 8
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %10 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %6, align 8
  %14 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %13, i32 0, i32 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @dma_alloc_coherent(i32 %11, i64 %12, i32* %14, i32 %15)
  %17 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %6, align 8
  %18 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %6, align 8
  %20 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %6, align 8
  %29 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %6, align 8
  %35 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
