; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_send_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { %struct.TYPE_3__, %struct.bnx2x_func_sp_obj* }
%struct.TYPE_3__ = type { %struct.bnx2x_func_start_params }
%struct.bnx2x_func_start_params = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.bnx2x_func_sp_obj = type { i32, i64 }
%struct.function_start_data = type { i32, i32, %struct.TYPE_4__, i64, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i64 }
%struct.TYPE_4__ = type { i32 }

@BNX2X_FW_DMAE_C = common dso_local global i32 0, align 4
@MAX_VLAN_PRIORITIES = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_COMMON_FUNCTION_START = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_func_state_params*)* @bnx2x_func_send_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_func_send_start(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_state_params*, align 8
  %5 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %6 = alloca %struct.function_start_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_func_start_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %4, align 8
  %9 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %10, align 8
  store %struct.bnx2x_func_sp_obj* %11, %struct.bnx2x_func_sp_obj** %5, align 8
  %12 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.function_start_data*
  store %struct.function_start_data* %15, %struct.function_start_data** %6, align 8
  %16 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %4, align 8
  %20 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.bnx2x_func_start_params* %21, %struct.bnx2x_func_start_params** %8, align 8
  %22 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %23 = call i32 @memset(%struct.function_start_data* %22, i32 0, i32 128)
  %24 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %25 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %24, i32 0, i32 17
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %28 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %27, i32 0, i32 20
  store i64 %26, i64* %28, align 8
  %29 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %30 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %34 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %33, i32 0, i32 19
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = call i32 @BP_PATH(%struct.bnx2x* %35)
  %37 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %38 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %37, i32 0, i32 18
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %40 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %39, i32 0, i32 16
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %43 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %42, i32 0, i32 17
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @BNX2X_FW_DMAE_C, align 4
  %45 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %46 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %45, i32 0, i32 16
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %48 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %52 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %51, i32 0, i32 15
  store i8* %50, i8** %52, align 8
  %53 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %54 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %58 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %57, i32 0, i32 14
  store i8* %56, i8** %58, align 8
  %59 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %60 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %59, i32 0, i32 15
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %63 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %65 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %68 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %67, i32 0, i32 12
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %70 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %73 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 8
  %74 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %75 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %78 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %80 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %83 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %85 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %2
  %89 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %90 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %92 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_le16(i32 %93)
  %95 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %96 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %95, i32 0, i32 8
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %88, %2
  %98 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %99 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %102 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %104 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %107 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %109 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %97
  %113 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %114 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @cpu_to_le16(i32 %115)
  %117 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %118 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  br label %123

119:                                              ; preds = %97
  %120 = call i8* @cpu_to_le16(i32 33024)
  %121 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %122 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %125 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %128 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %130 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %133 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %135 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %123
  %139 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %140 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %144 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @MAX_VLAN_PRIORITIES, align 4
  %147 = call i32 @memcpy(i32 %142, i32 %145, i32 %146)
  %148 = load %struct.bnx2x_func_start_params*, %struct.bnx2x_func_start_params** %8, align 8
  %149 = getelementptr inbounds %struct.bnx2x_func_start_params, %struct.bnx2x_func_start_params* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.function_start_data*, %struct.function_start_data** %6, align 8
  %152 = getelementptr inbounds %struct.function_start_data, %struct.function_start_data* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %138, %123
  %154 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %155 = load i32, i32* @RAMROD_CMD_ID_COMMON_FUNCTION_START, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @U64_HI(i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @U64_LO(i32 %158)
  %160 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %161 = call i32 @bnx2x_sp_post(%struct.bnx2x* %154, i32 %155, i32 0, i32 %157, i32 %159, i32 %160)
  ret i32 %161
}

declare dso_local i32 @memset(%struct.function_start_data*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
