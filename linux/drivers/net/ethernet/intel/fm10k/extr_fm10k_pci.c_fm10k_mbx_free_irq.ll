; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_mbx_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_mbx_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.msix_entry*, %struct.fm10k_hw }
%struct.msix_entry = type { i32 }
%struct.fm10k_hw = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fm10k_hw.0*, %struct.TYPE_6__*)* }
%struct.fm10k_hw.0 = type opaque

@FM10K_MBX_VECTOR = common dso_local global i64 0, align 8
@fm10k_mac_pf = common dso_local global i64 0, align 8
@FM10K_EIMR = common dso_local global i32 0, align 4
@PCA_FAULT = common dso_local global i32 0, align 4
@FUM_FAULT = common dso_local global i32 0, align 4
@MAILBOX = common dso_local global i32 0, align 4
@SWITCHREADY = common dso_local global i32 0, align 4
@SWITCHNOTREADY = common dso_local global i32 0, align 4
@SRAMERROR = common dso_local global i32 0, align 4
@VFLR = common dso_local global i32 0, align 4
@MAXHOLDTIME = common dso_local global i32 0, align 4
@FM10K_ITR_MASK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_mbx_free_irq(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.msix_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %6, i32 0, i32 1
  store %struct.fm10k_hw* %7, %struct.fm10k_hw** %3, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 0
  %10 = load %struct.msix_entry*, %struct.msix_entry** %9, align 8
  %11 = icmp ne %struct.msix_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %77

13:                                               ; preds = %1
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 0
  %16 = load %struct.msix_entry*, %struct.msix_entry** %15, align 8
  %17 = load i64, i64* @FM10K_MBX_VECTOR, align 8
  %18 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %16, i64 %17
  store %struct.msix_entry* %18, %struct.msix_entry** %4, align 8
  %19 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %20 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.fm10k_hw.0*, %struct.TYPE_6__*)*, i32 (%struct.fm10k_hw.0*, %struct.TYPE_6__*)** %22, align 8
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %25 = bitcast %struct.fm10k_hw* %24 to %struct.fm10k_hw.0*
  %26 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %27 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %26, i32 0, i32 1
  %28 = call i32 %23(%struct.fm10k_hw.0* %25, %struct.TYPE_6__* %27)
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %30 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @fm10k_mac_pf, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %13
  %36 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %37 = load i32, i32* @FM10K_EIMR, align 4
  %38 = load i32, i32* @PCA_FAULT, align 4
  %39 = call i32 @FM10K_EIMR_DISABLE(i32 %38)
  %40 = load i32, i32* @FUM_FAULT, align 4
  %41 = call i32 @FM10K_EIMR_DISABLE(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @MAILBOX, align 4
  %44 = call i32 @FM10K_EIMR_DISABLE(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* @SWITCHREADY, align 4
  %47 = call i32 @FM10K_EIMR_DISABLE(i32 %46)
  %48 = or i32 %45, %47
  %49 = load i32, i32* @SWITCHNOTREADY, align 4
  %50 = call i32 @FM10K_EIMR_DISABLE(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @SRAMERROR, align 4
  %53 = call i32 @FM10K_EIMR_DISABLE(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @VFLR, align 4
  %56 = call i32 @FM10K_EIMR_DISABLE(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @MAXHOLDTIME, align 4
  %59 = call i32 @FM10K_EIMR_DISABLE(i32 %58)
  %60 = or i32 %57, %59
  %61 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %36, i32 %37, i32 %60)
  %62 = load i64, i64* @FM10K_MBX_VECTOR, align 8
  %63 = call i32 @FM10K_ITR(i64 %62)
  store i32 %63, i32* %5, align 4
  br label %67

64:                                               ; preds = %13
  %65 = load i64, i64* @FM10K_MBX_VECTOR, align 8
  %66 = call i32 @FM10K_VFITR(i64 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %35
  %68 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @FM10K_ITR_MASK_SET, align 4
  %71 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %73 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %76 = call i32 @free_irq(i32 %74, %struct.fm10k_intfc* %75)
  br label %77

77:                                               ; preds = %67, %12
  ret void
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_EIMR_DISABLE(i32) #1

declare dso_local i32 @FM10K_ITR(i64) #1

declare dso_local i32 @FM10K_VFITR(i64) #1

declare dso_local i32 @free_irq(i32, %struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
