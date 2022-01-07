; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_reglist = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ET8EK8_REGLIST_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @et8ek8_reglist_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et8ek8_reglist_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.et8ek8_reglist**, align 8
  %7 = alloca %struct.et8ek8_reglist**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.et8ek8_reglist**
  store %struct.et8ek8_reglist** %9, %struct.et8ek8_reglist*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.et8ek8_reglist**
  store %struct.et8ek8_reglist** %11, %struct.et8ek8_reglist*** %7, align 8
  %12 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %13 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %12, align 8
  %14 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %7, align 8
  %20 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %19, align 8
  %21 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %94

26:                                               ; preds = %18, %2
  %27 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %28 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %27, align 8
  %29 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %7, align 8
  %35 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %34, align 8
  %36 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %94

41:                                               ; preds = %33, %26
  %42 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %43 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %42, align 8
  %44 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %7, align 8
  %48 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %47, align 8
  %49 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %94

54:                                               ; preds = %41
  %55 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %56 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %55, align 8
  %57 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %7, align 8
  %61 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %60, align 8
  %62 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %59, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %94

67:                                               ; preds = %54
  %68 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %69 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %68, align 8
  %70 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %7, align 8
  %74 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %73, align 8
  %75 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %94

80:                                               ; preds = %67
  %81 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %82 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %81, align 8
  %83 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %7, align 8
  %87 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %86, align 8
  %88 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %85, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %94

93:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %92, %79, %66, %53, %40, %25
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
