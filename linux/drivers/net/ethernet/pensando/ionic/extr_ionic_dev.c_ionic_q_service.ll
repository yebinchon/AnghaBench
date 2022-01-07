; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.ionic_desc_info*, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.ionic_desc_info = type { i64, i32*, i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)*, %struct.ionic_desc_info* }
%struct.ionic_cq_info = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ionic_cq_info.0 = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"ionic stop is not posted %s stop %u tail %u head %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_q_service(%struct.ionic_queue* %0, %struct.ionic_cq_info.0* %1, i32 %2) #0 {
  %4 = alloca %struct.ionic_queue*, align 8
  %5 = alloca %struct.ionic_cq_info.0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ionic_desc_info*, align 8
  %8 = alloca i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)*, align 8
  %9 = alloca i8*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %4, align 8
  store %struct.ionic_cq_info.0* %1, %struct.ionic_cq_info.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %11 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %10, i32 0, i32 0
  %12 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %11, align 8
  %13 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %16 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %93

22:                                               ; preds = %3
  %23 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ionic_q_is_posted(%struct.ionic_queue* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %22
  %32 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %33 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %40 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %44 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %43, i32 0, i32 0
  %45 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %44, align 8
  %46 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %49 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i64 %47, i64 %52)
  br label %54

54:                                               ; preds = %31, %22
  br label %55

55:                                               ; preds = %86, %54
  %56 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %57 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %56, i32 0, i32 0
  %58 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %57, align 8
  store %struct.ionic_desc_info* %58, %struct.ionic_desc_info** %7, align 8
  %59 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %60 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %59, i32 0, i32 3
  %61 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %60, align 8
  %62 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %63 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %62, i32 0, i32 0
  store %struct.ionic_desc_info* %61, %struct.ionic_desc_info** %63, align 8
  %64 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %65 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %64, i32 0, i32 2
  %66 = load i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)*, i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)** %65, align 8
  %67 = bitcast i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)* %66 to i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)*
  store i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)* %67, i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)** %8, align 8
  %68 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %69 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to i8*
  store i8* %71, i8** %9, align 8
  %72 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %73 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %72, i32 0, i32 2
  store i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)* null, i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)** %73, align 8
  %74 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %75 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)*, i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)** %8, align 8
  %77 = icmp ne i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %55
  %79 = load i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)*, i32 (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info.0*, i8*)** %8, align 8
  %80 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %81 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %82 = load %struct.ionic_cq_info.0*, %struct.ionic_cq_info.0** %5, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 %79(%struct.ionic_queue* %80, %struct.ionic_desc_info* %81, %struct.ionic_cq_info.0* %82, i8* %83)
  br label %85

85:                                               ; preds = %78, %55
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %7, align 8
  %88 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = zext i32 %90 to i64
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %55, label %93

93:                                               ; preds = %21, %86
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ionic_q_is_posted(%struct.ionic_queue*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
