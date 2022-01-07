; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_add_numbered_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_add_numbered_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.twl_client*, %struct.TYPE_4__* }
%struct.twl_client = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32* }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: invalid module number %d\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@twl_priv = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't add platform_data\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"can't add irqs\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to add device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (i32, i8*, i32, i8*, i32, i32, i32, i32)* @add_numbered_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @add_numbered_child(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.platform_device*, align 8
  %19 = alloca %struct.twl_client*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x %struct.resource], align 16
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (...) @twl_get_last_module()
  %25 = icmp uge i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %8
  %30 = load i32, i32* @DRIVER_NAME, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.device* @ERR_PTR(i32 %34)
  store %struct.device* %35, %struct.device** %9, align 8
  br label %134

36:                                               ; preds = %8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twl_priv, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %21, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @twl_priv, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.twl_client*, %struct.twl_client** %46, align 8
  %48 = load i32, i32* %21, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %47, i64 %49
  store %struct.twl_client* %50, %struct.twl_client** %19, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.platform_device* @platform_device_alloc(i8* %51, i32 %52)
  store %struct.platform_device* %53, %struct.platform_device** %18, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %55 = icmp ne %struct.platform_device* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %36
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.device* @ERR_PTR(i32 %58)
  store %struct.device* %59, %struct.device** %9, align 8
  br label %134

60:                                               ; preds = %36
  %61 = load %struct.twl_client*, %struct.twl_client** %19, align 8
  %62 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  store i32* %64, i32** %67, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %60
  %71 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @platform_device_add_data(%struct.platform_device* %71, i8* %72, i32 %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %123

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %60
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %22, i64 0, i64 0
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %87, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 1
  %90 = load i32, i32* @IORESOURCE_IRQ, align 4
  store i32 %90, i32* %89, align 4
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %86, i64 1
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 1
  %95 = load i32, i32* @IORESOURCE_IRQ, align 4
  store i32 %95, i32* %94, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %97 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %22, i64 0, i64 0
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 2, i32 1
  %102 = call i32 @platform_device_add_resources(%struct.platform_device* %96, %struct.resource* %97, i32 %101)
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %85
  %106 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %123

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %82
  %111 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %112 = call i32 @platform_device_add(%struct.platform_device* %111)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %123

116:                                              ; preds = %110
  %117 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @device_init_wakeup(%struct.device* %118, i32 %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  store %struct.device* %122, %struct.device** %9, align 8
  br label %134

123:                                              ; preds = %115, %105, %77
  %124 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %125 = call i32 @platform_device_put(%struct.platform_device* %124)
  %126 = load %struct.twl_client*, %struct.twl_client** %19, align 8
  %127 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* %20, align 4
  %133 = call %struct.device* @ERR_PTR(i32 %132)
  store %struct.device* %133, %struct.device** %9, align 8
  br label %134

134:                                              ; preds = %123, %116, %56, %29
  %135 = load %struct.device*, %struct.device** %9, align 8
  ret %struct.device* %135
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @twl_get_last_module(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
