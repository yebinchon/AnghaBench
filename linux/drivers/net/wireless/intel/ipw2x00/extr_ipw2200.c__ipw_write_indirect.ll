; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c__ipw_write_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c__ipw_write_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@IPW_INDIRECT_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"addr = %i, buf = %p, num = %i\0A\00", align 1
@IPW_INDIRECT_ADDR = common dso_local global i32 0, align 4
@IPW_INDIRECT_DATA = common dso_local global i64 0, align 8
@IPW_AUTOINC_ADDR = common dso_local global i32 0, align 4
@IPW_AUTOINC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, i32, i32*, i32)* @_ipw_write_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ipw_write_indirect(%struct.ipw_priv* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  br label %112

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

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
  br i1 %42, label %43, label %59

43:                                               ; preds = %41
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %45 = load i64, i64* @IPW_INDIRECT_DATA, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @_ipw_write8(%struct.ipw_priv* %44, i64 %48, i32 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %7, align 8
  br label %35

59:                                               ; preds = %41
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %25
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %64 = load i32, i32* @IPW_AUTOINC_ADDR, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @_ipw_write32(%struct.ipw_priv* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %76, %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %72 = load i32, i32* @IPW_AUTOINC_DATA, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_ipw_write32(%struct.ipw_priv* %71, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %70
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32* %78, i32** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 4
  store i32 %82, i32* %8, align 4
  br label %67

83:                                               ; preds = %67
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %83
  %88 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %89 = load i32, i32* @IPW_INDIRECT_ADDR, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @_ipw_write32(%struct.ipw_priv* %88, i32 %89, i32 %90)
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %104, %87
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %97 = load i64, i64* @IPW_INDIRECT_DATA, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @_ipw_write8(%struct.ipw_priv* %96, i64 %100, i32 %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %8, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %7, align 8
  br label %92

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %24, %111, %83
  ret void
}

declare dso_local i32 @IPW_DEBUG_IO(i8*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @_ipw_write8(%struct.ipw_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
