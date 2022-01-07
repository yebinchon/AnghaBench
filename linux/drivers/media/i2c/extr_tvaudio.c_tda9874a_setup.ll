; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9874a_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@TDA9874A_AGCGR = common dso_local global i32 0, align 4
@TDA9874A_GCONR = common dso_local global i32 0, align 4
@tda9874a_GCONR = common dso_local global i32 0, align 4
@TDA9874A_MSR = common dso_local global i32 0, align 4
@tda9874a_mode = common dso_local global i64 0, align 8
@tda9874a_dic = common dso_local global i32 0, align 4
@TDA9874A_FMMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tda9874_modelist\00", align 1
@tda9874a_modelist = common dso_local global %struct.TYPE_2__* null, align 8
@tda9874a_STD = common dso_local global i64 0, align 8
@TDA9874A_C1OLAR = common dso_local global i32 0, align 4
@TDA9874A_C2OLAR = common dso_local global i32 0, align 4
@TDA9874A_NCONR = common dso_local global i32 0, align 4
@tda9874a_NCONR = common dso_local global i32 0, align 4
@TDA9874A_NOLAR = common dso_local global i32 0, align 4
@TDA9874A_NLELR = common dso_local global i32 0, align 4
@TDA9874A_NUELR = common dso_local global i32 0, align 4
@TDA9874A_AMCONR = common dso_local global i32 0, align 4
@TDA9874A_SDACOSR = common dso_local global i32 0, align 4
@TDA9874A_AOSR = common dso_local global i32 0, align 4
@TDA9874A_MDACOSR = common dso_local global i32 0, align 4
@TDA9874A_ESP = common dso_local global i32 0, align 4
@tda9874a_ESP = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tda9874a_setup(): %s [0x%02X].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9874a_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9874a_setup(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca %struct.CHIPSTATE*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %2, align 8
  %4 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %5 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %4, i32 0, i32 0
  store %struct.v4l2_subdev* %5, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %7 = load i32, i32* @TDA9874A_AGCGR, align 4
  %8 = call i32 @chip_write(%struct.CHIPSTATE* %6, i32 %7, i32 0)
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %10 = load i32, i32* @TDA9874A_GCONR, align 4
  %11 = load i32, i32* @tda9874a_GCONR, align 4
  %12 = call i32 @chip_write(%struct.CHIPSTATE* %9, i32 %10, i32 %11)
  %13 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %14 = load i32, i32* @TDA9874A_MSR, align 4
  %15 = load i64, i64* @tda9874a_mode, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 3, i32 2
  %19 = call i32 @chip_write(%struct.CHIPSTATE* %13, i32 %14, i32 %18)
  %20 = load i32, i32* @tda9874a_dic, align 4
  %21 = icmp eq i32 %20, 17
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %24 = load i32, i32* @TDA9874A_FMMR, align 4
  %25 = call i32 @chip_write(%struct.CHIPSTATE* %23, i32 %24, i32 128)
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda9874a_modelist, align 8
  %29 = load i64, i64* @tda9874a_STD, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @chip_cmd(%struct.CHIPSTATE* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %31)
  %33 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %34 = load i32, i32* @TDA9874A_FMMR, align 4
  %35 = call i32 @chip_write(%struct.CHIPSTATE* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %26, %22
  %37 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %38 = load i32, i32* @TDA9874A_C1OLAR, align 4
  %39 = call i32 @chip_write(%struct.CHIPSTATE* %37, i32 %38, i32 0)
  %40 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %41 = load i32, i32* @TDA9874A_C2OLAR, align 4
  %42 = call i32 @chip_write(%struct.CHIPSTATE* %40, i32 %41, i32 0)
  %43 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %44 = load i32, i32* @TDA9874A_NCONR, align 4
  %45 = load i32, i32* @tda9874a_NCONR, align 4
  %46 = call i32 @chip_write(%struct.CHIPSTATE* %43, i32 %44, i32 %45)
  %47 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %48 = load i32, i32* @TDA9874A_NOLAR, align 4
  %49 = call i32 @chip_write(%struct.CHIPSTATE* %47, i32 %48, i32 0)
  %50 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %51 = load i32, i32* @TDA9874A_NLELR, align 4
  %52 = call i32 @chip_write(%struct.CHIPSTATE* %50, i32 %51, i32 20)
  %53 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %54 = load i32, i32* @TDA9874A_NUELR, align 4
  %55 = call i32 @chip_write(%struct.CHIPSTATE* %53, i32 %54, i32 80)
  %56 = load i32, i32* @tda9874a_dic, align 4
  %57 = icmp eq i32 %56, 17
  br i1 %57, label %58, label %83

58:                                               ; preds = %36
  %59 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %60 = load i32, i32* @TDA9874A_AMCONR, align 4
  %61 = call i32 @chip_write(%struct.CHIPSTATE* %59, i32 %60, i32 249)
  %62 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %63 = load i32, i32* @TDA9874A_SDACOSR, align 4
  %64 = load i64, i64* @tda9874a_mode, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 129, i32 128
  %68 = call i32 @chip_write(%struct.CHIPSTATE* %62, i32 %63, i32 %67)
  %69 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %70 = load i32, i32* @TDA9874A_AOSR, align 4
  %71 = call i32 @chip_write(%struct.CHIPSTATE* %69, i32 %70, i32 128)
  %72 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %73 = load i32, i32* @TDA9874A_MDACOSR, align 4
  %74 = load i64, i64* @tda9874a_mode, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 130, i32 128
  %78 = call i32 @chip_write(%struct.CHIPSTATE* %72, i32 %73, i32 %77)
  %79 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %80 = load i32, i32* @TDA9874A_ESP, align 4
  %81 = load i32, i32* @tda9874a_ESP, align 4
  %82 = call i32 @chip_write(%struct.CHIPSTATE* %79, i32 %80, i32 %81)
  br label %97

83:                                               ; preds = %36
  %84 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %85 = load i32, i32* @TDA9874A_AMCONR, align 4
  %86 = call i32 @chip_write(%struct.CHIPSTATE* %84, i32 %85, i32 251)
  %87 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %88 = load i32, i32* @TDA9874A_SDACOSR, align 4
  %89 = load i64, i64* @tda9874a_mode, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 129, i32 128
  %93 = call i32 @chip_write(%struct.CHIPSTATE* %87, i32 %88, i32 %92)
  %94 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %95 = load i32, i32* @TDA9874A_AOSR, align 4
  %96 = call i32 @chip_write(%struct.CHIPSTATE* %94, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %83, %58
  %98 = load i32, i32* @debug, align 4
  %99 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tda9874a_modelist, align 8
  %101 = load i64, i64* @tda9874a_STD, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* @tda9874a_STD, align 8
  %106 = call i32 @v4l2_dbg(i32 1, i32 %98, %struct.v4l2_subdev* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %104, i64 %105)
  ret i32 1
}

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

declare dso_local i32 @chip_cmd(%struct.CHIPSTATE*, i8*, i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
