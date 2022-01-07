; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_read_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_tid_data = type { i32, i32, i32, i32, i8** }

@NUM_LE_DB_DBGI_REQ_DATA_INSTANCES = common dso_local global i32 0, align 4
@LE_DB_DBGI_REQ_DATA_A = common dso_local global i64 0, align 8
@LE_DB_DBGI_REQ_TCAM_CMD_A = common dso_local global i64 0, align 8
@DBGICMDSTRT_F = common dso_local global i32 0, align 4
@LE_DB_DBGI_CONFIG_A = common dso_local global i64 0, align 8
@DBGICMDBUSY_F = common dso_local global i32 0, align 4
@CUDBG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@LE_DB_DBGI_RSP_STATUS_A = common dso_local global i64 0, align 8
@NUM_LE_DB_DBGI_RSP_DATA_INSTANCES = common dso_local global i32 0, align 4
@LE_DB_DBGI_RSP_DATA_A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, i32, %struct.cudbg_tid_data*)* @cudbg_read_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_read_tid(%struct.cudbg_init* %0, i32 %1, %struct.cudbg_tid_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cudbg_tid_data*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cudbg_tid_data* %2, %struct.cudbg_tid_data** %7, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %8, align 8
  store i32 8, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %27, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @NUM_LE_DB_DBGI_REQ_DATA_INSTANCES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.adapter*, %struct.adapter** %8, align 8
  %21 = load i64, i64* @LE_DB_DBGI_REQ_DATA_A, align 8
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @t4_write_reg(%struct.adapter* %20, i64 %25, i32 0)
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %15

30:                                               ; preds = %15
  %31 = call i32 @DBGICMD_V(i32 4)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @DBGITID_V(i32 %32)
  %34 = or i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = load i64, i64* @LE_DB_DBGI_REQ_TCAM_CMD_A, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @t4_write_reg(%struct.adapter* %35, i64 %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %7, align 8
  %41 = getelementptr inbounds %struct.cudbg_tid_data, %struct.cudbg_tid_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @DBGICMDSTRT_F, align 4
  %43 = call i32 @DBGICMDMODE_V(i32 1)
  %44 = or i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.adapter*, %struct.adapter** %8, align 8
  %46 = load i64, i64* @LE_DB_DBGI_CONFIG_A, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @t4_write_reg(%struct.adapter* %45, i64 %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %7, align 8
  %51 = getelementptr inbounds %struct.cudbg_tid_data, %struct.cudbg_tid_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %69, %30
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.adapter*, %struct.adapter** %8, align 8
  %57 = load i64, i64* @LE_DB_DBGI_CONFIG_A, align 8
  %58 = call i8* @t4_read_reg(%struct.adapter* %56, i64 %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @DBGICMDBUSY_F, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %68, i32* %4, align 4
  br label %109

69:                                               ; preds = %55
  br label %52

70:                                               ; preds = %52
  %71 = load %struct.adapter*, %struct.adapter** %8, align 8
  %72 = load i64, i64* @LE_DB_DBGI_RSP_STATUS_A, align 8
  %73 = call i8* @t4_read_reg(%struct.adapter* %71, i64 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %7, align 8
  %77 = getelementptr inbounds %struct.cudbg_tid_data, %struct.cudbg_tid_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* @CUDBG_SYSTEM_ERROR, align 4
  store i32 %82, i32* %4, align 4
  br label %109

83:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @NUM_LE_DB_DBGI_RSP_DATA_INSTANCES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.adapter*, %struct.adapter** %8, align 8
  %90 = load i64, i64* @LE_DB_DBGI_RSP_DATA_A, align 8
  %91 = load i32, i32* %9, align 4
  %92 = shl i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = call i8* @t4_read_reg(%struct.adapter* %89, i64 %94)
  %96 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %7, align 8
  %97 = getelementptr inbounds %struct.cudbg_tid_data, %struct.cudbg_tid_data* %96, i32 0, i32 4
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %84

105:                                              ; preds = %84
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.cudbg_tid_data*, %struct.cudbg_tid_data** %7, align 8
  %108 = getelementptr inbounds %struct.cudbg_tid_data, %struct.cudbg_tid_data* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %81, %67
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @DBGICMD_V(i32) #1

declare dso_local i32 @DBGITID_V(i32) #1

declare dso_local i32 @DBGICMDMODE_V(i32) #1

declare dso_local i8* @t4_read_reg(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
