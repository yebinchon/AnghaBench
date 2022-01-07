; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_snr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_snr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ddb = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@DDB_TUNER_XO2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"NO SNR\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @snr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ddb*, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ddb* @dev_get_drvdata(%struct.device* %11)
  store %struct.ddb* %12, %struct.ddb** %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 48
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ddb*, %struct.ddb** %8, align 8
  %21 = getelementptr inbounds %struct.ddb, %struct.ddb* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DDB_TUNER_XO2, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %3
  %31 = load %struct.ddb*, %struct.ddb** %8, align 8
  %32 = getelementptr inbounds %struct.ddb, %struct.ddb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %39 = call i64 @i2c_read_regs(i32* %37, i32 16, i32 16, i8* %38, i32 16)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %30
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 16
  store i8 0, i8* %45, align 16
  br label %74

46:                                               ; preds = %3
  %47 = load %struct.ddb*, %struct.ddb** %8, align 8
  %48 = getelementptr inbounds %struct.ddb, %struct.ddb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %55 = call i64 @i2c_read_regs16(i32* %53, i32 87, i32 256, i8* %54, i32 32)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %46
  %58 = load %struct.ddb*, %struct.ddb** %8, align 8
  %59 = getelementptr inbounds %struct.ddb, %struct.ddb* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %66 = call i64 @i2c_read_regs16(i32* %64, i32 80, i32 256, i8* %65, i32 32)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %46
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 31
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %72, %44
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %68, %41
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.ddb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @i2c_read_regs(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @i2c_read_regs16(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
