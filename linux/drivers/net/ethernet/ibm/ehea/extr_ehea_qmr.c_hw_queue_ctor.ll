; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_hw_queue_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_hw_queue_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_queue = type { i32, i32, i32, i32, %struct.ehea_page**, i64 }
%struct.ehea_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"pagesize conflict! kernel pagesize=%d, ehea pagesize=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_queue*, i32, i32, i32)* @hw_queue_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_queue_ctor(%struct.hw_queue* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.hw_queue* %0, %struct.hw_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %132

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %34 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ehea_page** @kmalloc_array(i32 %35, i32 8, i32 %36)
  %38 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %39 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %38, i32 0, i32 4
  store %struct.ehea_page** %37, %struct.ehea_page*** %39, align 8
  %40 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %41 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %40, i32 0, i32 4
  %42 = load %struct.ehea_page**, %struct.ehea_page*** %41, align 8
  %43 = icmp ne %struct.ehea_page** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %132

47:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %88, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i64 @get_zeroed_page(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %100

59:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %88

70:                                               ; preds = %68
  %71 = load i32*, i32** %13, align 8
  %72 = bitcast i32* %71 to %struct.ehea_page*
  %73 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %74 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %73, i32 0, i32 4
  %75 = load %struct.ehea_page**, %struct.ehea_page*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ehea_page*, %struct.ehea_page** %75, i64 %77
  store %struct.ehea_page* %72, %struct.ehea_page** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %13, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %60

88:                                               ; preds = %68
  br label %48

89:                                               ; preds = %48
  %90 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %91 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %90, i32 0, i32 5
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %94 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %97 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %99 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  store i32 0, i32* %5, align 4
  br label %132

100:                                              ; preds = %58
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %125, %100
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %101
  %106 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %107 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %106, i32 0, i32 4
  %108 = load %struct.ehea_page**, %struct.ehea_page*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ehea_page*, %struct.ehea_page** %108, i64 %110
  %112 = load %struct.ehea_page*, %struct.ehea_page** %111, align 8
  %113 = icmp ne %struct.ehea_page* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %105
  br label %129

115:                                              ; preds = %105
  %116 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %117 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %116, i32 0, i32 4
  %118 = load %struct.ehea_page**, %struct.ehea_page*** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ehea_page*, %struct.ehea_page** %118, i64 %120
  %122 = load %struct.ehea_page*, %struct.ehea_page** %121, align 8
  %123 = ptrtoint %struct.ehea_page* %122 to i64
  %124 = call i32 @free_page(i64 %123)
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %11, align 4
  br label %101

129:                                              ; preds = %114, %101
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %129, %89, %44, %23
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.ehea_page** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
