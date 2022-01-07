; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_memcpy_req = type { i32, i32, i32, i32, i64, i32* }

@inbuf = common dso_local global i32 0, align 4
@MCDI_CTL_SDU_LEN_MAX_V1 = common dso_local global i64 0, align 8
@record = common dso_local global i32 0, align 4
@MC_CMD_MEMCPY_IN_RECORD_MAXNUM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MEMCPY_IN_RECORD = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_NUM_RECORDS = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_TO_RID = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_TO_ADDR = common dso_local global i32 0, align 4
@MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_FROM_RID = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_FROM_ADDR = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_LENGTH = common dso_local global i32 0, align 4
@MC_CMD_MEMCPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_memcpy_req*, i32)* @efx_siena_sriov_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_siena_sriov_memcpy(%struct.efx_nic* %0, %struct.efx_memcpy_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_memcpy_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.efx_memcpy_req* %1, %struct.efx_memcpy_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @inbuf, align 4
  %14 = load i64, i64* @MCDI_CTL_SDU_LEN_MAX_V1, align 8
  %15 = call i32 @MCDI_DECLARE_BUF(i32 %13, i64 %14)
  %16 = load i32, i32* @record, align 4
  %17 = call i32 @MCDI_DECLARE_STRUCT_PTR(i32 %16)
  %18 = call i32 (...) @mb()
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MC_CMD_MEMCPY_IN_RECORD_MAXNUM, align 4
  %21 = icmp ugt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOBUFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %132

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @MC_CMD_MEMCPY_IN_LEN(i32 %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %120, %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %123

35:                                               ; preds = %31
  %36 = load i32, i32* @inbuf, align 4
  %37 = load i32, i32* @MEMCPY_IN_RECORD, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MCDI_ARRAY_STRUCT_PTR(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* @record, align 4
  %40 = load i32, i32* @record, align 4
  %41 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_NUM_RECORDS, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @MCDI_SET_DWORD(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @record, align 4
  %45 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_TO_RID, align 4
  %46 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %47 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @MCDI_SET_DWORD(i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* @record, align 4
  %51 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_TO_ADDR, align 4
  %52 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %53 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MCDI_SET_QWORD(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %57 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %35
  %61 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %62 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %11, align 4
  %64 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %65 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %102

67:                                               ; preds = %35
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %71 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load i64, i64* @MCDI_CTL_SDU_LEN_MAX_V1, align 8
  %75 = icmp sgt i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @ENOBUFS, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %129

82:                                               ; preds = %67
  %83 = load i32, i32* @MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @inbuf, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @_MCDI_PTR(i32 %85, i32 %86)
  %88 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %89 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %92 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @memcpy(i32 %87, i32* %90, i64 %93)
  %95 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %96 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %82, %60
  %103 = load i32, i32* @record, align 4
  %104 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_FROM_RID, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @MCDI_SET_DWORD(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @record, align 4
  %108 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_FROM_ADDR, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @MCDI_SET_QWORD(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @record, align 4
  %112 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_LENGTH, align 4
  %113 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %114 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @MCDI_SET_DWORD(i32 %111, i32 %112, i32 %116)
  %118 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %119 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %118, i32 1
  store %struct.efx_memcpy_req* %119, %struct.efx_memcpy_req** %6, align 8
  br label %120

120:                                              ; preds = %102
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %31

123:                                              ; preds = %31
  %124 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %125 = load i32, i32* @MC_CMD_MEMCPY, align 4
  %126 = load i32, i32* @inbuf, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %124, i32 %125, i32 %126, i32 %127, i32* null, i32 0, i32* null)
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %123, %79
  %130 = call i32 (...) @mb()
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %129, %25
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @MCDI_DECLARE_BUF(i32, i64) #1

declare dso_local i32 @MCDI_DECLARE_STRUCT_PTR(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @MC_CMD_MEMCPY_IN_LEN(i32) #1

declare dso_local i32 @MCDI_ARRAY_STRUCT_PTR(i32, i32, i32) #1

declare dso_local i32 @MCDI_SET_DWORD(i32, i32, i32) #1

declare dso_local i32 @MCDI_SET_QWORD(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @_MCDI_PTR(i32, i32) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
