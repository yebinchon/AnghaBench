; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_update_rx_drop_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_update_rx_drop_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, i32, %struct.fm10k_ring**, %struct.fm10k_hw }
%struct.fm10k_ring = type { i32, i32 }
%struct.fm10k_hw = type { i32 }

@FM10K_RXDCTL_WRITE_BACK_MIN_DELAY = common dso_local global i32 0, align 4
@FM10K_RXDCTL_DROP_ON_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_update_rx_drop_en(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 4
  store %struct.fm10k_hw* %10, %struct.fm10k_hw** %3, align 8
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %49, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %17 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  %21 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %22 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %21, i32 0, i32 3
  %23 = load %struct.fm10k_ring**, %struct.fm10k_ring*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fm10k_ring*, %struct.fm10k_ring** %23, i64 %25
  %27 = load %struct.fm10k_ring*, %struct.fm10k_ring** %26, align 8
  store %struct.fm10k_ring* %27, %struct.fm10k_ring** %6, align 8
  %28 = load i32, i32* @FM10K_RXDCTL_WRITE_BACK_MIN_DELAY, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %30 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %34 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %20
  %40 = load i32, i32* @FM10K_RXDCTL_DROP_ON_EMPTY, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %20
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @FM10K_RXDCTL(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %44, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %14

52:                                               ; preds = %14
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_RXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
