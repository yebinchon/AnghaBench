; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_set_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i64, i64, %struct.img_ir_priv* }
%struct.img_ir_priv = type { i32, i32, %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)* }
%struct.img_ir_filter = type { i64, i64, i32, i64 }
%struct.rc_scancode_filter = type { i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"IR scancode %sfilter=%08x & %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"wake \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"IR raw %sfilter=%016llx & %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32, %struct.rc_scancode_filter*)* @img_ir_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_set_filter(%struct.rc_dev* %0, i32 %1, %struct.rc_scancode_filter* %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_scancode_filter*, align 8
  %7 = alloca %struct.img_ir_priv*, align 8
  %8 = alloca %struct.img_ir_priv_hw*, align 8
  %9 = alloca %struct.img_ir_filter, align 8
  %10 = alloca %struct.img_ir_filter*, align 8
  %11 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rc_scancode_filter* %2, %struct.rc_scancode_filter** %6, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 2
  %14 = load %struct.img_ir_priv*, %struct.img_ir_priv** %13, align 8
  store %struct.img_ir_priv* %14, %struct.img_ir_priv** %7, align 8
  %15 = load %struct.img_ir_priv*, %struct.img_ir_priv** %7, align 8
  %16 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %15, i32 0, i32 2
  store %struct.img_ir_priv_hw* %16, %struct.img_ir_priv_hw** %8, align 8
  store %struct.img_ir_filter* %9, %struct.img_ir_filter** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.img_ir_priv*, %struct.img_ir_priv** %7, align 8
  %18 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 128
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %6, align 8
  %25 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %6, align 8
  %28 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %26, i64 %29)
  %31 = load %struct.img_ir_priv*, %struct.img_ir_priv** %7, align 8
  %32 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %6, align 8
  %35 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  store %struct.img_ir_filter* null, %struct.img_ir_filter** %10, align 8
  br label %99

39:                                               ; preds = %3
  %40 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %8, align 8
  %41 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %8, align 8
  %46 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)*, i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)** %48, align 8
  %50 = icmp ne i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  br label %113

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %9, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %9, i32 0, i32 2
  store i32 -1, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %8, align 8
  %61 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)*, i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)** %63, align 8
  %65 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %6, align 8
  %66 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 %64(%struct.rc_scancode_filter* %65, %struct.img_ir_filter* %9, i64 %68)
  store i32 %69, i32* %11, align 4
  br label %82

70:                                               ; preds = %54
  %71 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %8, align 8
  %72 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)*, i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i64)** %74, align 8
  %76 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %6, align 8
  %77 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %78 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = shl i64 1, %79
  %81 = call i32 %75(%struct.rc_scancode_filter* %76, %struct.img_ir_filter* %9, i64 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %70, %59
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %113

86:                                               ; preds = %82
  %87 = load %struct.img_ir_priv*, %struct.img_ir_priv** %7, align 8
  %88 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 128
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %94 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %9, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %9, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %93, i64 %95, i64 %97)
  br label %99

99:                                               ; preds = %86, %38
  %100 = load i32, i32* %5, align 4
  switch i32 %100, label %109 [
    i32 129, label %101
    i32 128, label %105
  ]

101:                                              ; preds = %99
  %102 = load %struct.img_ir_priv*, %struct.img_ir_priv** %7, align 8
  %103 = load %struct.img_ir_filter*, %struct.img_ir_filter** %10, align 8
  %104 = call i32 @_img_ir_set_filter(%struct.img_ir_priv* %102, %struct.img_ir_filter* %103)
  br label %112

105:                                              ; preds = %99
  %106 = load %struct.img_ir_priv*, %struct.img_ir_priv** %7, align 8
  %107 = load %struct.img_ir_filter*, %struct.img_ir_filter** %10, align 8
  %108 = call i32 @_img_ir_set_wake_filter(%struct.img_ir_priv* %106, %struct.img_ir_filter* %107)
  br label %112

109:                                              ; preds = %99
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %109, %105, %101
  br label %113

113:                                              ; preds = %112, %85, %51
  %114 = load %struct.img_ir_priv*, %struct.img_ir_priv** %7, align 8
  %115 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock_irq(i32* %115)
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @_img_ir_set_filter(%struct.img_ir_priv*, %struct.img_ir_filter*) #1

declare dso_local i32 @_img_ir_set_wake_filter(%struct.img_ir_priv*, %struct.img_ir_filter*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
