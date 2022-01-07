; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_print_last_event_logs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_print_last_event_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i64, i64, i64, i64, i64, i32, i8**, i64)* @iwl_print_last_event_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_print_last_event_logs(%struct.iwl_priv* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i8** %7, i64 %8) #0 {
  %10 = alloca %struct.iwl_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  store i64 %8, i64* %18, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %9
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %13, align 8
  %30 = sub nsw i64 %28, %29
  %31 = sub nsw i64 %27, %30
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %13, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* %15, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i8**, i8*** %17, align 8
  %38 = load i64, i64* %18, align 8
  %39 = call i32 @iwl_print_event_log(%struct.iwl_priv* %26, i64 %31, i64 %34, i64 %35, i32 %36, i8** %37, i64 %38)
  store i32 %39, i32* %16, align 4
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i8**, i8*** %17, align 8
  %45 = load i64, i64* %18, align 8
  %46 = call i32 @iwl_print_event_log(%struct.iwl_priv* %40, i64 0, i64 %41, i64 %42, i32 %43, i8** %44, i64 %45)
  store i32 %46, i32* %16, align 4
  br label %58

47:                                               ; preds = %21
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i8**, i8*** %17, align 8
  %56 = load i64, i64* %18, align 8
  %57 = call i32 @iwl_print_event_log(%struct.iwl_priv* %48, i64 %51, i64 %52, i64 %53, i32 %54, i8** %55, i64 %56)
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %47, %25
  br label %83

59:                                               ; preds = %9
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i8**, i8*** %17, align 8
  %69 = load i64, i64* %18, align 8
  %70 = call i32 @iwl_print_event_log(%struct.iwl_priv* %64, i64 0, i64 %65, i64 %66, i32 %67, i8** %68, i64 %69)
  store i32 %70, i32* %16, align 4
  br label %82

71:                                               ; preds = %59
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %10, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = sub nsw i64 %73, %74
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i8**, i8*** %17, align 8
  %80 = load i64, i64* %18, align 8
  %81 = call i32 @iwl_print_event_log(%struct.iwl_priv* %72, i64 %75, i64 %76, i64 %77, i32 %78, i8** %79, i64 %80)
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %71, %63
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32, i32* %16, align 4
  ret i32 %84
}

declare dso_local i32 @iwl_print_event_log(%struct.iwl_priv*, i64, i64, i64, i32, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
