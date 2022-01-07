; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fm10k_intfc = type { %struct.fm10k_hw, %struct.fm10k_iov_data* }
%struct.fm10k_hw = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*, i32, i32)*, i32 (%struct.fm10k_hw.3*, i32, i32)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_vf_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.fm10k_hw.1*, %struct.TYPE_12__*)* }
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_hw.2 = type opaque
%struct.fm10k_hw.3 = type opaque
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.fm10k_hw.4*, %struct.fm10k_dglort_cfg*)* }
%struct.fm10k_hw.4 = type opaque
%struct.fm10k_dglort_cfg = type opaque
%struct.fm10k_iov_data = type { i32, %struct.fm10k_vf_info* }
%struct.fm10k_dglort_cfg.5 = type { i32, i32, i32, i8*, i32, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FM10K_DGLORTMAP_NONE = common dso_local global i32 0, align 4
@fm10k_dglort_vf_rss = common dso_local global i32 0, align 4
@FM10K_DGLORTMAP_MASK_SHIFT = common dso_local global i32 0, align 4
@FM10K_VF_FLAG_MULTI_CAPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_iov_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.fm10k_intfc*, align 8
  %5 = alloca %struct.fm10k_iov_data*, align 8
  %6 = alloca %struct.fm10k_dglort_cfg.5, align 8
  %7 = alloca %struct.fm10k_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fm10k_vf_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call %struct.fm10k_intfc* @pci_get_drvdata(%struct.pci_dev* %11)
  store %struct.fm10k_intfc* %12, %struct.fm10k_intfc** %4, align 8
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 1
  %15 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %14, align 8
  store %struct.fm10k_iov_data* %15, %struct.fm10k_iov_data** %5, align 8
  %16 = bitcast %struct.fm10k_dglort_cfg.5* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %18 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %17, i32 0, i32 0
  store %struct.fm10k_hw* %18, %struct.fm10k_hw** %7, align 8
  %19 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %20 = icmp ne %struct.fm10k_iov_data* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %23 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  store i32 %27, i32* %8, align 4
  %28 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %29 = icmp ne %struct.fm10k_iov_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %137

33:                                               ; preds = %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @fm10k_mask_aer_comp_abort(%struct.pci_dev* %34)
  %36 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %37 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32 (%struct.fm10k_hw.3*, i32, i32)*, i32 (%struct.fm10k_hw.3*, i32, i32)** %39, align 8
  %41 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %42 = bitcast %struct.fm10k_hw* %41 to %struct.fm10k_hw.3*
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %40(%struct.fm10k_hw.3* %42, i32 %43, i32 %44)
  %46 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %47 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FM10K_DGLORTMAP_NONE, align 4
  %51 = and i32 %49, %50
  %52 = getelementptr inbounds %struct.fm10k_dglort_cfg.5, %struct.fm10k_dglort_cfg.5* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @fm10k_dglort_vf_rss, align 4
  %54 = getelementptr inbounds %struct.fm10k_dglort_cfg.5, %struct.fm10k_dglort_cfg.5* %6, i32 0, i32 6
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.fm10k_dglort_cfg.5, %struct.fm10k_dglort_cfg.5* %6, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %57 = call i64 @fm10k_queues_per_pool(%struct.fm10k_hw* %56)
  %58 = sub nsw i64 %57, 1
  %59 = call i8* @fls(i64 %58)
  %60 = getelementptr inbounds %struct.fm10k_dglort_cfg.5, %struct.fm10k_dglort_cfg.5* %6, i32 0, i32 5
  store i8* %59, i8** %60, align 8
  %61 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %62 = call i32 @fm10k_vf_queue_index(%struct.fm10k_hw* %61, i32 0)
  %63 = getelementptr inbounds %struct.fm10k_dglort_cfg.5, %struct.fm10k_dglort_cfg.5* %6, i32 0, i32 4
  store i32 %62, i32* %63, align 8
  %64 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %65 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i8* @fls(i64 %68)
  %70 = getelementptr inbounds %struct.fm10k_dglort_cfg.5, %struct.fm10k_dglort_cfg.5* %6, i32 0, i32 3
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.fm10k_dglort_cfg.5, %struct.fm10k_dglort_cfg.5* %6, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %73 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32 (%struct.fm10k_hw.4*, %struct.fm10k_dglort_cfg*)*, i32 (%struct.fm10k_hw.4*, %struct.fm10k_dglort_cfg*)** %75, align 8
  %77 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %78 = bitcast %struct.fm10k_hw* %77 to %struct.fm10k_hw.4*
  %79 = bitcast %struct.fm10k_dglort_cfg.5* %6 to %struct.fm10k_dglort_cfg*
  %80 = call i32 %76(%struct.fm10k_hw.4* %78, %struct.fm10k_dglort_cfg* %79)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %133, %33
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %81
  %86 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %87 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %86, i32 0, i32 1
  %88 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %88, i64 %90
  store %struct.fm10k_vf_info* %91, %struct.fm10k_vf_info** %10, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %94 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = xor i32 %96, -1
  %98 = load i32, i32* @FM10K_DGLORTMAP_MASK_SHIFT, align 4
  %99 = ashr i32 %97, %98
  %100 = icmp eq i32 %92, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  br label %136

102:                                              ; preds = %85
  %103 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %104 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*, i32, i32)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*, i32, i32)** %106, align 8
  %108 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %109 = bitcast %struct.fm10k_hw* %108 to %struct.fm10k_hw.2*
  %110 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @FM10K_VF_FLAG_MULTI_CAPABLE, align 4
  %113 = call i32 %107(%struct.fm10k_hw.2* %109, %struct.fm10k_vf_info* %110, i32 %111, i32 %112)
  %114 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %115 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_vf_info*)** %117, align 8
  %119 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %120 = bitcast %struct.fm10k_hw* %119 to %struct.fm10k_hw.0*
  %121 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %122 = call i32 %118(%struct.fm10k_hw.0* %120, %struct.fm10k_vf_info* %121)
  %123 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %124 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32 (%struct.fm10k_hw.1*, %struct.TYPE_12__*)*, i32 (%struct.fm10k_hw.1*, %struct.TYPE_12__*)** %126, align 8
  %128 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %129 = bitcast %struct.fm10k_hw* %128 to %struct.fm10k_hw.1*
  %130 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %10, align 8
  %131 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %130, i32 0, i32 0
  %132 = call i32 %127(%struct.fm10k_hw.1* %129, %struct.TYPE_12__* %131)
  br label %133

133:                                              ; preds = %102
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %81

136:                                              ; preds = %101, %81
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %30
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.fm10k_intfc* @pci_get_drvdata(%struct.pci_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fm10k_mask_aer_comp_abort(%struct.pci_dev*) #1

declare dso_local i8* @fls(i64) #1

declare dso_local i64 @fm10k_queues_per_pool(%struct.fm10k_hw*) #1

declare dso_local i32 @fm10k_vf_queue_index(%struct.fm10k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
