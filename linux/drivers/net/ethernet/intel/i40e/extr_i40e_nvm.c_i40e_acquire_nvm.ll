; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_acquire_nvm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_acquire_nvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@I40E_NVM_RESOURCE_ID = common dso_local global i32 0, align 4
@I40E_GLVFGEN_TIMER = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"NVM acquire type %d failed time_left=%llu ret=%d aq_err=%d\0A\00", align 1
@I40E_MAX_NVM_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"NVM acquire timed out, wait %llu ms before trying again. status=%d aq_err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_acquire_nvm(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %103

15:                                               ; preds = %2
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %17 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @i40e_aq_request_resource(%struct.i40e_hw* %16, i32 %17, i32 %18, i32 0, i64* %8, i32* null)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %21 = load i32, i32* @I40E_GLVFGEN_TIMER, align 4
  %22 = call i64 @rd32(%struct.i40e_hw* %20, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @I40E_MS_TO_GTIME(i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %15
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.i40e_hw*, i32, i8*, i64, i64, i32, ...) @i40e_debug(%struct.i40e_hw* %33, i32 %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %37, i32 %39, i32 %43)
  br label %45

45:                                               ; preds = %32, %15
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %102

51:                                               ; preds = %48
  %52 = load i64, i64* @I40E_MAX_NVM_TIMEOUT, align 8
  %53 = call i64 @I40E_MS_TO_GTIME(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %53, %54
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %84, %51
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ false, %56 ], [ %62, %60 ]
  br i1 %64, label %65, label %85

65:                                               ; preds = %63
  %66 = call i32 @usleep_range(i32 10000, i32 20000)
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %68 = load i32, i32* @I40E_GLVFGEN_TIMER, align 4
  %69 = call i64 @rd32(%struct.i40e_hw* %67, i32 %68)
  store i64 %69, i64* %6, align 8
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %71 = load i32, i32* @I40E_NVM_RESOURCE_ID, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i64 @i40e_aq_request_resource(%struct.i40e_hw* %70, i32 %71, i32 %72, i32 0, i64* %8, i32* null)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %65
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @I40E_MS_TO_GTIME(i64 %77)
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %82 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %85

84:                                               ; preds = %65
  br label %56

85:                                               ; preds = %76, %63
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %90 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %93 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %97 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (%struct.i40e_hw*, i32, i8*, i64, i64, i32, ...) @i40e_debug(%struct.i40e_hw* %92, i32 %93, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %94, i64 %95, i32 %99)
  br label %101

101:                                              ; preds = %88, %85
  br label %102

102:                                              ; preds = %101, %48, %45
  br label %103

103:                                              ; preds = %102, %14
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i64 @i40e_aq_request_resource(%struct.i40e_hw*, i32, i32, i32, i64*, i32*) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i64 @I40E_MS_TO_GTIME(i64) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, i64, i32, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
