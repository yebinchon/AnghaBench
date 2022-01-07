; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_ddb_lnb_init_fmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-max.c_ddb_lnb_init_fmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32 }
%struct.ddb_link = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Set fmode link %u = %u\0A\00", align 1
@fmode_sat = common dso_local global i64 0, align 8
@old_quattro = common dso_local global i64 0, align 8
@SEC_TONE_OFF = common dso_local global i32 0, align 4
@SEC_TONE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_lnb_init_fmode(%struct.ddb* %0, %struct.ddb_link* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb*, align 8
  %6 = alloca %struct.ddb_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ddb* %0, %struct.ddb** %5, align 8
  store %struct.ddb_link* %1, %struct.ddb_link** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ddb_link*, %struct.ddb_link** %6, align 8
  %10 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ddb_link*, %struct.ddb_link** %6, align 8
  %13 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %107

19:                                               ; preds = %3
  %20 = load %struct.ddb*, %struct.ddb** %5, align 8
  %21 = getelementptr inbounds %struct.ddb, %struct.ddb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_info(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.ddb_link*, %struct.ddb_link** %6, align 8
  %27 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %98

35:                                               ; preds = %32, %19
  %36 = load i64, i64* @fmode_sat, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load %struct.ddb*, %struct.ddb** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* @fmode_sat, align 8
  %42 = call i32 @lnb_set_sat(%struct.ddb* %39, i32 %40, i32 0, i64 %41, i32 0, i32 0)
  %43 = load i64, i64* @old_quattro, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.ddb*, %struct.ddb** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* @fmode_sat, align 8
  %49 = call i32 @lnb_set_sat(%struct.ddb* %46, i32 %47, i32 1, i64 %48, i32 0, i32 1)
  %50 = load %struct.ddb*, %struct.ddb** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* @fmode_sat, align 8
  %53 = call i32 @lnb_set_sat(%struct.ddb* %50, i32 %51, i32 2, i64 %52, i32 1, i32 0)
  br label %63

54:                                               ; preds = %38
  %55 = load %struct.ddb*, %struct.ddb** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* @fmode_sat, align 8
  %58 = call i32 @lnb_set_sat(%struct.ddb* %55, i32 %56, i32 1, i64 %57, i32 1, i32 0)
  %59 = load %struct.ddb*, %struct.ddb** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* @fmode_sat, align 8
  %62 = call i32 @lnb_set_sat(%struct.ddb* %59, i32 %60, i32 2, i64 %61, i32 0, i32 1)
  br label %63

63:                                               ; preds = %54, %45
  %64 = load %struct.ddb*, %struct.ddb** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* @fmode_sat, align 8
  %67 = call i32 @lnb_set_sat(%struct.ddb* %64, i32 %65, i32 3, i64 %66, i32 1, i32 1)
  br label %68

68:                                               ; preds = %63, %35
  %69 = load %struct.ddb*, %struct.ddb** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @SEC_TONE_OFF, align 4
  %72 = call i32 @lnb_set_tone(%struct.ddb* %69, i32 %70, i32 0, i32 %71)
  %73 = load i64, i64* @old_quattro, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.ddb*, %struct.ddb** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SEC_TONE_OFF, align 4
  %79 = call i32 @lnb_set_tone(%struct.ddb* %76, i32 %77, i32 1, i32 %78)
  %80 = load %struct.ddb*, %struct.ddb** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SEC_TONE_ON, align 4
  %83 = call i32 @lnb_set_tone(%struct.ddb* %80, i32 %81, i32 2, i32 %82)
  br label %93

84:                                               ; preds = %68
  %85 = load %struct.ddb*, %struct.ddb** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @SEC_TONE_ON, align 4
  %88 = call i32 @lnb_set_tone(%struct.ddb* %85, i32 %86, i32 1, i32 %87)
  %89 = load %struct.ddb*, %struct.ddb** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SEC_TONE_OFF, align 4
  %92 = call i32 @lnb_set_tone(%struct.ddb* %89, i32 %90, i32 2, i32 %91)
  br label %93

93:                                               ; preds = %84, %75
  %94 = load %struct.ddb*, %struct.ddb** %5, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SEC_TONE_ON, align 4
  %97 = call i32 @lnb_set_tone(%struct.ddb* %94, i32 %95, i32 3, i32 %96)
  br label %98

98:                                               ; preds = %93, %32
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.ddb_link*, %struct.ddb_link** %6, align 8
  %101 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.ddb_link*, %struct.ddb_link** %6, align 8
  %104 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %98, %18
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lnb_set_sat(%struct.ddb*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @lnb_set_tone(%struct.ddb*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
