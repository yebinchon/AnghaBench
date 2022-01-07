; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_event_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_event_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i64, i64, i32 (%struct.ngene*, i32, i32)*, i32 (%struct.ngene*, i32)*, %struct.EVENT_BUFFER* }
%struct.EVENT_BUFFER = type { i32, i32, i32 }

@EVENT_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @event_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca %struct.EVENT_BUFFER, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.ngene*
  store %struct.ngene* %6, %struct.ngene** %3, align 8
  br label %7

7:                                                ; preds = %72, %1
  %8 = load %struct.ngene*, %struct.ngene** %3, align 8
  %9 = getelementptr inbounds %struct.ngene, %struct.ngene* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ngene*, %struct.ngene** %3, align 8
  %12 = getelementptr inbounds %struct.ngene, %struct.ngene* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %73

15:                                               ; preds = %7
  %16 = load %struct.ngene*, %struct.ngene** %3, align 8
  %17 = getelementptr inbounds %struct.ngene, %struct.ngene* %16, i32 0, i32 4
  %18 = load %struct.EVENT_BUFFER*, %struct.EVENT_BUFFER** %17, align 8
  %19 = load %struct.ngene*, %struct.ngene** %3, align 8
  %20 = getelementptr inbounds %struct.ngene, %struct.ngene* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.EVENT_BUFFER, %struct.EVENT_BUFFER* %18, i64 %21
  %23 = bitcast %struct.EVENT_BUFFER* %4 to i8*
  %24 = bitcast %struct.EVENT_BUFFER* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = load %struct.ngene*, %struct.ngene** %3, align 8
  %26 = getelementptr inbounds %struct.ngene, %struct.ngene* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  %29 = load i32, i32* @EVENT_QUEUE_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %28, %31
  %33 = load %struct.ngene*, %struct.ngene** %3, align 8
  %34 = getelementptr inbounds %struct.ngene, %struct.ngene* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds %struct.EVENT_BUFFER, %struct.EVENT_BUFFER* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %15
  %40 = load %struct.ngene*, %struct.ngene** %3, align 8
  %41 = getelementptr inbounds %struct.ngene, %struct.ngene* %40, i32 0, i32 3
  %42 = load i32 (%struct.ngene*, i32)*, i32 (%struct.ngene*, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.ngene*, i32)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.ngene*, %struct.ngene** %3, align 8
  %46 = getelementptr inbounds %struct.ngene, %struct.ngene* %45, i32 0, i32 3
  %47 = load i32 (%struct.ngene*, i32)*, i32 (%struct.ngene*, i32)** %46, align 8
  %48 = load %struct.ngene*, %struct.ngene** %3, align 8
  %49 = getelementptr inbounds %struct.EVENT_BUFFER, %struct.EVENT_BUFFER* %4, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %47(%struct.ngene* %48, i32 %50)
  br label %52

52:                                               ; preds = %44, %39, %15
  %53 = getelementptr inbounds %struct.EVENT_BUFFER, %struct.EVENT_BUFFER* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.ngene*, %struct.ngene** %3, align 8
  %59 = getelementptr inbounds %struct.ngene, %struct.ngene* %58, i32 0, i32 2
  %60 = load i32 (%struct.ngene*, i32, i32)*, i32 (%struct.ngene*, i32, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.ngene*, i32, i32)* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.ngene*, %struct.ngene** %3, align 8
  %64 = getelementptr inbounds %struct.ngene, %struct.ngene* %63, i32 0, i32 2
  %65 = load i32 (%struct.ngene*, i32, i32)*, i32 (%struct.ngene*, i32, i32)** %64, align 8
  %66 = load %struct.ngene*, %struct.ngene** %3, align 8
  %67 = getelementptr inbounds %struct.EVENT_BUFFER, %struct.EVENT_BUFFER* %4, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.EVENT_BUFFER, %struct.EVENT_BUFFER* %4, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %65(%struct.ngene* %66, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %62, %57, %52
  br label %7

73:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
