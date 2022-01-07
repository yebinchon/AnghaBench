; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_bsd_comp.c_bsd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_bsd_comp.c_bsd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_db = type { i64, i32*, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@CI_BSD_COMPRESS = common dso_local global i8 0, align 1
@BSD_CURRENT_VERSION = common dso_local global i64 0, align 8
@LAST = common dso_local global i32 0, align 4
@BADCODEM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32)* @bsd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_init(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bsd_db*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.bsd_db*
  store %struct.bsd_db* %17, %struct.bsd_db** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %58, label %20

20:                                               ; preds = %6
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @CI_BSD_COMPRESS, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %58, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %58, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @BSD_VERSION(i8 zeroext %37)
  %39 = load i64, i64* @BSD_CURRENT_VERSION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @BSD_NBITS(i8 zeroext %44)
  %46 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %47 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %55 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %41, %34, %28, %20, %6
  store i32 0, i32* %7, align 4
  br label %114

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32, i32* @LAST, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %71, %62
  %65 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %66 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %15, align 4
  %74 = icmp sgt i32 %72, 0
  br i1 %74, label %64, label %75

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %78 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %84, %76
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %15, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i32, i32* @BADCODEM1, align 4
  %86 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %87 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %86, i32 0, i32 6
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 %85, i32* %92, align 8
  %93 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %94 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %93, i32 0, i32 6
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %80

100:                                              ; preds = %80
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %103 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %105 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %104, i32 0, i32 5
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %110 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %109, i32 0, i32 4
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %100
  %112 = load %struct.bsd_db*, %struct.bsd_db** %14, align 8
  %113 = call i32 @bsd_reset(%struct.bsd_db* %112)
  store i32 1, i32* %7, align 4
  br label %114

114:                                              ; preds = %111, %58
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i64 @BSD_VERSION(i8 zeroext) #1

declare dso_local i64 @BSD_NBITS(i8 zeroext) #1

declare dso_local i32 @bsd_reset(%struct.bsd_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
