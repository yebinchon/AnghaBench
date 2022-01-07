; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_comp_threshold_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65911-comparator.c_comp_threshold_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.tps65910 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"comp1_threshold\00", align 1
@COMP1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"comp2_threshold\00", align 1
@COMP2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @comp_threshold_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_threshold_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tps65910*, align 8
  %9 = alloca %struct.attribute, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tps65910* @dev_get_drvdata(i32 %14)
  store %struct.tps65910* %15, %struct.tps65910** %8, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %16, i32 0, i32 0
  %18 = bitcast %struct.attribute* %9 to i8*
  %19 = bitcast %struct.attribute* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @COMP1, align 4
  store i32 %25, i32* %10, align 4
  br label %37

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @COMP2, align 4
  store i32 %32, i32* %10, align 4
  br label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @comp_threshold_get(%struct.tps65910* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @comp_threshold_get(%struct.tps65910*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
