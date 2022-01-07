; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_set_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_set_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i64, %struct.TYPE_2__*, i64, i64, i64, %struct.mei_device* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mei_device = type { i32, i32, i32, i32 }

@MEI_FILE_DISCONNECTED = common dso_local global i64 0, align 8
@MEI_FILE_INITIALIZING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl*)* @mei_cl_set_disconnected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_cl_set_disconnected(%struct.mei_cl* %0) #0 {
  %2 = alloca %struct.mei_cl*, align 8
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %2, align 8
  %4 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %5 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %4, i32 0, i32 5
  %6 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  store %struct.mei_device* %6, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %8 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MEI_FILE_DISCONNECTED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %14 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MEI_FILE_INITIALIZING, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  br label %88

19:                                               ; preds = %12
  %20 = load i64, i64* @MEI_FILE_DISCONNECTED, align 8
  %21 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %22 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %24 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %23, i32 0, i32 3
  %25 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %26 = call i32 @mei_io_tx_list_free_cl(i32* %24, %struct.mei_cl* %25)
  %27 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 2
  %29 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %30 = call i32 @mei_io_tx_list_free_cl(i32* %28, %struct.mei_cl* %29)
  %31 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 1
  %33 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %34 = call i32 @mei_io_list_flush_cl(i32* %32, %struct.mei_cl* %33)
  %35 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 0
  %37 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %38 = call i32 @mei_io_list_flush_cl(i32* %36, %struct.mei_cl* %37)
  %39 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %40 = call i32 @mei_cl_wake_all(%struct.mei_cl* %39)
  %41 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %42 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %44 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %46 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %48 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %19
  br label %88

52:                                               ; preds = %19
  %53 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %54 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %64 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %62, %52
  %70 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %71 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %78 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %83 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = call i32 @mei_me_cl_put(%struct.TYPE_2__* %84)
  %86 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  %87 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %86, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %87, align 8
  br label %88

88:                                               ; preds = %81, %51, %18
  ret void
}

declare dso_local i32 @mei_io_tx_list_free_cl(i32*, %struct.mei_cl*) #1

declare dso_local i32 @mei_io_list_flush_cl(i32*, %struct.mei_cl*) #1

declare dso_local i32 @mei_cl_wake_all(%struct.mei_cl*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mei_me_cl_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
