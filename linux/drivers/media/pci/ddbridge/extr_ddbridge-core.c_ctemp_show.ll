; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ctemp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ctemp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ddb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"no sensor\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ctemp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctemp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ddb*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ddb* @dev_get_drvdata(%struct.device* %13)
  store %struct.ddb* %14, %struct.ddb** %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 48
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ddb*, %struct.ddb** %8, align 8
  %23 = getelementptr inbounds %struct.ddb, %struct.ddb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.i2c_adapter* %28, %struct.i2c_adapter** %9, align 8
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %30 = icmp ne %struct.i2c_adapter* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

32:                                               ; preds = %3
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %35 = call i64 @i2c_read_regs(%struct.i2c_adapter* %33, i32 73, i32 0, i32* %34, i32 2)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %40 = call i64 @i2c_read_regs(%struct.i2c_adapter* %38, i32 77, i32 0, i32* %39, i32 2)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %32
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 1000
  store i32 %49, i32* %10, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %42, %31
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ddb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @i2c_read_regs(%struct.i2c_adapter*, i32, i32, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
