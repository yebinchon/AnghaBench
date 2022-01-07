; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_RxSeqValid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_RxSeqValid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@FLAG_UPDATE_MULTI = common dso_local global i32 0, align 4
@FLAG_UPDATE_UNI = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, %struct.TYPE_4__*, i32, i32)* @RxSeqValid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RxSeqValid(%struct.airo_info* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.airo_info*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = load i32, i32* @FLAG_UPDATE_MULTI, align 4
  %16 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %17 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32, i32* @FLAG_UPDATE_MULTI, align 4
  %22 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 33
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 33, %29 ]
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %14
  br label %60

37:                                               ; preds = %4
  %38 = load i32, i32* @FLAG_UPDATE_UNI, align 4
  %39 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %40 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load i32, i32* @FLAG_UPDATE_UNI, align 4
  %45 = load %struct.airo_info*, %struct.airo_info** %6, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 0
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 33
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 33, %52 ]
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %37
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 33
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @ERROR, align 4
  store i32 %71, i32* %5, align 4
  br label %103

72:                                               ; preds = %60
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 64
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @MoveWindow(%struct.TYPE_4__* %76, i32 %77)
  %79 = load i32, i32* @SUCCESS, align 4
  store i32 %79, i32* %5, align 4
  br label %103

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 1, %83
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @MoveWindow(%struct.TYPE_4__* %97, i32 %98)
  %100 = load i32, i32* @SUCCESS, align 4
  store i32 %100, i32* %5, align 4
  br label %103

101:                                              ; preds = %80
  %102 = load i32, i32* @ERROR, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %91, %75, %70
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @MoveWindow(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
