; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_acquire_connection_ooo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_acquire_connection_ooo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.qed_ooo_buffer = type { i32, i8*, i32 }

@QED_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@QED_MSG_LL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Allocated [%04x] LL2 OOO buffers [each of size 0x%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*, i32)* @qed_ll2_acquire_connection_ooo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_acquire_connection_ooo(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ll2_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_ooo_buffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.qed_ooo_buffer* null, %struct.qed_ooo_buffer** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %14 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QED_LL2_TYPE_OOO, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %124

21:                                               ; preds = %3
  %22 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %23 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %21
  %28 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %29 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %124

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %41 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %21
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %108, %43
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %47 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %111

51:                                               ; preds = %44
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.qed_ooo_buffer* @kzalloc(i32 24, i32 %52)
  store %struct.qed_ooo_buffer* %53, %struct.qed_ooo_buffer** %8, align 8
  %54 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %55 = icmp ne %struct.qed_ooo_buffer* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %122

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 26
  %62 = load i32, i32* @ETH_CACHE_LINE_SIZE, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %65 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %67 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ETH_CACHE_LINE_SIZE, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @ETH_CACHE_LINE_SIZE, align 4
  %73 = sub nsw i32 %72, 1
  %74 = xor i32 %73, -1
  %75 = and i32 %71, %74
  %76 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %77 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %85 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %88 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %87, i32 0, i32 2
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @dma_alloc_coherent(i32* %83, i32 %86, i32* %88, i32 %89)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %59
  %94 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %95 = call i32 @kfree(%struct.qed_ooo_buffer* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %122

98:                                               ; preds = %59
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %101 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %103 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %104 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %107 = call i32 @qed_ooo_put_free_buffer(%struct.qed_hwfn* %102, i32 %105, %struct.qed_ooo_buffer* %106)
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %44

111:                                              ; preds = %44
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %113 = load i32, i32* @QED_MSG_LL2, align 4
  %114 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %115 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %8, align 8
  %119 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %112, i32 %113, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %111, %93, %56
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %34, %19
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.qed_ooo_buffer* @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.qed_ooo_buffer*) #1

declare dso_local i32 @qed_ooo_put_free_buffer(%struct.qed_hwfn*, i32, %struct.qed_ooo_buffer*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
