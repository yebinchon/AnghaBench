; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_timings.c_onfi_fill_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_timings.c_onfi_fill_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_data_interface = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i64, i64, i64 }
%struct.nand_chip = type { %struct.TYPE_3__, %struct.nand_data_interface }
%struct.TYPE_3__ = type { %struct.onfi_params* }
%struct.onfi_params = type { i64, i64, i64, i64 }

@NAND_SDR_IFACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@onfi_sdr_timings = common dso_local global %struct.nand_data_interface* null, align 8
@ONFI_DYN_TIMING_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onfi_fill_data_interface(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_data_interface*, align 8
  %9 = alloca %struct.onfi_params*, align 8
  %10 = alloca %struct.nand_sdr_timings*, align 8
  %11 = alloca %struct.nand_sdr_timings*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  store %struct.nand_data_interface* %13, %struct.nand_data_interface** %8, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.onfi_params*, %struct.onfi_params** %16, align 8
  store %struct.onfi_params* %17, %struct.onfi_params** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NAND_SDR_IFACE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %90

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.nand_data_interface*, %struct.nand_data_interface** @onfi_sdr_timings, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.nand_data_interface* %29)
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %90

35:                                               ; preds = %27
  %36 = load %struct.nand_data_interface*, %struct.nand_data_interface** %8, align 8
  %37 = load %struct.nand_data_interface*, %struct.nand_data_interface** @onfi_sdr_timings, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %37, i64 %39
  %41 = bitcast %struct.nand_data_interface* %36 to i8*
  %42 = bitcast %struct.nand_data_interface* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 32, i1 false)
  %43 = load %struct.onfi_params*, %struct.onfi_params** %9, align 8
  %44 = icmp ne %struct.onfi_params* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %35
  %46 = load %struct.nand_data_interface*, %struct.nand_data_interface** %8, align 8
  %47 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.nand_sdr_timings* %48, %struct.nand_sdr_timings** %10, align 8
  %49 = load %struct.onfi_params*, %struct.onfi_params** %9, align 8
  %50 = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 1000000, %51
  %53 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %54 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.onfi_params*, %struct.onfi_params** %9, align 8
  %56 = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 1000000, %57
  %59 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %60 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.onfi_params*, %struct.onfi_params** %9, align 8
  %62 = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 1000000, %63
  %65 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %66 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.onfi_params*, %struct.onfi_params** %9, align 8
  %68 = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 1000, %69
  %71 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %10, align 8
  %72 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  br label %89

73:                                               ; preds = %35
  %74 = load %struct.nand_data_interface*, %struct.nand_data_interface** %8, align 8
  %75 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.nand_sdr_timings* %76, %struct.nand_sdr_timings** %11, align 8
  %77 = load i64, i64* @ONFI_DYN_TIMING_MAX, align 8
  %78 = mul i64 1000000, %77
  %79 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %80 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* @ONFI_DYN_TIMING_MAX, align 8
  %82 = mul i64 1000000, %81
  %83 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %84 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %86 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %85, i32 0, i32 2
  store i64 200000000000000, i64* %86, align 8
  %87 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %88 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %87, i32 0, i32 3
  store i64 500000000, i64* %88, align 8
  br label %89

89:                                               ; preds = %73, %45
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %32, %21
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @ARRAY_SIZE(%struct.nand_data_interface*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
