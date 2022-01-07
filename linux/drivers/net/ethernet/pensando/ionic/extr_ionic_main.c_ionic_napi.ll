; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.ionic_qcq = type { %struct.ionic_cq }
%struct.ionic_cq = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IONIC_INTR_CRED_UNMASK = common dso_local global i32 0, align 4
@IONIC_INTR_CRED_RESET_COALESCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_napi(%struct.napi_struct* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ionic_qcq*, align 8
  %12 = alloca %struct.ionic_cq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %16 = call %struct.ionic_qcq* @napi_to_qcq(%struct.napi_struct* %15)
  store %struct.ionic_qcq* %16, %struct.ionic_qcq** %11, align 8
  %17 = load %struct.ionic_qcq*, %struct.ionic_qcq** %11, align 8
  %18 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %17, i32 0, i32 0
  store %struct.ionic_cq* %18, %struct.ionic_cq** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ionic_cq*, %struct.ionic_cq** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @ionic_cq_service(%struct.ionic_cq* %19, i32 %20, i32 %21, i32 %22, i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %5
  %29 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @napi_complete_done(%struct.napi_struct* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* @IONIC_INTR_CRED_UNMASK, align 4
  %35 = load i32, i32* %14, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ionic_cq*, %struct.ionic_cq** %12, align 8
  %38 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @DEBUG_STATS_INTR_REARM(%struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %33, %28, %5
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @IONIC_INTR_CRED_RESET_COALESCE, align 4
  %49 = load i32, i32* %14, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %14, align 4
  %51 = load %struct.ionic_cq*, %struct.ionic_cq** %12, align 8
  %52 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ionic_cq*, %struct.ionic_cq** %12, align 8
  %60 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ionic_intr_credits(i32 %58, i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %47, %44
  %68 = load %struct.ionic_qcq*, %struct.ionic_qcq** %11, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @DEBUG_STATS_NAPI_POLL(%struct.ionic_qcq* %68, i32 %69)
  %71 = load i32, i32* %13, align 4
  ret i32 %71
}

declare dso_local %struct.ionic_qcq* @napi_to_qcq(%struct.napi_struct*) #1

declare dso_local i32 @ionic_cq_service(%struct.ionic_cq*, i32, i32, i32, i8*) #1

declare dso_local i64 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @DEBUG_STATS_INTR_REARM(%struct.TYPE_8__*) #1

declare dso_local i32 @ionic_intr_credits(i32, i32, i32, i32) #1

declare dso_local i32 @DEBUG_STATS_NAPI_POLL(%struct.ionic_qcq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
