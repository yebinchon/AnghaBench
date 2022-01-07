; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_print_cont_event_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_print_cont_event_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@HBUS_TARG_MEM_RADDR = common dso_local global i32 0, align 4
@HBUS_TARG_MEM_RDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i64, i64, i64, i64, i64)* @iwl_print_cont_event_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_print_cont_event_trace(%struct.iwl_priv* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %22, 32
  %24 = load i64, i64* %9, align 8
  %25 = mul nsw i64 %24, 2
  %26 = mul i64 %25, 8
  %27 = add i64 %23, %26
  store i64 %27, i64* %14, align 8
  br label %35

28:                                               ; preds = %6
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 32
  %31 = load i64, i64* %9, align 8
  %32 = mul nsw i64 %31, 3
  %33 = mul i64 %32, 8
  %34 = add i64 %30, %33
  store i64 %34, i64* %14, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @iwl_trans_grab_nic_access(%struct.TYPE_5__* %38, i64* %18)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %112

42:                                               ; preds = %35
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* @HBUS_TARG_MEM_RADDR, align 4
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @iwl_write32(%struct.TYPE_5__* %45, i32 %46, i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 %50, %51
  %53 = icmp sgt i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %57, %42
  store i64 0, i64* %13, align 8
  br label %62

62:                                               ; preds = %104, %61
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %107

66:                                               ; preds = %62
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %71 = call i64 @iwl_read32(%struct.TYPE_5__* %69, i32 %70)
  store i64 %71, i64* %15, align 8
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %76 = call i64 @iwl_read32(%struct.TYPE_5__* %74, i32 %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %66
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %81 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @trace_iwlwifi_dev_ucode_cont_event(i32 %84, i64 0, i64 %85, i64 %86)
  br label %103

88:                                               ; preds = %66
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %90 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %93 = call i64 @iwl_read32(%struct.TYPE_5__* %91, i32 %92)
  store i64 %93, i64* %17, align 8
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %95 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i32 @trace_iwlwifi_dev_ucode_cont_event(i32 %98, i64 %99, i64 %100, i64 %101)
  br label %103

103:                                              ; preds = %88, %79
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %13, align 8
  br label %62

107:                                              ; preds = %62
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = call i32 @iwl_trans_release_nic_access(%struct.TYPE_5__* %110, i64* %18)
  br label %112

112:                                              ; preds = %107, %41
  ret void
}

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @iwl_write32(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @iwl_read32(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @trace_iwlwifi_dev_ucode_cont_event(i32, i64, i64, i64) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.TYPE_5__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
