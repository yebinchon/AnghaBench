; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_report_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_report_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.TYPE_6__*, %struct.fm10k_hw }
%struct.TYPE_6__ = type { i32 }
%struct.fm10k_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fm10k_hw.0*, i32, %struct.fm10k_fault*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_fault = type opaque
%struct.fm10k_fault.1 = type { i32 }

@FM10K_EICR_FAULT_MASK = common dso_local global i32 0, align 4
@FM10K_PCA_FAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error reading fault\0A\00", align 1
@FM10K_FAULT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, i32)* @fm10k_report_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_report_fault(%struct.fm10k_intfc* %0, i32 %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca %struct.fm10k_fault.1, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 1
  store %struct.fm10k_hw* %10, %struct.fm10k_hw** %5, align 8
  %11 = bitcast %struct.fm10k_fault.1* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* @FM10K_EICR_FAULT_MASK, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @FM10K_PCA_FAULT, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %47, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %47

24:                                               ; preds = %19
  %25 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %26 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.fm10k_hw.0*, i32, %struct.fm10k_fault*)*, i32 (%struct.fm10k_hw.0*, i32, %struct.fm10k_fault*)** %28, align 8
  %30 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %31 = bitcast %struct.fm10k_hw* %30 to %struct.fm10k_hw.0*
  %32 = load i32, i32* %7, align 4
  %33 = bitcast %struct.fm10k_fault.1* %6 to %struct.fm10k_fault*
  %34 = call i32 %29(%struct.fm10k_hw.0* %31, i32 %32, %struct.fm10k_fault* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %39 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %47

43:                                               ; preds = %24
  %44 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @fm10k_handle_fault(%struct.fm10k_intfc* %44, i32 %45, %struct.fm10k_fault.1* %6)
  br label %47

47:                                               ; preds = %43, %37, %23
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @FM10K_FAULT_SIZE, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %16

55:                                               ; preds = %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @fm10k_handle_fault(%struct.fm10k_intfc*, i32, %struct.fm10k_fault.1*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
