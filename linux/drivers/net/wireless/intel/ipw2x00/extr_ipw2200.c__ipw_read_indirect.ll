; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c__ipw_read_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c__ipw_read_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@IPW_INDIRECT_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"addr = %i, buf = %p, num = %i\0A\00", align 1
@IPW_INDIRECT_ADDR = common dso_local global i32 0, align 4
@IPW_INDIRECT_DATA = common dso_local global i64 0, align 8
@IPW_AUTOINC_ADDR = common dso_local global i32 0, align 4
@IPW_AUTOINC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32, i32*, i32)* @_ipw_read_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ipw_read_indirect(%struct.ipw_priv* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IPW_INDIRECT_ADDR_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @IPW_DEBUG_IO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18, i32* %19, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %107

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %31 = load i32, i32* @IPW_INDIRECT_ADDR, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @_ipw_write32(%struct.ipw_priv* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %52, %29
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 0
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ false, %35 ], [ %40, %38 ]
  br i1 %42, label %43, label %57

43:                                               ; preds = %41
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %45 = load i64, i64* @IPW_INDIRECT_DATA, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @_ipw_read8(%struct.ipw_priv* %44, i64 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  br label %35

57:                                               ; preds = %41
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %25
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %62 = load i32, i32* @IPW_AUTOINC_ADDR, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @_ipw_write32(%struct.ipw_priv* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %73, %60
  %66 = load i32, i32* %8, align 4
  %67 = icmp sge i32 %66, 4
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %70 = load i32, i32* @IPW_AUTOINC_DATA, align 4
  %71 = call i32 @_ipw_read32(%struct.ipw_priv* %69, i32 %70)
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 4
  store i32 %79, i32* %8, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %86 = load i32, i32* @IPW_INDIRECT_ADDR, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @_ipw_write32(%struct.ipw_priv* %85, i32 %86, i32 %87)
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %101, %84
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %94 = load i64, i64* @IPW_INDIRECT_DATA, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32 @ipw_read8(%struct.ipw_priv* %93, i64 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  br label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %8, align 4
  br label %89

106:                                              ; preds = %89
  br label %107

107:                                              ; preds = %24, %106, %80
  ret void
}

declare dso_local i32 @IPW_DEBUG_IO(i8*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @_ipw_read8(%struct.ipw_priv*, i64) #1

declare dso_local i32 @_ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_read8(%struct.ipw_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
