; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iguanair = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@DIR_OUT = common dso_local global i32 0, align 4
@CMD_NOP = common dso_local global i32 0, align 4
@CMD_GET_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get version\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"firmware 0x%04x is too old\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CMD_GET_BUFSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get buffer size\0A\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"buffer size %u larger than expected\0A\00", align 1
@CMD_GET_FEATURES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to get features\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iguanair*)* @iguanair_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iguanair_get_features(%struct.iguanair* %0) #0 {
  %2 = alloca %struct.iguanair*, align 8
  %3 = alloca i32, align 4
  store %struct.iguanair* %0, %struct.iguanair** %2, align 8
  %4 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %5 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %4, i32 0, i32 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @DIR_OUT, align 4
  %10 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %11 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @CMD_NOP, align 4
  %16 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %17 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 8
  %21 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %22 = call i32 @iguanair_send(%struct.iguanair* %21, i32 16)
  %23 = load i32, i32* @CMD_GET_VERSION, align 4
  %24 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %25 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 8
  %29 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %30 = call i32 @iguanair_send(%struct.iguanair* %29, i32 16)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %35 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_info(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %107

38:                                               ; preds = %1
  %39 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %40 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 517
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %45 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %48 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %107

53:                                               ; preds = %38
  %54 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %55 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %54, i32 0, i32 1
  store i32 150, i32* %55, align 4
  %56 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %57 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %56, i32 0, i32 2
  store i32 65, i32* %57, align 8
  %58 = load i32, i32* @CMD_GET_BUFSIZE, align 4
  %59 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %60 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 8
  %64 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %65 = call i32 @iguanair_send(%struct.iguanair* %64, i32 16)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %70 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_info(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %107

73:                                               ; preds = %53
  %74 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %75 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @BUF_SIZE, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %81 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %84 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @dev_info(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @BUF_SIZE, align 4
  %88 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %89 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %73
  %91 = load i32, i32* @CMD_GET_FEATURES, align 4
  %92 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %93 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %92, i32 0, i32 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 8
  %97 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %98 = call i32 @iguanair_send(%struct.iguanair* %97, i32 16)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load %struct.iguanair*, %struct.iguanair** %2, align 8
  %103 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @dev_info(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %101, %90
  br label %107

107:                                              ; preds = %106, %68, %43, %33
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @iguanair_send(%struct.iguanair*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
