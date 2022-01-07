; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_ioctl_connect_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_ioctl_connect_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mei_cl* }
%struct.mei_cl = type { i64, %struct.mei_device* }
%struct.mei_device = type { i64, i32, i32, i32, i64 }
%struct.mei_connect_client_data = type { %struct.mei_client, i32 }
%struct.mei_client = type { i32, i32 }
%struct.mei_me_client = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@MEI_DEV_ENABLED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@MEI_FILE_INITIALIZING = common dso_local global i64 0, align 8
@MEI_FILE_DISCONNECTED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot connect to FW Client UUID = %pUl\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Connection forbidden to FW Client UUID = %pUl\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Connect to FW Client ID = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"FW Client - Protocol Version = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"FW Client - Max Msg Len = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Can connect?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.mei_connect_client_data*)* @mei_ioctl_connect_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_ioctl_connect_client(%struct.file* %0, %struct.mei_connect_client_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.mei_connect_client_data*, align 8
  %6 = alloca %struct.mei_device*, align 8
  %7 = alloca %struct.mei_client*, align 8
  %8 = alloca %struct.mei_me_client*, align 8
  %9 = alloca %struct.mei_cl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.mei_connect_client_data* %1, %struct.mei_connect_client_data** %5, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.mei_cl*, %struct.mei_cl** %13, align 8
  store %struct.mei_cl* %14, %struct.mei_cl** %9, align 8
  %15 = load %struct.mei_cl*, %struct.mei_cl** %9, align 8
  %16 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %15, i32 0, i32 1
  %17 = load %struct.mei_device*, %struct.mei_device** %16, align 8
  store %struct.mei_device* %17, %struct.mei_device** %6, align 8
  %18 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %19 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MEI_DEV_ENABLED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %146

26:                                               ; preds = %2
  %27 = load %struct.mei_cl*, %struct.mei_cl** %9, align 8
  %28 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MEI_FILE_INITIALIZING, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.mei_cl*, %struct.mei_cl** %9, align 8
  %34 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MEI_FILE_DISCONNECTED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %146

41:                                               ; preds = %32, %26
  %42 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %43 = load %struct.mei_connect_client_data*, %struct.mei_connect_client_data** %5, align 8
  %44 = getelementptr inbounds %struct.mei_connect_client_data, %struct.mei_connect_client_data* %43, i32 0, i32 1
  %45 = call %struct.mei_me_client* @mei_me_cl_by_uuid(%struct.mei_device* %42, i32* %44)
  store %struct.mei_me_client* %45, %struct.mei_me_client** %8, align 8
  %46 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %47 = icmp ne %struct.mei_me_client* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mei_connect_client_data*, %struct.mei_connect_client_data** %5, align 8
  %53 = getelementptr inbounds %struct.mei_connect_client_data, %struct.mei_connect_client_data* %52, i32 0, i32 1
  %54 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %53)
  %55 = load i32, i32* @ENOTTY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %142

57:                                               ; preds = %41
  %58 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %59 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %57
  %64 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %65 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %70 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  br label %82

75:                                               ; preds = %63
  %76 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %77 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %75, %68
  %83 = phi i32 [ %74, %68 ], [ %81, %75 ]
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %88 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mei_connect_client_data*, %struct.mei_connect_client_data** %5, align 8
  %91 = getelementptr inbounds %struct.mei_connect_client_data, %struct.mei_connect_client_data* %90, i32 0, i32 1
  %92 = call i32 (i32, i8*, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32* %91)
  %93 = load i32, i32* @ENOTTY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %142

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %57
  %97 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %98 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %101 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %105 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %108 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %113 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %116 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load %struct.mei_connect_client_data*, %struct.mei_connect_client_data** %5, align 8
  %121 = getelementptr inbounds %struct.mei_connect_client_data, %struct.mei_connect_client_data* %120, i32 0, i32 0
  store %struct.mei_client* %121, %struct.mei_client** %7, align 8
  %122 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %123 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mei_client*, %struct.mei_client** %7, align 8
  %127 = getelementptr inbounds %struct.mei_client, %struct.mei_client* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %129 = getelementptr inbounds %struct.mei_me_client, %struct.mei_me_client* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mei_client*, %struct.mei_client** %7, align 8
  %133 = getelementptr inbounds %struct.mei_client, %struct.mei_client* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.mei_device*, %struct.mei_device** %6, align 8
  %135 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %138 = load %struct.mei_cl*, %struct.mei_cl** %9, align 8
  %139 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %140 = load %struct.file*, %struct.file** %4, align 8
  %141 = call i32 @mei_cl_connect(%struct.mei_cl* %138, %struct.mei_me_client* %139, %struct.file* %140)
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %96, %86, %48
  %143 = load %struct.mei_me_client*, %struct.mei_me_client** %8, align 8
  %144 = call i32 @mei_me_cl_put(%struct.mei_me_client* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %38, %23
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.mei_me_client* @mei_me_cl_by_uuid(%struct.mei_device*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mei_cl_connect(%struct.mei_cl*, %struct.mei_me_client*, %struct.file*) #1

declare dso_local i32 @mei_me_cl_put(%struct.mei_me_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
