; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pismo_data = type { %struct.platform_device**, %struct.TYPE_4__* }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.pismo_mem = type { i64, i32 }
%struct.resource = type { i32, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pismo_data*, i32, %struct.pismo_mem*, i8*, i8*, i64)* @pismo_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pismo_add_device(%struct.pismo_data* %0, i32 %1, %struct.pismo_mem* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pismo_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pismo_mem*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.platform_device*, align 8
  %15 = alloca %struct.resource, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pismo_data* %0, %struct.pismo_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.pismo_mem* %2, %struct.pismo_mem** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = bitcast %struct.resource* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.pismo_mem*, %struct.pismo_mem** %10, align 8
  %20 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %88

27:                                               ; preds = %6
  %28 = load i32, i32* %16, align 4
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.pismo_mem*, %struct.pismo_mem** %10, align 8
  %33 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.platform_device* @platform_device_alloc(i8* %40, i32 %41)
  store %struct.platform_device* %42, %struct.platform_device** %14, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %44 = icmp ne %struct.platform_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %88

48:                                               ; preds = %27
  %49 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %50 = getelementptr inbounds %struct.pismo_data, %struct.pismo_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %58 = call i32 @platform_device_add_resources(%struct.platform_device* %57, %struct.resource* %15, i32 1)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %84

62:                                               ; preds = %56
  %63 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @platform_device_add_data(%struct.platform_device* %63, i8* %64, i64 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %84

70:                                               ; preds = %62
  %71 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %72 = call i32 @platform_device_add(%struct.platform_device* %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %84

76:                                               ; preds = %70
  %77 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %78 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %79 = getelementptr inbounds %struct.pismo_data, %struct.pismo_data* %78, i32 0, i32 0
  %80 = load %struct.platform_device**, %struct.platform_device*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %80, i64 %82
  store %struct.platform_device* %77, %struct.platform_device** %83, align 8
  store i32 0, i32* %7, align 4
  br label %88

84:                                               ; preds = %75, %69, %61
  %85 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %86 = call i32 @platform_device_put(%struct.platform_device* %85)
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %76, %45, %24
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #2

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #2

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i64) #2

declare dso_local i32 @platform_device_add(%struct.platform_device*) #2

declare dso_local i32 @platform_device_put(%struct.platform_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
