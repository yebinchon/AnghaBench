; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_find_free_sste.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_fault.c_find_free_sste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_sste = type { i32 }
%struct.cxl_context = type { i32, i32, %struct.cxl_sste* }
%struct.copro_slb = type { i32, i32 }

@SLB_VSID_B_1T = common dso_local global i32 0, align 4
@SID_SHIFT_1T = common dso_local global i32 0, align 4
@SID_SHIFT = common dso_local global i32 0, align 4
@SLB_ESID_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxl_sste* (%struct.cxl_context*, %struct.copro_slb*)* @find_free_sste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxl_sste* @find_free_sste(%struct.cxl_context* %0, %struct.copro_slb* %1) #0 {
  %3 = alloca %struct.cxl_sste*, align 8
  %4 = alloca %struct.cxl_context*, align 8
  %5 = alloca %struct.copro_slb*, align 8
  %6 = alloca %struct.cxl_sste*, align 8
  %7 = alloca %struct.cxl_sste*, align 8
  %8 = alloca %struct.cxl_sste*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %4, align 8
  store %struct.copro_slb* %1, %struct.copro_slb** %5, align 8
  store %struct.cxl_sste* null, %struct.cxl_sste** %8, align 8
  %12 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %13 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 7
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load %struct.copro_slb*, %struct.copro_slb** %5, align 8
  %18 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SLB_VSID_B_1T, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.copro_slb*, %struct.copro_slb** %5, align 8
  %25 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SID_SHIFT_1T, align 4
  %28 = lshr i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.copro_slb*, %struct.copro_slb** %5, align 8
  %33 = getelementptr inbounds %struct.copro_slb, %struct.copro_slb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SID_SHIFT, align 4
  %36 = lshr i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %41 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %40, i32 0, i32 2
  %42 = load %struct.cxl_sste*, %struct.cxl_sste** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 3
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %42, i64 %45
  store %struct.cxl_sste* %46, %struct.cxl_sste** %6, align 8
  store i32 0, i32* %10, align 4
  %47 = load %struct.cxl_sste*, %struct.cxl_sste** %6, align 8
  store %struct.cxl_sste* %47, %struct.cxl_sste** %7, align 8
  br label %48

48:                                               ; preds = %71, %39
  %49 = load i32, i32* %10, align 4
  %50 = icmp ult i32 %49, 8
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.cxl_sste*, %struct.cxl_sste** %8, align 8
  %53 = icmp ne %struct.cxl_sste* %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = load %struct.cxl_sste*, %struct.cxl_sste** %7, align 8
  %56 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be64_to_cpu(i32 %57)
  %59 = load i32, i32* @SLB_ESID_V, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load %struct.cxl_sste*, %struct.cxl_sste** %7, align 8
  store %struct.cxl_sste* %63, %struct.cxl_sste** %8, align 8
  br label %64

64:                                               ; preds = %62, %54, %51
  %65 = load %struct.cxl_sste*, %struct.cxl_sste** %7, align 8
  %66 = load %struct.copro_slb*, %struct.copro_slb** %5, align 8
  %67 = call i64 @sste_matches(%struct.cxl_sste* %65, %struct.copro_slb* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store %struct.cxl_sste* null, %struct.cxl_sste** %3, align 8
  br label %96

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load %struct.cxl_sste*, %struct.cxl_sste** %7, align 8
  %75 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %74, i32 1
  store %struct.cxl_sste* %75, %struct.cxl_sste** %7, align 8
  br label %48

76:                                               ; preds = %48
  %77 = load %struct.cxl_sste*, %struct.cxl_sste** %8, align 8
  %78 = icmp ne %struct.cxl_sste* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load %struct.cxl_sste*, %struct.cxl_sste** %8, align 8
  store %struct.cxl_sste* %80, %struct.cxl_sste** %3, align 8
  br label %96

81:                                               ; preds = %76
  %82 = load %struct.cxl_sste*, %struct.cxl_sste** %6, align 8
  %83 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %84 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.cxl_sste, %struct.cxl_sste* %82, i64 %86
  store %struct.cxl_sste* %87, %struct.cxl_sste** %8, align 8
  %88 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %89 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = and i32 %91, 7
  %93 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %94 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.cxl_sste*, %struct.cxl_sste** %8, align 8
  store %struct.cxl_sste* %95, %struct.cxl_sste** %3, align 8
  br label %96

96:                                               ; preds = %81, %79, %69
  %97 = load %struct.cxl_sste*, %struct.cxl_sste** %3, align 8
  ret %struct.cxl_sste* %97
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i64 @sste_matches(%struct.cxl_sste*, %struct.copro_slb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
