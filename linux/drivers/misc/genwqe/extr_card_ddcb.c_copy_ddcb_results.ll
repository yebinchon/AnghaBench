; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_copy_ddcb_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_copy_ddcb_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddcb_requ = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.ddcb_queue* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, i32, i8*, i8*, i8*, i8*, i32* }
%struct.ddcb_queue = type { i32, %struct.ddcb* }
%struct.ddcb = type { i32, i32, i32, i32, i32, i32, %struct.ddcb* }

@DDCB_ASV_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddcb_requ*, i32)* @copy_ddcb_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_ddcb_results(%struct.ddcb_requ* %0, i32 %1) #0 {
  %3 = alloca %struct.ddcb_requ*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddcb_queue*, align 8
  %6 = alloca %struct.ddcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ddcb*, align 8
  store %struct.ddcb_requ* %0, %struct.ddcb_requ** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %10 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %9, i32 0, i32 3
  %11 = load %struct.ddcb_queue*, %struct.ddcb_queue** %10, align 8
  store %struct.ddcb_queue* %11, %struct.ddcb_queue** %5, align 8
  %12 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %13 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %12, i32 0, i32 1
  %14 = load %struct.ddcb*, %struct.ddcb** %13, align 8
  %15 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %16 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %14, i64 %17
  store %struct.ddcb* %18, %struct.ddcb** %6, align 8
  %19 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %20 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %25 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %24, i32 0, i32 6
  %26 = load %struct.ddcb*, %struct.ddcb** %25, align 8
  %27 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %26, i64 0
  %28 = load i32, i32* @DDCB_ASV_LENGTH, align 4
  %29 = call i32 @memcpy(i32* %23, %struct.ddcb* %27, i32 %28)
  %30 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %31 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @be16_to_cpu(i32 %32)
  %34 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %35 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i8* %33, i8** %36, align 8
  %37 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %38 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @be64_to_cpu(i32 %39)
  %41 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %42 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %45 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @be64_to_cpu(i32 %46)
  %48 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %49 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %52 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @be16_to_cpu(i32 %53)
  %55 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %56 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %59 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %63 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %66 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @be16_to_cpu(i32 %67)
  %69 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %70 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %73 = call i64 @ddcb_requ_collect_debug_data(%struct.ddcb_requ* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %2
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %80 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  br label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %84, 1
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi i32 [ %82, %78 ], [ %85, %83 ]
  store i32 %87, i32* %7, align 4
  %88 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %89 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %88, i32 0, i32 1
  %90 = load %struct.ddcb*, %struct.ddcb** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %90, i64 %92
  store %struct.ddcb* %93, %struct.ddcb** %8, align 8
  %94 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %95 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.ddcb*, %struct.ddcb** %6, align 8
  %98 = call i32 @memcpy(i32* %96, %struct.ddcb* %97, i32 4)
  %99 = load %struct.ddcb_requ*, %struct.ddcb_requ** %3, align 8
  %100 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.ddcb*, %struct.ddcb** %8, align 8
  %103 = call i32 @memcpy(i32* %101, %struct.ddcb* %102, i32 4)
  br label %104

104:                                              ; preds = %86, %2
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.ddcb*, i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @ddcb_requ_collect_debug_data(%struct.ddcb_requ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
