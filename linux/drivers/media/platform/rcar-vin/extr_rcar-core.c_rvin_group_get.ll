; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-core.c_rvin_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_group = type { i32, i32, %struct.rvin_dev**, i32 }
%struct.rvin_dev = type { i64, %struct.TYPE_4__, %struct.rvin_group*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"renesas,id\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%pOF: No renesas,id property found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RCAR_VIN_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%pOF: Invalid renesas,id '%u'\0A\00", align 1
@rvin_group_lock = common dso_local global i32 0, align 4
@rvin_group_data = common dso_local global %struct.rvin_group* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to initialize group\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Duplicate renesas,id property value %u\0A\00", align 1
@rvin_group_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*)* @rvin_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_group_get(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca %struct.rvin_group*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  %7 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @of_property_read_u32(i64 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %17 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_err(%struct.rvin_dev* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %122

25:                                               ; preds = %1
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @RCAR_VIN_NUM, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %31 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_err(%struct.rvin_dev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %122

40:                                               ; preds = %25
  %41 = call i32 @mutex_lock(i32* @rvin_group_lock)
  %42 = load %struct.rvin_group*, %struct.rvin_group** @rvin_group_data, align 8
  %43 = icmp ne %struct.rvin_group* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.rvin_group*, %struct.rvin_group** @rvin_group_data, align 8
  store %struct.rvin_group* %45, %struct.rvin_group** %4, align 8
  %46 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %47 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %46, i32 0, i32 3
  %48 = call i32 @kref_get(i32* %47)
  br label %73

49:                                               ; preds = %40
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.rvin_group* @kzalloc(i32 24, i32 %50)
  store %struct.rvin_group* %51, %struct.rvin_group** %4, align 8
  %52 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %53 = icmp ne %struct.rvin_group* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %119

57:                                               ; preds = %49
  %58 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %59 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %60 = call i32 @rvin_group_init(%struct.rvin_group* %58, %struct.rvin_dev* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %65 = call i32 @kfree(%struct.rvin_group* %64)
  %66 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %67 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_err(%struct.rvin_dev* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %119

68:                                               ; preds = %57
  %69 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %70 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %69, i32 0, i32 3
  %71 = call i32 @kref_init(i32* %70)
  %72 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  store %struct.rvin_group* %72, %struct.rvin_group** @rvin_group_data, align 8
  br label %73

73:                                               ; preds = %68, %44
  %74 = call i32 @mutex_unlock(i32* @rvin_group_lock)
  %75 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %76 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %75, i32 0, i32 0
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %79 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %78, i32 0, i32 2
  %80 = load %struct.rvin_dev**, %struct.rvin_dev*** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.rvin_dev*, %struct.rvin_dev** %80, i64 %81
  %83 = load %struct.rvin_dev*, %struct.rvin_dev** %82, align 8
  %84 = icmp ne %struct.rvin_dev* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %73
  %86 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (%struct.rvin_dev*, i8*, ...) @vin_err(%struct.rvin_dev* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %90 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %93 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %92, i32 0, i32 3
  %94 = load i32, i32* @rvin_group_release, align 4
  %95 = call i32 @kref_put(i32* %93, i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %122

98:                                               ; preds = %73
  %99 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %100 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %101 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %100, i32 0, i32 2
  %102 = load %struct.rvin_dev**, %struct.rvin_dev*** %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds %struct.rvin_dev*, %struct.rvin_dev** %102, i64 %103
  store %struct.rvin_dev* %99, %struct.rvin_dev** %104, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %107 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %109 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %110 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %109, i32 0, i32 2
  store %struct.rvin_group* %108, %struct.rvin_group** %110, align 8
  %111 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %112 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %111, i32 0, i32 1
  %113 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %114 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32* %112, i32** %115, align 8
  %116 = load %struct.rvin_group*, %struct.rvin_group** %4, align 8
  %117 = getelementptr inbounds %struct.rvin_group, %struct.rvin_group* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  store i32 0, i32* %2, align 4
  br label %122

119:                                              ; preds = %63, %54
  %120 = call i32 @mutex_unlock(i32* @rvin_group_lock)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %119, %98, %85, %29, %15
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @of_property_read_u32(i64, i8*, i64*) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.rvin_group* @kzalloc(i32, i32) #1

declare dso_local i32 @rvin_group_init(%struct.rvin_group*, %struct.rvin_dev*) #1

declare dso_local i32 @kfree(%struct.rvin_group*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
