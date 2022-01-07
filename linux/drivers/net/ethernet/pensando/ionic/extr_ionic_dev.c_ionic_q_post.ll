; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.ionic_lif* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i8*, i32 }
%struct.ionic_lif = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"lif=%d qname=%s qid=%d qtype=%d p_index=%d ringdb=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_q_post(%struct.ionic_queue* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.ionic_lif*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %12 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %11, i32 0, i32 5
  %13 = load %struct.ionic_lif*, %struct.ionic_lif** %12, align 8
  %14 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %19 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %18, i32 0, i32 5
  %20 = load %struct.ionic_lif*, %struct.ionic_lif** %19, align 8
  store %struct.ionic_lif* %20, %struct.ionic_lif** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %23 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 %21, i32* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %28 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %26, i8** %30, align 8
  %31 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %32 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %37 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %36, i32 0, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %40 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %39, i32 0, i32 5
  %41 = load %struct.ionic_lif*, %struct.ionic_lif** %40, align 8
  %42 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %45 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %48 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %51 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %54 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %49, i32 %52, i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %4
  %63 = load %struct.ionic_lif*, %struct.ionic_lif** %10, align 8
  %64 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %67 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %70 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %73 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %71, %76
  %78 = call i32 @ionic_dbell_ring(i32 %65, i32 %68, i32 %77)
  br label %79

79:                                               ; preds = %62, %4
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ionic_dbell_ring(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
