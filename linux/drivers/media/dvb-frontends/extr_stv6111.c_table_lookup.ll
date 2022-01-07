; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_table_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slookup = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slookup*, i32, i64)* @table_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_lookup(%struct.slookup* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.slookup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.slookup* %0, %struct.slookup** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.slookup*, %struct.slookup** %4, align 8
  %16 = getelementptr inbounds %struct.slookup, %struct.slookup* %15, i64 0
  %17 = getelementptr inbounds %struct.slookup, %struct.slookup* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.slookup*, %struct.slookup** %4, align 8
  %22 = getelementptr inbounds %struct.slookup, %struct.slookup* %21, i64 0
  %23 = getelementptr inbounds %struct.slookup, %struct.slookup* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  br label %127

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.slookup*, %struct.slookup** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.slookup, %struct.slookup* %27, i64 %29
  %31 = getelementptr inbounds %struct.slookup, %struct.slookup* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %26, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.slookup*, %struct.slookup** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.slookup, %struct.slookup* %35, i64 %37
  %39 = getelementptr inbounds %struct.slookup, %struct.slookup* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  br label %126

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %74

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %11, align 4
  %52 = load %struct.slookup*, %struct.slookup** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.slookup, %struct.slookup* %52, i64 %54
  %56 = getelementptr inbounds %struct.slookup, %struct.slookup* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %47
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.slookup*, %struct.slookup** %4, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.slookup, %struct.slookup* %62, i64 %64
  %66 = getelementptr inbounds %struct.slookup, %struct.slookup* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sle i64 %61, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %10, align 4
  br label %73

71:                                               ; preds = %60, %47
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %69
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.slookup*, %struct.slookup** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.slookup, %struct.slookup* %75, i64 %77
  %79 = getelementptr inbounds %struct.slookup, %struct.slookup* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.slookup*, %struct.slookup** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.slookup, %struct.slookup* %81, i64 %83
  %85 = getelementptr inbounds %struct.slookup, %struct.slookup* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %80, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load %struct.slookup*, %struct.slookup** %4, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.slookup, %struct.slookup* %89, i64 %91
  %93 = getelementptr inbounds %struct.slookup, %struct.slookup* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %74
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.slookup*, %struct.slookup** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.slookup, %struct.slookup* %99, i64 %101
  %103 = getelementptr inbounds %struct.slookup, %struct.slookup* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %98, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.slookup*, %struct.slookup** %4, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.slookup, %struct.slookup* %107, i64 %109
  %111 = getelementptr inbounds %struct.slookup, %struct.slookup* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.slookup*, %struct.slookup** %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.slookup, %struct.slookup* %113, i64 %115
  %117 = getelementptr inbounds %struct.slookup, %struct.slookup* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %112, %118
  %120 = mul nsw i32 %106, %119
  %121 = load i32, i32* %8, align 4
  %122 = sdiv i32 %120, %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %97, %74
  br label %126

126:                                              ; preds = %125, %34
  br label %127

127:                                              ; preds = %126, %20
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
