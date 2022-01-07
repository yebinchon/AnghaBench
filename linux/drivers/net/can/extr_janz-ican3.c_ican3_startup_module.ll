; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_startup_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_startup_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"unable to reset module\0A\00", align 1
@FIRMWARE_STAMP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"JANZ-ICAN3\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ICAN3 not detected (found %s)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"CAL/CANopen\00", align 1
@ICAN3_FWTYPE_CAL_CANOPEN = common dso_local global i32 0, align 4
@ICAN3_FWTYPE_ICANOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"unable to connect to module\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"unable to switch to new-style interface\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to enable termination\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to set bus-error\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"unable to switch to fast host interface\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"unable to set acceptance filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*)* @ican3_startup_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_startup_module(%struct.ican3_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ican3_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %3, align 8
  %5 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %6 = call i32 @ican3_reset_module(%struct.ican3_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %11 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @netdev_err(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %134

15:                                               ; preds = %1
  %16 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %17 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FIRMWARE_STAMP, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @memcpy_fromio(i32 %18, i64 %23, i32 3)
  %25 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %26 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @strncmp(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %15
  %31 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %32 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %35 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @netdev_err(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %134

40:                                               ; preds = %15
  %41 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %42 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strstr(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @ICAN3_FWTYPE_CAL_CANOPEN, align 4
  %48 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %49 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @ICAN3_FWTYPE_ICANOS, align 4
  %52 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %53 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %56 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 1, %57
  %59 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %60 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @iowrite8(i32 %58, i32* %62)
  %64 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %65 = call i32 @ican3_msg_connect(%struct.ican3_dev* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %70 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @netdev_err(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %134

74:                                               ; preds = %54
  %75 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %76 = call i32 @ican3_init_new_host_interface(%struct.ican3_dev* %75)
  %77 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %78 = call i32 @ican3_msg_newhostif(%struct.ican3_dev* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %83 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, ...) @netdev_err(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %134

87:                                               ; preds = %74
  %88 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %89 = call i32 @ican3_set_termination(%struct.ican3_dev* %88, i32 1)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %94 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @netdev_err(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %134

98:                                               ; preds = %87
  %99 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %100 = call i32 @ican3_set_buserror(%struct.ican3_dev* %99, i32 1)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %105 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @netdev_err(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %134

109:                                              ; preds = %98
  %110 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %111 = call i32 @ican3_init_fast_host_interface(%struct.ican3_dev* %110)
  %112 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %113 = call i32 @ican3_msg_fasthostif(%struct.ican3_dev* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %118 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @netdev_err(i32 %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %134

122:                                              ; preds = %109
  %123 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %124 = call i32 @ican3_set_id_filter(%struct.ican3_dev* %123, i32 1)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %129 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @netdev_err(i32 %130, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %127, %116, %103, %92, %81, %68, %30, %9
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @ican3_reset_module(%struct.ican3_dev*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @ican3_msg_connect(%struct.ican3_dev*) #1

declare dso_local i32 @ican3_init_new_host_interface(%struct.ican3_dev*) #1

declare dso_local i32 @ican3_msg_newhostif(%struct.ican3_dev*) #1

declare dso_local i32 @ican3_set_termination(%struct.ican3_dev*, i32) #1

declare dso_local i32 @ican3_set_buserror(%struct.ican3_dev*, i32) #1

declare dso_local i32 @ican3_init_fast_host_interface(%struct.ican3_dev*) #1

declare dso_local i32 @ican3_msg_fasthostif(%struct.ican3_dev*) #1

declare dso_local i32 @ican3_set_id_filter(%struct.ican3_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
