; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_register_encoders.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_register_encoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.hva_dev = type { i64, %struct.TYPE_3__** }
%struct.device = type { i32 }

@hva_encoders = common dso_local global %struct.TYPE_3__** null, align 8
@HVA_MAX_ENCODERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"%s failed to register %s encoder (%d maximum reached)\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s %s encoder registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hva_dev*)* @register_encoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_encoders(%struct.hva_dev* %0) #0 {
  %2 = alloca %struct.hva_dev*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.hva_dev* %0, %struct.hva_dev** %2, align 8
  %5 = load %struct.hva_dev*, %struct.hva_dev** %2, align 8
  %6 = call %struct.device* @hva_to_dev(%struct.hva_dev* %5)
  store %struct.device* %6, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hva_encoders, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__** %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %7
  %13 = load %struct.hva_dev*, %struct.hva_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HVA_MAX_ENCODERS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* @HVA_PREFIX, align 4
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hva_encoders, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @HVA_MAX_ENCODERS, align 8
  %29 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %27, i64 %28)
  br label %57

30:                                               ; preds = %12
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hva_encoders, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.hva_dev*, %struct.hva_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %37, align 8
  %39 = load %struct.hva_dev*, %struct.hva_dev** %2, align 8
  %40 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %41
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %43, align 8
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load i32, i32* @HVA_PREFIX, align 4
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hva_encoders, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_info(%struct.device* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %7

57:                                               ; preds = %18, %7
  ret void
}

declare dso_local %struct.device* @hva_to_dev(%struct.hva_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__**) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
