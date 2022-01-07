; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i64, i64, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.il_priv*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Requested user TXPOWER %d below 1 mW.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Requested user TXPOWER %d above upper limit %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@S_SCANNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Deferring tx power set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_set_tx_power(%struct.il_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 7
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %113

23:                                               ; preds = %19, %3
  %24 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %27, align 8
  %29 = icmp ne i32 (%struct.il_priv*)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %113

33:                                               ; preds = %23
  %34 = load i64, i64* %6, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i8*, i64, ...) @IL_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %113

41:                                               ; preds = %33
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, i64, ...) @IL_WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %113

55:                                               ; preds = %41
  %56 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %57 = call i32 @il_is_ready_rf(%struct.il_priv* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %113

62:                                               ; preds = %55
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @S_SCANNING, align 4
  %67 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 6
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %62
  %72 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 5
  %74 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 4
  %76 = call i64 @memcmp(i32* %73, i32* %75, i32 4)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %71, %62
  %79 = phi i1 [ true, %62 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call i32 @D_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %113

88:                                               ; preds = %83, %78
  %89 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %90 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %96 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %98, align 8
  %100 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %101 = call i32 %99(%struct.il_priv* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %88
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %107 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %110 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %104, %88
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %86, %59, %47, %36, %30, %22
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IL_WARN(i8*, i64, ...) #1

declare dso_local i32 @il_is_ready_rf(%struct.il_priv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @D_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
