; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_comp_threshold_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_comp_threshold_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comparator = type { i32, i32*, i32 }
%struct.tps65910 = type { i32 }

@tps_comparators = common dso_local global %struct.comparator* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65910*, i32, i32)* @comp_threshold_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_threshold_set(%struct.tps65910* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps65910*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comparator, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tps65910* %0, %struct.tps65910** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.comparator*, %struct.comparator** @tps_comparators, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.comparator, %struct.comparator* %13, i64 %15
  %17 = bitcast %struct.comparator* %8 to i8*
  %18 = bitcast %struct.comparator* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %42, %3
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.comparator, %struct.comparator* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.comparator, %struct.comparator* %8, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %43

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41
  br label %19

43:                                               ; preds = %33, %19
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.comparator, %struct.comparator* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load i64, i64* %11, align 8
  %53 = shl i64 %52, 1
  store i64 %53, i64* %12, align 8
  %54 = load %struct.tps65910*, %struct.tps65910** %5, align 8
  %55 = getelementptr inbounds %struct.comparator, %struct.comparator* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @tps65910_reg_write(%struct.tps65910* %54, i32 %56, i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tps65910_reg_write(%struct.tps65910*, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
