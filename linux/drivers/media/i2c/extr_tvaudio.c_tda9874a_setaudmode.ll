; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_setaudmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_setaudmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_subdev = type { i32 }

@tda9874a_mode = common dso_local global i64 0, align 8
@MAXREGS = common dso_local global i32 0, align 4
@tda9874a_NCONR = common dso_local global i32 0, align 4
@TDA9874A_NCONR = common dso_local global i32 0, align 4
@tda9874a_dic = common dso_local global i32 0, align 4
@TDA9874A_AOSR = common dso_local global i32 0, align 4
@TDA9874A_MDACOSR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"tda9874a_setaudmode(): req. mode %d; AOSR=0x%X, MDACOSR=0x%X.\0A\00", align 1
@tda9874a_ESP = common dso_local global i32 0, align 4
@TDA9874A_FMMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"tda9874a_setaudmode(): req. mode %d; FMMR=0x%X, AOSR=0x%X.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CHIPSTATE*, i32)* @tda9874a_setaudmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda9874a_setaudmode(%struct.CHIPSTATE* %0, i32 %1) #0 {
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %11 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %10, i32 0, i32 1
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %5, align 8
  %12 = load i64, i64* @tda9874a_mode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %16 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @MAXREGS, align 4
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @tda9874a_NCONR, align 4
  %28 = and i32 %27, 254
  store i32 %28, i32* @tda9874a_NCONR, align 4
  br label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @tda9874a_NCONR, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* @tda9874a_NCONR, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %34 = load i32, i32* @TDA9874A_NCONR, align 4
  %35 = load i32, i32* @tda9874a_NCONR, align 4
  %36 = call i32 @chip_write(%struct.CHIPSTATE* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load i32, i32* @tda9874a_dic, align 4
  %39 = icmp eq i32 %38, 17
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  store i32 128, i32* %6, align 4
  %41 = load i64, i64* @tda9874a_mode, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 130, i32 128
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %62 [
    i32 129, label %46
    i32 128, label %46
    i32 132, label %47
    i32 130, label %52
    i32 131, label %57
  ]

46:                                               ; preds = %40, %40
  br label %63

47:                                               ; preds = %40
  store i32 128, i32* %6, align 4
  %48 = load i64, i64* @tda9874a_mode, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 130, i32 128
  store i32 %51, i32* %7, align 4
  br label %63

52:                                               ; preds = %40
  store i32 160, i32* %6, align 4
  %53 = load i64, i64* @tda9874a_mode, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 131, i32 129
  store i32 %56, i32* %7, align 4
  br label %63

57:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  %58 = load i64, i64* @tda9874a_mode, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 130, i32 128
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %40
  br label %110

63:                                               ; preds = %57, %52, %47, %46
  %64 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %65 = load i32, i32* @TDA9874A_AOSR, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @chip_write(%struct.CHIPSTATE* %64, i32 %65, i32 %66)
  %68 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %69 = load i32, i32* @TDA9874A_MDACOSR, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @chip_write(%struct.CHIPSTATE* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @debug, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @v4l2_dbg(i32 1, i32 %72, %struct.v4l2_subdev* %73, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76)
  br label %110

78:                                               ; preds = %37
  %79 = load i32, i32* %4, align 4
  switch i32 %79, label %94 [
    i32 129, label %80
    i32 128, label %81
    i32 132, label %91
    i32 130, label %92
    i32 131, label %93
  ]

80:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %95

81:                                               ; preds = %78
  %82 = load i64, i64* @tda9874a_mode, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %90

85:                                               ; preds = %81
  %86 = load i32, i32* @tda9874a_ESP, align 4
  %87 = icmp eq i32 %86, 1
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 5, i32 4
  store i32 %89, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %85, %84
  br label %95

91:                                               ; preds = %78
  store i32 2, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %95

92:                                               ; preds = %78
  store i32 2, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %95

93:                                               ; preds = %78
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %95

94:                                               ; preds = %78
  br label %110

95:                                               ; preds = %93, %92, %91, %90, %80
  %96 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %97 = load i32, i32* @TDA9874A_FMMR, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @chip_write(%struct.CHIPSTATE* %96, i32 %97, i32 %98)
  %100 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %101 = load i32, i32* @TDA9874A_AOSR, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @chip_write(%struct.CHIPSTATE* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @debug, align 4
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @v4l2_dbg(i32 1, i32 %104, %struct.v4l2_subdev* %105, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %62, %94, %95, %63
  ret void
}

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
