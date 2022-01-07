; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, i32, i64, i64, %struct.e1000_adapter* }
%struct.e1000_adapter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unable to allocate memory for the transmit descriptor ring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_setup_tx_resources(%struct.e1000_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_ring*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %3, align 8
  %7 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %7, i32 0, i32 5
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @vzalloc(i32 %18)
  %20 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ALIGN(i32 %38, i32 4096)
  %40 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %43 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %44 = call i32 @e1000_alloc_ring_dma(%struct.e1000_adapter* %42, %struct.e1000_ring* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  br label %53

48:                                               ; preds = %27
  %49 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %60

53:                                               ; preds = %47, %26
  %54 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @vfree(i32 %56)
  %58 = call i32 @e_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @e1000_alloc_ring_dma(%struct.e1000_adapter*, %struct.e1000_ring*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @e_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
