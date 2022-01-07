; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_adminq_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_adminq_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.ionic_lif = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ionic_lif* }

@IONIC_QCQ_F_INITED = common dso_local global i32 0, align 4
@ionic_adminq_service = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @ionic_adminq_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_adminq_napi(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ionic_lif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %9 = call %struct.TYPE_4__* @napi_to_cq(%struct.napi_struct* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.ionic_lif*, %struct.ionic_lif** %10, align 8
  store %struct.ionic_lif* %11, %struct.ionic_lif** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.ionic_lif*, %struct.ionic_lif** %5, align 8
  %13 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.ionic_lif*, %struct.ionic_lif** %5, align 8
  %18 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IONIC_QCQ_F_INITED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %16, %2
  %26 = phi i1 [ false, %2 ], [ %24, %16 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.ionic_lif*, %struct.ionic_lif** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ionic_notifyq_clean(%struct.ionic_lif* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ionic_adminq_service, align 4
  %38 = call i32 @ionic_napi(%struct.napi_struct* %35, i32 %36, i32 %37, i32* null, i32* null)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @max(i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local %struct.TYPE_4__* @napi_to_cq(%struct.napi_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ionic_notifyq_clean(%struct.ionic_lif*, i32) #1

declare dso_local i32 @ionic_napi(%struct.napi_struct*, i32, i32, i32*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
