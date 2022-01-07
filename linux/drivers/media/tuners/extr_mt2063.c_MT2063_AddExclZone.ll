; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_AddExclZone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_AddExclZone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT2063_AvoidSpursData_t = type { i32, i32, %struct.MT2063_ExclZone_t* }
%struct.MT2063_ExclZone_t = type { i32, i32, %struct.MT2063_ExclZone_t* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MT2063_AvoidSpursData_t*, i32, i32)* @MT2063_AddExclZone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.MT2063_AvoidSpursData_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.MT2063_ExclZone_t*, align 8
  %8 = alloca %struct.MT2063_ExclZone_t*, align 8
  %9 = alloca %struct.MT2063_ExclZone_t*, align 8
  store %struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_AvoidSpursData_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %11 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %10, i32 0, i32 2
  %12 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %11, align 8
  store %struct.MT2063_ExclZone_t* %12, %struct.MT2063_ExclZone_t** %7, align 8
  store %struct.MT2063_ExclZone_t* null, %struct.MT2063_ExclZone_t** %8, align 8
  store %struct.MT2063_ExclZone_t* null, %struct.MT2063_ExclZone_t** %9, align 8
  %13 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %16 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %19 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 2
  %22 = sub nsw i32 %17, %21
  %23 = icmp sgt i32 %14, %22
  br i1 %23, label %24, label %133

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %27 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %30 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %28, %32
  %34 = icmp slt i32 %25, %33
  br i1 %34, label %35, label %133

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %133

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %51, %39
  %41 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %42 = icmp ne %struct.MT2063_ExclZone_t* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %45 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ false, %40 ], [ %48, %43 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  store %struct.MT2063_ExclZone_t* %52, %struct.MT2063_ExclZone_t** %8, align 8
  %53 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %54 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %53, i32 0, i32 2
  %55 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %54, align 8
  store %struct.MT2063_ExclZone_t* %55, %struct.MT2063_ExclZone_t** %7, align 8
  br label %40

56:                                               ; preds = %49
  %57 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %58 = icmp ne %struct.MT2063_ExclZone_t* %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %61 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %68 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %74 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %78 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %84 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %75
  br label %96

86:                                               ; preds = %59, %56
  %87 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %88 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %8, align 8
  %89 = call %struct.MT2063_ExclZone_t* @InsertNode(%struct.MT2063_AvoidSpursData_t* %87, %struct.MT2063_ExclZone_t* %88)
  store %struct.MT2063_ExclZone_t* %89, %struct.MT2063_ExclZone_t** %7, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %92 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %95 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %86, %85
  %97 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %98 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %97, i32 0, i32 2
  %99 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %98, align 8
  store %struct.MT2063_ExclZone_t* %99, %struct.MT2063_ExclZone_t** %9, align 8
  br label %100

100:                                              ; preds = %127, %96
  %101 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %9, align 8
  %102 = icmp ne %struct.MT2063_ExclZone_t* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %9, align 8
  %105 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %108 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br label %111

111:                                              ; preds = %103, %100
  %112 = phi i1 [ false, %100 ], [ %110, %103 ]
  br i1 %112, label %113, label %132

113:                                              ; preds = %111
  %114 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %9, align 8
  %115 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %118 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %9, align 8
  %123 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %126 = getelementptr inbounds %struct.MT2063_ExclZone_t, %struct.MT2063_ExclZone_t* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %113
  %128 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %4, align 8
  %129 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %7, align 8
  %130 = load %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t** %9, align 8
  %131 = call %struct.MT2063_ExclZone_t* @RemoveNode(%struct.MT2063_AvoidSpursData_t* %128, %struct.MT2063_ExclZone_t* %129, %struct.MT2063_ExclZone_t* %130)
  store %struct.MT2063_ExclZone_t* %131, %struct.MT2063_ExclZone_t** %9, align 8
  br label %100

132:                                              ; preds = %111
  br label %133

133:                                              ; preds = %132, %35, %24, %3
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local %struct.MT2063_ExclZone_t* @InsertNode(%struct.MT2063_AvoidSpursData_t*, %struct.MT2063_ExclZone_t*) #1

declare dso_local %struct.MT2063_ExclZone_t* @RemoveNode(%struct.MT2063_AvoidSpursData_t*, %struct.MT2063_ExclZone_t*, %struct.MT2063_ExclZone_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
