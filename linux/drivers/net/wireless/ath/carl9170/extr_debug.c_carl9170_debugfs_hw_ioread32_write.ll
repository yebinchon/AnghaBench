; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_hw_ioread32_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_hw_ioread32_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%X %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@CARL9170_DEBUG_RING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, i8*, i64)* @carl9170_debugfs_hw_ioread32_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_debugfs_hw_ioread32_write(%struct.ar9170* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 32, i32* %11, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @E2BIG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %130

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %10)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %119

34:                                               ; preds = %26
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 15
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EMSGSIZE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %119

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = icmp uge i32 %45, 2621440
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 2
  %51 = add i32 %48, %50
  %52 = icmp uge i32 %51, 2621440
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %44
  %54 = load i32, i32* @EADDRNOTAVAIL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %119

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = and i32 %57, 3
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %119

63:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %115, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %118

68:                                               ; preds = %64
  %69 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 %71, 2
  %73 = add i32 %70, %72
  %74 = call i32 @carl9170_read_reg(%struct.ar9170* %69, i32 %73, i32* %14)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %119

78:                                               ; preds = %68
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, 2
  %82 = add i32 %79, %81
  %83 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %84 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %88 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 %82, i32* %92, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %95 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %99 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %93, i32* %103, align 4
  %104 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %105 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* @CARL9170_DEBUG_RING_SIZE, align 8
  %110 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %111 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = urem i64 %113, %109
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %78
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %64

118:                                              ; preds = %64
  br label %119

119:                                              ; preds = %118, %77, %60, %53, %41, %31
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  br label %127

125:                                              ; preds = %119
  %126 = load i64, i64* %7, align 8
  br label %127

127:                                              ; preds = %125, %122
  %128 = phi i64 [ %124, %122 ], [ %126, %125 ]
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %23, %17
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @carl9170_read_reg(%struct.ar9170*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
