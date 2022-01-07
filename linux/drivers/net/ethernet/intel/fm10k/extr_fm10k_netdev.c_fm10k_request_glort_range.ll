; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_request_glort_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_request_glort_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FM10K_DGLORTMAP_MASK_SHIFT = common dso_local global i32 0, align 4
@FM10K_DGLORTMAP_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_request_glort_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_request_glort_range(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %5 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %6 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %5, i32 0, i32 2
  store %struct.fm10k_hw* %6, %struct.fm10k_hw** %3, align 8
  %7 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @FM10K_DGLORTMAP_MASK_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %15 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FM10K_DGLORTMAP_NONE, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %23 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %25 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FM10K_DGLORTMAP_NONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %72

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %34 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %32, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %40 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %43 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %72

46:                                               ; preds = %31
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 64
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  %52 = sdiv i32 %51, 2
  %53 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %54 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %56 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %59 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %71

62:                                               ; preds = %46
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, 63
  %65 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %66 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %68 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %62, %49
  br label %72

72:                                               ; preds = %30, %71, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
