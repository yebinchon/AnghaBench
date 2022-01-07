; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_i2c_hack_cx25840.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_i2c_hack_cx25840.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32** }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"***WARNING*** Detected a wedged cx25840 chip; the device will not work.\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"***WARNING*** Try power cycling the pvrusb2 device.\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"***WARNING*** Disabling further access to the device to prevent other foul-ups.\00", align 1
@PVR2_TRACE_CHIPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cx25840 appears to be OK.\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32*, i32, i32*, i32)* @i2c_hack_cx25840 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hack_cx25840(%struct.pvr2_hdw* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %19 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %122

27:                                               ; preds = %23, %6
  %28 = load i32, i32* %17, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @pvr2_i2c_basic_op(%struct.pvr2_hdw* %31, i32 %32, i32* %33, i32 %34, i32* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %122

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  switch i32 %42, label %45 [
    i32 1, label %43
    i32 2, label %44
  ]

43:                                               ; preds = %41
  store i32 256, i32* %15, align 4
  br label %46

44:                                               ; preds = %41
  store i32 257, i32* %15, align 4
  br label %46

45:                                               ; preds = %41
  br label %116

46:                                               ; preds = %44, %43
  br label %66

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %54, %57
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  switch i32 %59, label %62 [
    i32 256, label %60
    i32 257, label %61
  ]

60:                                               ; preds = %50
  store i32 1, i32* %17, align 4
  br label %63

61:                                               ; preds = %50
  store i32 2, i32* %17, align 4
  br label %63

62:                                               ; preds = %50
  br label %116

63:                                               ; preds = %61, %60
  br label %65

64:                                               ; preds = %47
  br label %116

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %112

70:                                               ; preds = %66
  store i32 0, i32* %17, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %116

74:                                               ; preds = %70
  %75 = load i32, i32* %15, align 4
  %76 = lshr i32 %75, 8
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @pvr2_i2c_basic_op(%struct.pvr2_hdw* %80, i32 %81, i32* %82, i32 2, i32* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %74
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %109

96:                                               ; preds = %92, %88, %74
  %97 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %98 = call i32 @pvr2_trace(i32 %97, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %100 = call i32 @pvr2_trace(i32 %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %102 = call i32 @pvr2_trace(i32 %101, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %104 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 68
  store i32* null, i32** %106, align 8
  %107 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %108 = call i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw* %107)
  br label %116

109:                                              ; preds = %92
  %110 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %111 = call i32 @pvr2_trace(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 3, i32* %17, align 4
  br label %112

112:                                              ; preds = %109, %69
  %113 = load i32, i32* %17, align 4
  %114 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %115 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %7, align 4
  br label %122

116:                                              ; preds = %96, %73, %64, %62, %45
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %119 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %116, %112, %30, %26
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @pvr2_i2c_basic_op(%struct.pvr2_hdw*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
