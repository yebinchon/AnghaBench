; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_attach_dedicated_process_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_attach_dedicated_process_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 (%struct.cxl_afu*)* }
%struct.cxl_afu = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.cxl_context*)* }
%struct.cxl_context = type { %struct.cxl_afu*, i32, i32, i64 }

@current = common dso_local global %struct.TYPE_10__* null, align 8
@CXL_PSL_PID_TID_An = common dso_local global i32 0, align 4
@CXL_PSL_SR_An = common dso_local global i32 0, align 4
@CXL_PSL_AMR_An = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_9__* null, align 8
@CXL_PSL_WED_An = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_attach_dedicated_process_psl8(%struct.cxl_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxl_afu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %12 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %11, i32 0, i32 0
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %12, align 8
  store %struct.cxl_afu* %13, %struct.cxl_afu** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %20 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %26 = load i32, i32* @CXL_PSL_PID_TID_An, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cxl_p2n_write(%struct.cxl_afu* %25, i32 %26, i32 %27)
  %29 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %30 = load i32, i32* @CXL_PSL_SR_An, align 4
  %31 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %32 = call i32 @calculate_sr(%struct.cxl_context* %31)
  %33 = call i32 @cxl_p1n_write(%struct.cxl_afu* %29, i32 %30, i32 %32)
  %34 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %35 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %36 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %39 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cxl_write_sstp(%struct.cxl_afu* %34, i32 %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %95

45:                                               ; preds = %24
  %46 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @cxl_prefault(%struct.cxl_context* %46, i32 %47)
  %49 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %50 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %49, i32 0, i32 0
  %51 = load %struct.cxl_afu*, %struct.cxl_afu** %50, align 8
  %52 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %58, align 8
  %60 = icmp ne i32 (%struct.cxl_context*)* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %45
  %62 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %63 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.cxl_context*)*, i32 (%struct.cxl_context*)** %69, align 8
  %71 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %72 = call i32 %70(%struct.cxl_context* %71)
  br label %73

73:                                               ; preds = %61, %45
  %74 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %75 = load i32, i32* @CXL_PSL_AMR_An, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @cxl_p2n_write(%struct.cxl_afu* %74, i32 %75, i32 %76)
  %78 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %79 = call i32 @cxl_assign_psn_space(%struct.cxl_context* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cxl_ops, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %81, align 8
  %83 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %84 = call i32 %82(%struct.cxl_afu* %83)
  store i32 %84, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %95

88:                                               ; preds = %73
  %89 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %90 = load i32, i32* @CXL_PSL_WED_An, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @cxl_p2n_write(%struct.cxl_afu* %89, i32 %90, i32 %91)
  %93 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %94 = call i32 @afu_enable(%struct.cxl_afu* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %86, %43
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @cxl_p2n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @calculate_sr(%struct.cxl_context*) #1

declare dso_local i32 @cxl_write_sstp(%struct.cxl_afu*, i32, i32) #1

declare dso_local i32 @cxl_prefault(%struct.cxl_context*, i32) #1

declare dso_local i32 @cxl_assign_psn_space(%struct.cxl_context*) #1

declare dso_local i32 @afu_enable(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
