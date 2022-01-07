; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_alloc_error_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_alloc_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_fw_error = type { i32, i32, %struct.ipw_error_elem*, %struct.ipw_event*, i64, i32, i32, i32 }
%struct.ipw_error_elem = type { i32 }
%struct.ipw_event = type { i32 }
%struct.ipw_priv = type { i32, i32 }

@IPW_ERROR_LOG = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Memory allocation for firmware error log failed.\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipw_fw_error* (%struct.ipw_priv*)* @ipw_alloc_error_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipw_fw_error* @ipw_alloc_error_log(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_fw_error*, align 8
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.ipw_fw_error*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %9 = call i32 @ipw_get_event_log_len(%struct.ipw_priv* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %11 = load i32, i32* @IPW_ERROR_LOG, align 4
  %12 = call i32 @ipw_read32(%struct.ipw_priv* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ipw_read_reg32(%struct.ipw_priv* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 48, %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = add i64 %19, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.ipw_fw_error* @kmalloc(i32 %24, i32 %25)
  store %struct.ipw_fw_error* %26, %struct.ipw_fw_error** %4, align 8
  %27 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %28 = icmp ne %struct.ipw_fw_error* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.ipw_fw_error* null, %struct.ipw_fw_error** %2, align 8
  br label %91

31:                                               ; preds = %1
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %34 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %39 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %44 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %47 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %50 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %52 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.ipw_error_elem*
  %55 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %56 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %55, i32 0, i32 2
  store %struct.ipw_error_elem* %54, %struct.ipw_error_elem** %56, align 8
  %57 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %58 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %57, i32 0, i32 2
  %59 = load %struct.ipw_error_elem*, %struct.ipw_error_elem** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ipw_error_elem, %struct.ipw_error_elem* %59, i64 %61
  %63 = bitcast %struct.ipw_error_elem* %62 to %struct.ipw_event*
  %64 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %65 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %64, i32 0, i32 3
  store %struct.ipw_event* %63, %struct.ipw_event** %65, align 8
  %66 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %69 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %68, i32 0, i32 3
  %70 = load %struct.ipw_event*, %struct.ipw_event** %69, align 8
  %71 = call i32 @ipw_capture_event_log(%struct.ipw_priv* %66, i32 %67, %struct.ipw_event* %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %31
  %75 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  %81 = getelementptr inbounds %struct.ipw_fw_error, %struct.ipw_fw_error* %80, i32 0, i32 2
  %82 = load %struct.ipw_error_elem*, %struct.ipw_error_elem** %81, align 8
  %83 = bitcast %struct.ipw_error_elem* %82 to i32*
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ipw_read_indirect(%struct.ipw_priv* %75, i32 %79, i32* %83, i32 %87)
  br label %89

89:                                               ; preds = %74, %31
  %90 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %4, align 8
  store %struct.ipw_fw_error* %90, %struct.ipw_fw_error** %2, align 8
  br label %91

91:                                               ; preds = %89, %29
  %92 = load %struct.ipw_fw_error*, %struct.ipw_fw_error** %2, align 8
  ret %struct.ipw_fw_error* %92
}

declare dso_local i32 @ipw_get_event_log_len(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local %struct.ipw_fw_error* @kmalloc(i32, i32) #1

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @ipw_capture_event_log(%struct.ipw_priv*, i32, %struct.ipw_event*) #1

declare dso_local i32 @ipw_read_indirect(%struct.ipw_priv*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
