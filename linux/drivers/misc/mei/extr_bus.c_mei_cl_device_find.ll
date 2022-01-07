; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_device_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_device_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_device_id = type { i64, i32, i32 }
%struct.mei_cl_device = type { i64*, i32 }
%struct.mei_cl_driver = type { %struct.mei_cl_device_id* }

@NULL_UUID_LE = common dso_local global i32 0, align 4
@MEI_CL_VERSION_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mei_cl_device_id* (%struct.mei_cl_device*, %struct.mei_cl_driver*)* @mei_cl_device_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mei_cl_device_id* @mei_cl_device_find(%struct.mei_cl_device* %0, %struct.mei_cl_driver* %1) #0 {
  %3 = alloca %struct.mei_cl_device_id*, align 8
  %4 = alloca %struct.mei_cl_device*, align 8
  %5 = alloca %struct.mei_cl_driver*, align 8
  %6 = alloca %struct.mei_cl_device_id*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %4, align 8
  store %struct.mei_cl_driver* %1, %struct.mei_cl_driver** %5, align 8
  %10 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %11 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32* @mei_me_cl_uuid(i32 %12)
  store i32* %13, i32** %7, align 8
  %14 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %15 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @mei_me_cl_ver(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %5, align 8
  %19 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %18, i32 0, i32 0
  %20 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %19, align 8
  store %struct.mei_cl_device_id* %20, %struct.mei_cl_device_id** %6, align 8
  br label %21

21:                                               ; preds = %74, %2
  %22 = load i32, i32* @NULL_UUID_LE, align 4
  %23 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %6, align 8
  %24 = getelementptr inbounds %struct.mei_cl_device_id, %struct.mei_cl_device_id* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @uuid_le_cmp(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %6, align 8
  %32 = getelementptr inbounds %struct.mei_cl_device_id, %struct.mei_cl_device_id* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @uuid_le_cmp(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  %37 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %38 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %45 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %6, align 8
  %48 = getelementptr inbounds %struct.mei_cl_device_id, %struct.mei_cl_device_id* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @strncmp(i64* %46, i32 %49, i32 4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %6, align 8
  %56 = getelementptr inbounds %struct.mei_cl_device_id, %struct.mei_cl_device_id* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MEI_CL_VERSION_ANY, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %6, align 8
  %62 = getelementptr inbounds %struct.mei_cl_device_id, %struct.mei_cl_device_id* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %60
  br label %68

68:                                               ; preds = %67, %54
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %6, align 8
  store %struct.mei_cl_device_id* %72, %struct.mei_cl_device_id** %3, align 8
  br label %78

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %28
  %75 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %6, align 8
  %76 = getelementptr inbounds %struct.mei_cl_device_id, %struct.mei_cl_device_id* %75, i32 1
  store %struct.mei_cl_device_id* %76, %struct.mei_cl_device_id** %6, align 8
  br label %21

77:                                               ; preds = %21
  store %struct.mei_cl_device_id* null, %struct.mei_cl_device_id** %3, align 8
  br label %78

78:                                               ; preds = %77, %71
  %79 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %3, align 8
  ret %struct.mei_cl_device_id* %79
}

declare dso_local i32* @mei_me_cl_uuid(i32) #1

declare dso_local i64 @mei_me_cl_ver(i32) #1

declare dso_local i64 @uuid_le_cmp(i32, i32) #1

declare dso_local i64 @strncmp(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
