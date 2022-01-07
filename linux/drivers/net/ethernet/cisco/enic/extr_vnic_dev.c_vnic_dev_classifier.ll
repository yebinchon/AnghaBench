; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_classifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.filter = type { i32 }
%struct.filter_tlv = type { i32, i32, i32 }
%struct.filter_action = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@CLSF_ADD = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CLSF_TLV_FILTER = common dso_local global i32 0, align 4
@CLSF_TLV_ACTION = common dso_local global i32 0, align 4
@FILTER_ACTION_RQ_STEERING = common dso_local global i32 0, align 4
@CMD_ADD_FILTER = common dso_local global i32 0, align 4
@CLSF_DEL = common dso_local global i64 0, align 8
@CMD_DEL_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_classifier(%struct.vnic_dev* %0, i64 %1, i8** %2, %struct.filter* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnic_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.filter_tlv*, align 8
  %16 = alloca %struct.filter_tlv*, align 8
  %17 = alloca %struct.filter_action*, align 8
  %18 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store %struct.filter* %3, %struct.filter** %9, align 8
  store i32 1000, i32* %12, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @CLSF_ADD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %4
  store i32 44, i32* %18, align 4
  %25 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %26 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %18, align 4
  %29 = call %struct.filter_tlv* @pci_alloc_consistent(i32 %27, i32 %28, i32* %13)
  store %struct.filter_tlv* %29, %struct.filter_tlv** %16, align 8
  %30 = load %struct.filter_tlv*, %struct.filter_tlv** %16, align 8
  %31 = icmp ne %struct.filter_tlv* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %104

35:                                               ; preds = %24
  %36 = load %struct.filter_tlv*, %struct.filter_tlv** %16, align 8
  store %struct.filter_tlv* %36, %struct.filter_tlv** %15, align 8
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @memset(%struct.filter_tlv* %39, i32 0, i32 %40)
  %42 = load i32, i32* @CLSF_TLV_FILTER, align 4
  %43 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %44 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %46 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %45, i32 0, i32 0
  store i32 4, i32* %46, align 4
  %47 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %48 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to %struct.filter*
  %50 = load %struct.filter*, %struct.filter** %9, align 8
  %51 = bitcast %struct.filter* %49 to i8*
  %52 = bitcast %struct.filter* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %54 = bitcast %struct.filter_tlv* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 12
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = bitcast i8* %56 to %struct.filter_tlv*
  store %struct.filter_tlv* %57, %struct.filter_tlv** %15, align 8
  %58 = load i32, i32* @CLSF_TLV_ACTION, align 4
  %59 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %60 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %62 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %61, i32 0, i32 0
  store i32 16, i32* %62, align 4
  %63 = load %struct.filter_tlv*, %struct.filter_tlv** %15, align 8
  %64 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %63, i32 0, i32 1
  %65 = bitcast i32* %64 to %struct.filter_action*
  store %struct.filter_action* %65, %struct.filter_action** %17, align 8
  %66 = load i32, i32* @FILTER_ACTION_RQ_STEERING, align 4
  %67 = load %struct.filter_action*, %struct.filter_action** %17, align 8
  %68 = getelementptr inbounds %struct.filter_action, %struct.filter_action* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i8**, i8*** %8, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.filter_action*, %struct.filter_action** %17, align 8
  %72 = getelementptr inbounds %struct.filter_action, %struct.filter_action* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %75 = load i32, i32* @CMD_ADD_FILTER, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %74, i32 %75, i32* %10, i32* %11, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i8**, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  %82 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %83 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load %struct.filter_tlv*, %struct.filter_tlv** %16, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @pci_free_consistent(i32 %84, i32 %85, %struct.filter_tlv* %86, i32 %87)
  br label %102

89:                                               ; preds = %4
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @CLSF_DEL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8**, i8*** %8, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %10, align 4
  %97 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %98 = load i32, i32* @CMD_DEL_FILTER, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %97, i32 %98, i32* %10, i32* %11, i32 %99)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %93, %89
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %32
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.filter_tlv* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.filter_tlv*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vnic_dev_cmd(%struct.vnic_dev*, i32, i32*, i32*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.filter_tlv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
