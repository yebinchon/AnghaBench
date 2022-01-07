; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dm355evm_msp.c_add_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dm355evm_msp.c_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.i2c_client = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"can't add platform_data\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"can't add irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to add device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.i2c_client*, i8*, i8*, i32, i32, i32)* @add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @add_child(%struct.i2c_client* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.platform_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.resource, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call %struct.platform_device* @platform_device_alloc(i8* %17, i32 -1)
  store %struct.platform_device* %18, %struct.platform_device** %14, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %20 = icmp ne %struct.platform_device* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.device* @ERR_PTR(i32 %23)
  store %struct.device* %24, %struct.device** %7, align 8
  br label %84

25:                                               ; preds = %6
  %26 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @device_init_wakeup(%struct.device* %27, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  %38 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @platform_device_add_data(%struct.platform_device* %38, i8* %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %75

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1
  %56 = load i32, i32* @IORESOURCE_IRQ, align 4
  store i32 %56, i32* %55, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %58 = call i32 @platform_device_add_resources(%struct.platform_device* %57, %struct.resource* %16, i32 1)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %75

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %49
  %67 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %68 = call i32 @platform_device_add(%struct.platform_device* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %75

72:                                               ; preds = %66
  %73 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  store %struct.device* %74, %struct.device** %7, align 8
  br label %84

75:                                               ; preds = %71, %61, %44
  %76 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %77 = call i32 @platform_device_put(%struct.platform_device* %76)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* %15, align 4
  %83 = call %struct.device* @ERR_PTR(i32 %82)
  store %struct.device* %83, %struct.device** %7, align 8
  br label %84

84:                                               ; preds = %75, %72, %21
  %85 = load %struct.device*, %struct.device** %7, align 8
  ret %struct.device* %85
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
