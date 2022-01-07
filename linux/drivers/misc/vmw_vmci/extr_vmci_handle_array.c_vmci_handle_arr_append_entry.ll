; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_handle_array.c_vmci_handle_arr_append_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_handle_array.c_vmci_handle_arr_append_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle_arr = type { i64, i64, i64, %struct.vmci_handle* }
%struct.vmci_handle = type { i32 }

@VMCI_ERROR_NO_MEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_handle_arr_append_entry(%struct.vmci_handle_arr** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmci_handle, align 4
  %5 = alloca %struct.vmci_handle_arr**, align 8
  %6 = alloca %struct.vmci_handle_arr*, align 8
  %7 = alloca %struct.vmci_handle_arr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %4, i32 0, i32 0
  store i32 %1, i32* %10, align 4
  store %struct.vmci_handle_arr** %0, %struct.vmci_handle_arr*** %5, align 8
  %11 = load %struct.vmci_handle_arr**, %struct.vmci_handle_arr*** %5, align 8
  %12 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %11, align 8
  store %struct.vmci_handle_arr* %12, %struct.vmci_handle_arr** %6, align 8
  %13 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %14 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %17 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %2
  %24 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %25 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %28 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %32 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @min(i64 %30, i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %36 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = call i64 @handle_arr_calc_size(i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %42 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %45 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %23
  %49 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %23
  %51 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call %struct.vmci_handle_arr* @krealloc(%struct.vmci_handle_arr* %51, i64 %52, i32 %53)
  store %struct.vmci_handle_arr* %54, %struct.vmci_handle_arr** %7, align 8
  %55 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %7, align 8
  %56 = icmp ne %struct.vmci_handle_arr* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @VMCI_ERROR_NO_MEM, align 4
  store i32 %58, i32* %3, align 4
  br label %82

59:                                               ; preds = %50
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %7, align 8
  %62 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %7, align 8
  store %struct.vmci_handle_arr* %65, %struct.vmci_handle_arr** %6, align 8
  %66 = load %struct.vmci_handle_arr**, %struct.vmci_handle_arr*** %5, align 8
  store %struct.vmci_handle_arr* %65, %struct.vmci_handle_arr** %66, align 8
  br label %67

67:                                               ; preds = %59, %2
  %68 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %69 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %68, i32 0, i32 3
  %70 = load %struct.vmci_handle*, %struct.vmci_handle** %69, align 8
  %71 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %72 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.vmci_handle, %struct.vmci_handle* %70, i64 %73
  %75 = bitcast %struct.vmci_handle* %74 to i8*
  %76 = bitcast %struct.vmci_handle* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 4, i1 false)
  %77 = load %struct.vmci_handle_arr*, %struct.vmci_handle_arr** %6, align 8
  %78 = getelementptr inbounds %struct.vmci_handle_arr, %struct.vmci_handle_arr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load i32, i32* @VMCI_SUCCESS, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %67, %57, %48
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @handle_arr_calc_size(i64) #1

declare dso_local %struct.vmci_handle_arr* @krealloc(%struct.vmci_handle_arr*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
