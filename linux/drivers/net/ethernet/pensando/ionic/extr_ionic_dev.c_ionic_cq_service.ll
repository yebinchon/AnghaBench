; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_cq_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_cq_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_cq = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_cq_service(%struct.ionic_cq* %0, i32 %1, i64 (%struct.ionic_cq*, %struct.TYPE_3__*)* %2, i32 (i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ionic_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64 (%struct.ionic_cq*, %struct.TYPE_3__*)*, align 8
  %10 = alloca i32 (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ionic_cq* %0, %struct.ionic_cq** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 (%struct.ionic_cq*, %struct.TYPE_3__*)* %2, i64 (%struct.ionic_cq*, %struct.TYPE_3__*)** %9, align 8
  store i32 (i8*)* %3, i32 (i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %69

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %56, %16
  %18 = load i64 (%struct.ionic_cq*, %struct.TYPE_3__*)*, i64 (%struct.ionic_cq*, %struct.TYPE_3__*)** %9, align 8
  %19 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %20 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %21 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i64 %18(%struct.ionic_cq* %19, %struct.TYPE_3__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %17
  %26 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %27 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %34 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %40 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %43 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %48 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %47, i32 0, i32 1
  store %struct.TYPE_3__* %46, %struct.TYPE_3__** %48, align 8
  %49 = load %struct.ionic_cq*, %struct.ionic_cq** %7, align 8
  %50 = call i32 @DEBUG_STATS_CQE_CNT(%struct.ionic_cq* %49)
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %57

56:                                               ; preds = %41
  br label %17

57:                                               ; preds = %55, %17
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %62 = icmp ne i32 (i8*)* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 %64(i8* %65)
  br label %67

67:                                               ; preds = %63, %60, %57
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %15
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @DEBUG_STATS_CQE_CNT(%struct.ionic_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
