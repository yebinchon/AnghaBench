; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-ir.c_smi_ir_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-ir.c_smi_ir_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_rc = type { i32*, %struct.rc_dev*, %struct.smi_dev* }
%struct.rc_dev = type { i32 }
%struct.smi_dev = type { i32 }
%struct.ir_raw_event = type { i32, i64 }

@IR_Init_Reg = common dso_local global i64 0, align 8
@rbIRVld = common dso_local global i32 0, align 4
@IR_Data_Cnt = common dso_local global i64 0, align 8
@IR_DATA_BUFFER_BASE = common dso_local global i64 0, align 8
@rbIRhighidle = common dso_local global i32 0, align 4
@SMI_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@SMI_SAMPLE_IDLEMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_rc*)* @smi_ir_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_ir_decode(%struct.smi_rc* %0) #0 {
  %2 = alloca %struct.smi_rc*, align 8
  %3 = alloca %struct.smi_dev*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ir_raw_event, align 8
  store %struct.smi_rc* %0, %struct.smi_rc** %2, align 8
  %11 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %12 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %11, i32 0, i32 2
  %13 = load %struct.smi_dev*, %struct.smi_dev** %12, align 8
  store %struct.smi_dev* %13, %struct.smi_dev** %3, align 8
  %14 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %15 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %14, i32 0, i32 1
  %16 = load %struct.rc_dev*, %struct.rc_dev** %15, align 8
  store %struct.rc_dev* %16, %struct.rc_dev** %4, align 8
  %17 = load i64, i64* @IR_Init_Reg, align 8
  %18 = call i32 @smi_read(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @rbIRVld, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %98

23:                                               ; preds = %1
  %24 = load i64, i64* @IR_Data_Cnt, align 8
  %25 = call i32 @smi_read(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sdiv i32 %26, 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %23
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %85, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load i64, i64* @IR_DATA_BUFFER_BASE, align 8
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i32 @smi_read(i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %48 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %51, 0
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  store i32 %46, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 8
  %57 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %58 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %60, 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32 %56, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 16
  %67 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %68 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %70, 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32 %66, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = ashr i32 %75, 24
  %77 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %78 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 4
  %82 = add nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %39
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %35

88:                                               ; preds = %35
  %89 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %90 = load %struct.smi_rc*, %struct.smi_rc** %2, align 8
  %91 = getelementptr inbounds %struct.smi_rc, %struct.smi_rc* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @smi_raw_process(%struct.rc_dev* %89, i32* %92, i32 %93)
  %95 = load i64, i64* @IR_Init_Reg, align 8
  %96 = load i32, i32* @rbIRVld, align 4
  %97 = call i32 @smi_set(i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %1
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @rbIRhighidle, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = bitcast %struct.ir_raw_event* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %104, i8 0, i64 16, i1 false)
  %105 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @SMI_SAMPLE_PERIOD, align 4
  %107 = load i32, i32* @SMI_SAMPLE_IDLEMIN, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i32 @US_TO_NS(i32 %108)
  %110 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %10, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %112 = call i32 @ir_raw_event_store_with_filter(%struct.rc_dev* %111, %struct.ir_raw_event* %10)
  %113 = load i64, i64* @IR_Init_Reg, align 8
  %114 = load i32, i32* @rbIRhighidle, align 4
  %115 = call i32 @smi_set(i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %103, %98
  %117 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %118 = call i32 @ir_raw_event_handle(%struct.rc_dev* %117)
  ret void
}

declare dso_local i32 @smi_read(i64) #1

declare dso_local i32 @smi_raw_process(%struct.rc_dev*, i32*, i32) #1

declare dso_local i32 @smi_set(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @ir_raw_event_store_with_filter(%struct.rc_dev*, %struct.ir_raw_event*) #1

declare dso_local i32 @ir_raw_event_handle(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
