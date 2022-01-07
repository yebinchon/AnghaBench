; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.h_venus_caps_by_codec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_core.h_venus_caps_by_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_caps = type { i64, i64 }
%struct.venus_core = type { i32, %struct.venus_caps* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.venus_caps* (%struct.venus_core*, i64, i64)* @venus_caps_by_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.venus_caps* @venus_caps_by_codec(%struct.venus_core* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.venus_caps*, align 8
  %5 = alloca %struct.venus_core*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %12 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %17 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %16, i32 0, i32 1
  %18 = load %struct.venus_caps*, %struct.venus_caps** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %18, i64 %20
  %22 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %15
  %27 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %28 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %27, i32 0, i32 1
  %29 = load %struct.venus_caps*, %struct.venus_caps** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %29, i64 %31
  %33 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.venus_core*, %struct.venus_core** %5, align 8
  %39 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %38, i32 0, i32 1
  %40 = load %struct.venus_caps*, %struct.venus_caps** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %40, i64 %42
  store %struct.venus_caps* %43, %struct.venus_caps** %4, align 8
  br label %49

44:                                               ; preds = %26, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %9

48:                                               ; preds = %9
  store %struct.venus_caps* null, %struct.venus_caps** %4, align 8
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.venus_caps*, %struct.venus_caps** %4, align 8
  ret %struct.venus_caps* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
