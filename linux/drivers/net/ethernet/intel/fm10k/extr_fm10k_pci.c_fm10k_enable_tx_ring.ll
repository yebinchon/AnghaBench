; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_enable_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_enable_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { i32 }
%struct.fm10k_ring = type { i32 }

@FM10K_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not enable Tx Queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, %struct.fm10k_ring*)* @fm10k_enable_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_enable_tx_ring(%struct.fm10k_intfc* %0, %struct.fm10k_ring* %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store %struct.fm10k_ring* %1, %struct.fm10k_ring** %4, align 8
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 1
  store %struct.fm10k_hw* %10, %struct.fm10k_hw** %5, align 8
  store i32 10, i32* %6, align 4
  %11 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %12 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @FM10K_TXDCTL(i32 %15)
  %17 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %14, i32 %16)
  %18 = load i32, i32* @FM10K_TXDCTL_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %51

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %38, %22
  %24 = call i32 @usleep_range(i32 1000, i32 2000)
  %25 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @FM10K_TXDCTL(i32 %26)
  %28 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FM10K_TXDCTL_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i1 [ false, %29 ], [ %37, %34 ]
  br i1 %39, label %23, label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %45 = load i32, i32* @drv, align 4
  %46 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %47 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @netif_err(%struct.fm10k_intfc* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %21, %43, %40
  ret void
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TXDCTL(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netif_err(%struct.fm10k_intfc*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
