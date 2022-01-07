; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcqs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcqs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_qcqs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_qcqs_free(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %5 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %6 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %5, i32 0, i32 5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %11 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %16 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %17 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ionic_qcq_free(%struct.ionic_lif* %15, i32* %18)
  %20 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %21 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %24 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %29 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %30 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ionic_qcq_free(%struct.ionic_lif* %28, i32* %31)
  %33 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %34 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %27, %22
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %39 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %44 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %55 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @devm_kfree(%struct.device* %53, %struct.TYPE_4__* %61)
  br label %63

63:                                               ; preds = %52, %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %36

67:                                               ; preds = %36
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %70 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @devm_kfree(%struct.device* %68, %struct.TYPE_4__* %71)
  %73 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %74 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %73, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %103, %67
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %78 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %83 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %94 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = call i32 @devm_kfree(%struct.device* %92, %struct.TYPE_4__* %100)
  br label %102

102:                                              ; preds = %91, %81
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %75

106:                                              ; preds = %75
  %107 = load %struct.device*, %struct.device** %3, align 8
  %108 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %109 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = call i32 @devm_kfree(%struct.device* %107, %struct.TYPE_4__* %110)
  %112 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %113 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %112, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %113, align 8
  ret void
}

declare dso_local i32 @ionic_qcq_free(%struct.ionic_lif*, i32*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
