; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_send_rxon_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_send_rxon_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_rxon_cmd, i32, %struct.il_rxon_cmd }
%struct.il_rxon_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.il4965_rxon_assoc_cmd = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Using current RXON_ASSOC.  Not resending.\0A\00", align 1
@C_RXON_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_send_rxon_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_send_rxon_assoc(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.il4965_rxon_assoc_cmd, align 8
  %6 = alloca %struct.il_rxon_cmd*, align 8
  %7 = alloca %struct.il_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  store %struct.il_rxon_cmd* %9, %struct.il_rxon_cmd** %6, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 2
  store %struct.il_rxon_cmd* %11, %struct.il_rxon_cmd** %7, align 8
  %12 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %1
  %23 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %22
  %31 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %30
  %39 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %38
  %47 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @D_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %113

72:                                               ; preds = %62, %54, %46, %38, %30, %22, %1
  %73 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %74 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %79 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  %88 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %89 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 3
  store i64 %91, i64* %92, align 8
  %93 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 7
  store i64 0, i64* %93, align 8
  %94 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %95 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 4
  store i64 %97, i64* %98, align 8
  %99 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %100 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 5
  store i64 %102, i64* %103, align 8
  %104 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, %struct.il4965_rxon_assoc_cmd* %5, i32 0, i32 6
  store i64 %107, i64* %108, align 8
  %109 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %110 = load i32, i32* @C_RXON_ASSOC, align 4
  %111 = call i32 @il_send_cmd_pdu_async(%struct.il_priv* %109, i32 %110, i32 64, %struct.il4965_rxon_assoc_cmd* %5, i32* null)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %72, %70
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il_send_cmd_pdu_async(%struct.il_priv*, i32, i32, %struct.il4965_rxon_assoc_cmd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
