; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_comp_threshold_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_comp_threshold_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comparator = type { i32*, i32 }
%struct.tps65910 = type { i32 }

@tps_comparators = common dso_local global %struct.comparator* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65910*, i32)* @comp_threshold_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_threshold_get(%struct.tps65910* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps65910*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comparator, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tps65910* %0, %struct.tps65910** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.comparator*, %struct.comparator** @tps_comparators, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.comparator, %struct.comparator* %9, i64 %11
  %13 = bitcast %struct.comparator* %6 to i8*
  %14 = bitcast %struct.comparator* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %16 = getelementptr inbounds %struct.comparator, %struct.comparator* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @tps65910_reg_read(%struct.tps65910* %15, i32 %17, i32* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = getelementptr inbounds %struct.comparator, %struct.comparator* %6, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tps65910_reg_read(%struct.tps65910*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
