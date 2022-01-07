; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ddb = type { %struct.TYPE_3__*, %struct.ddb_link* }
%struct.TYPE_3__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }
%struct.ddb_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"no sensor\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"read_error\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ddb*, align 8
  %9 = alloca %struct.ddb_link*, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.ddb* @dev_get_drvdata(%struct.device* %14)
  store %struct.ddb* %15, %struct.ddb** %8, align 8
  %16 = load %struct.ddb*, %struct.ddb** %8, align 8
  %17 = getelementptr inbounds %struct.ddb, %struct.ddb* %16, i32 0, i32 1
  %18 = load %struct.ddb_link*, %struct.ddb_link** %17, align 8
  %19 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %18, i64 0
  store %struct.ddb_link* %19, %struct.ddb_link** %9, align 8
  %20 = load %struct.ddb_link*, %struct.ddb_link** %9, align 8
  %21 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %89

29:                                               ; preds = %3
  %30 = load %struct.ddb*, %struct.ddb** %8, align 8
  %31 = getelementptr inbounds %struct.ddb, %struct.ddb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.ddb_link*, %struct.ddb_link** %9, align 8
  %34 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.i2c_adapter* %39, %struct.i2c_adapter** %10, align 8
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %42 = call i64 @i2c_read_regs(%struct.i2c_adapter* %40, i32 72, i32 0, i32* %41, i32 2)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %4, align 4
  br label %89

47:                                               ; preds = %29
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 3
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 5
  %54 = or i32 %50, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 125
  store i32 %56, i32* %11, align 4
  %57 = load %struct.ddb_link*, %struct.ddb_link** %9, align 8
  %58 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %85

63:                                               ; preds = %47
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %66 = call i64 @i2c_read_regs(%struct.i2c_adapter* %64, i32 73, i32 0, i32* %65, i32 2)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  br label %89

71:                                               ; preds = %63
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 3
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 5
  %78 = or i32 %74, %77
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %79, 125
  store i32 %80, i32* %12, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %47
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %71, %68, %44, %26
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.ddb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @i2c_read_regs(%struct.i2c_adapter*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
