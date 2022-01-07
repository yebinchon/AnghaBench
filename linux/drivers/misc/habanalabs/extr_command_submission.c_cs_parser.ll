; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_cs_parser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_cs_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_fpriv = type { %struct.hl_device* }
%struct.hl_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.hl_device*, %struct.hl_cs_parser*)* }
%struct.hl_cs_parser = type { i32, %struct.TYPE_9__*, i64, i32, %struct.TYPE_10__*, i32*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.hl_cs_job = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i64, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_fpriv*, %struct.hl_cs_job*)* @cs_parser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_parser(%struct.hl_fpriv* %0, %struct.hl_cs_job* %1) #0 {
  %3 = alloca %struct.hl_fpriv*, align 8
  %4 = alloca %struct.hl_cs_job*, align 8
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cs_parser, align 8
  %7 = alloca i32, align 4
  store %struct.hl_fpriv* %0, %struct.hl_fpriv** %3, align 8
  store %struct.hl_cs_job* %1, %struct.hl_cs_job** %4, align 8
  %8 = load %struct.hl_fpriv*, %struct.hl_fpriv** %3, align 8
  %9 = getelementptr inbounds %struct.hl_fpriv, %struct.hl_fpriv* %8, i32 0, i32 0
  %10 = load %struct.hl_device*, %struct.hl_device** %9, align 8
  store %struct.hl_device* %10, %struct.hl_device** %5, align 8
  %11 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %12 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %11, i32 0, i32 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 9
  store i32 %17, i32* %18, align 4
  %19 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %20 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %19, i32 0, i32 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 8
  store i32 %23, i32* %24, align 8
  %25 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %26 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 7
  store i32 %27, i32* %28, align 4
  %29 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %30 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 6
  store i32 %31, i32* %32, align 8
  %33 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %34 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 5
  store i32* %34, i32** %35, align 8
  %36 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %36, align 8
  %37 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %38 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 4
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %40, align 8
  %41 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %42 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %46 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 2
  store i64 %47, i64* %48, align 8
  %49 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %50 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %49, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %50, align 8
  %51 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %52 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32 (%struct.hl_device*, %struct.hl_cs_parser*)*, i32 (%struct.hl_device*, %struct.hl_cs_parser*)** %54, align 8
  %56 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %57 = call i32 %55(%struct.hl_device* %56, %struct.hl_cs_parser* %6)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %59 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %2
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %90, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %69 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %68, i32 0, i32 1
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %69, align 8
  %70 = getelementptr inbounds %struct.hl_cs_parser, %struct.hl_cs_parser* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %73 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %75 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %80 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %86 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  br label %90

90:                                               ; preds = %65, %62
  %91 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %92 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %97 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %103 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %108 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = call i32 @hl_cb_put(%struct.TYPE_10__* %109)
  %111 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %112 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %111, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %112, align 8
  br label %113

113:                                              ; preds = %90, %2
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hl_cb_put(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
