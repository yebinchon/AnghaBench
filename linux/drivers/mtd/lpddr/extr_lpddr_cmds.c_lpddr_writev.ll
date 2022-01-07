; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_writev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.lpddr_private* }
%struct.lpddr_private = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvec = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)* @lpddr_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_writev(%struct.mtd_info* %0, %struct.kvec* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.map_info*, align 8
  %13 = alloca %struct.lpddr_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.kvec* %1, %struct.kvec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load %struct.map_info*, %struct.map_info** %23, align 8
  store %struct.map_info* %24, %struct.map_info** %12, align 8
  %25 = load %struct.map_info*, %struct.map_info** %12, align 8
  %26 = getelementptr inbounds %struct.map_info, %struct.map_info* %25, i32 0, i32 0
  %27 = load %struct.lpddr_private*, %struct.lpddr_private** %26, align 8
  store %struct.lpddr_private* %27, %struct.lpddr_private** %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %29 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %18, align 8
  br label %34

34:                                               ; preds = %46, %5
  %35 = load i64, i64* %18, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.kvec*, %struct.kvec** %8, align 8
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %39, i64 %40
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %20, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %20, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %18, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %18, align 8
  br label %34

49:                                               ; preds = %34
  %50 = load i64, i64* %20, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %112

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %56 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %54, %57
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %61

61:                                               ; preds = %108, %53
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %16, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = and i64 %64, %67
  %69 = sub i64 %63, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %20, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = load i64, i64* %20, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %21, align 4
  br label %78

78:                                               ; preds = %75, %61
  %79 = load %struct.map_info*, %struct.map_info** %12, align 8
  %80 = load %struct.lpddr_private*, %struct.lpddr_private** %13, align 8
  %81 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i64, i64* %16, align 8
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @do_write_buffer(%struct.map_info* %79, i32* %85, i64 %86, %struct.kvec** %8, i64* %17, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %112

93:                                               ; preds = %78
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %16, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64*, i64** %11, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %20, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %20, align 8
  %107 = call i32 (...) @cond_resched()
  br label %108

108:                                              ; preds = %93
  %109 = load i64, i64* %20, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %61, label %111

111:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %91, %52
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @do_write_buffer(%struct.map_info*, i32*, i64, %struct.kvec**, i64*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
