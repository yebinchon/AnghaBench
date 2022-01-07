; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_find_decoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_find_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_dec = type { i64, i64 }
%struct.delta_ctx = type { %struct.delta_dev* }
%struct.delta_dev = type { i32, %struct.delta_dec** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.delta_dec* (%struct.delta_ctx*, i64, i64)* @delta_find_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.delta_dec* @delta_find_decoder(%struct.delta_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.delta_dec*, align 8
  %5 = alloca %struct.delta_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.delta_dev*, align 8
  %9 = alloca %struct.delta_dec*, align 8
  %10 = alloca i32, align 4
  store %struct.delta_ctx* %0, %struct.delta_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.delta_ctx*, %struct.delta_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %11, i32 0, i32 0
  %13 = load %struct.delta_dev*, %struct.delta_dev** %12, align 8
  store %struct.delta_dev* %13, %struct.delta_dev** %8, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %42, %3
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %17 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %22 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %21, i32 0, i32 1
  %23 = load %struct.delta_dec**, %struct.delta_dec*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.delta_dec*, %struct.delta_dec** %23, i64 %25
  %27 = load %struct.delta_dec*, %struct.delta_dec** %26, align 8
  store %struct.delta_dec* %27, %struct.delta_dec** %9, align 8
  %28 = load %struct.delta_dec*, %struct.delta_dec** %9, align 8
  %29 = getelementptr inbounds %struct.delta_dec, %struct.delta_dec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %20
  %34 = load %struct.delta_dec*, %struct.delta_dec** %9, align 8
  %35 = getelementptr inbounds %struct.delta_dec, %struct.delta_dec* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load %struct.delta_dec*, %struct.delta_dec** %9, align 8
  store %struct.delta_dec* %40, %struct.delta_dec** %4, align 8
  br label %46

41:                                               ; preds = %33, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %14

45:                                               ; preds = %14
  store %struct.delta_dec* null, %struct.delta_dec** %4, align 8
  br label %46

46:                                               ; preds = %45, %39
  %47 = load %struct.delta_dec*, %struct.delta_dec** %4, align 8
  ret %struct.delta_dec* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
