; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_build_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_build_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.cfi_private = type { i32 }
%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64*, i32 } @cfi_build_cmd(i64 %0, %struct.map_info* %1, %struct.cfi_private* %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.map_info*, align 8
  %7 = alloca %struct.cfi_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.map_info* %1, %struct.map_info** %6, align 8
  store %struct.cfi_private* %2, %struct.cfi_private** %7, align 8
  %14 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.map_info*, %struct.map_info** %6, align 8
  %16 = call i64 @map_bankwidth_is_large(%struct.map_info* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  store i32 8, i32* %8, align 4
  %19 = load %struct.map_info*, %struct.map_info** %6, align 8
  %20 = call i32 @map_bankwidth(%struct.map_info* %19)
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.map_info*, %struct.map_info** %6, align 8
  %25 = call i32 @map_bankwidth(%struct.map_info* %24)
  store i32 %25, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.map_info*, %struct.map_info** %6, align 8
  %28 = call i32 @map_bankwidth(%struct.map_info* %27)
  %29 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %30 = call i32 @cfi_interleave(%struct.cfi_private* %29)
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %34 = call i32 @cfi_interleave(%struct.cfi_private* %33)
  %35 = mul nsw i32 %32, %34
  %36 = load %struct.map_info*, %struct.map_info** %6, align 8
  %37 = call i32 @map_bankwidth(%struct.map_info* %36)
  %38 = sdiv i32 %35, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %40 [
    i32 1, label %42
    i32 2, label %44
    i32 4, label %48
  ]

40:                                               ; preds = %26
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %26, %40
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %12, align 8
  br label %52

44:                                               ; preds = %26
  %45 = load %struct.map_info*, %struct.map_info** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @cpu_to_cfi16(%struct.map_info* %45, i64 %46)
  store i64 %47, i64* %12, align 8
  br label %52

48:                                               ; preds = %26
  %49 = load %struct.map_info*, %struct.map_info** %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @cpu_to_cfi32(%struct.map_info* %49, i64 %50)
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %48, %44, %42
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %54 [
    i32 4, label %56
    i32 2, label %64
    i32 1, label %72
  ]

54:                                               ; preds = %52
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %52, %54
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %58, 16
  %60 = zext i32 %59 to i64
  %61 = shl i64 %57, %60
  %62 = load i64, i64* %12, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %52, %56
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %66, 8
  %68 = zext i32 %67 to i64
  %69 = shl i64 %65, %68
  %70 = load i64, i64* %12, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %52, %64
  br label %73

73:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %79, i64* %84, align 8
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %74

88:                                               ; preds = %74
  %89 = bitcast %struct.TYPE_5__* %4 to { i64*, i32 }*
  %90 = load { i64*, i32 }, { i64*, i32 }* %89, align 8
  ret { i64*, i32 } %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @map_bankwidth_is_large(%struct.map_info*) #2

declare dso_local i32 @map_bankwidth(%struct.map_info*) #2

declare dso_local i32 @cfi_interleave(%struct.cfi_private*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i64 @cpu_to_cfi16(%struct.map_info*, i64) #2

declare dso_local i64 @cpu_to_cfi32(%struct.map_info*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
