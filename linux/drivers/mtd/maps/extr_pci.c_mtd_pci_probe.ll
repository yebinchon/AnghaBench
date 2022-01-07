; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pci.c_mtd_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.mtd_pci_info = type { i32 (%struct.pci_dev*, %struct.map_pci_info*)*, i32, i32, i32 (%struct.pci_dev*, %struct.map_pci_info.0*)* }
%struct.map_pci_info = type opaque
%struct.map_pci_info.0 = type opaque
%struct.map_pci_info.1 = type { i32 (%struct.pci_dev*, %struct.map_pci_info.1*)*, %struct.TYPE_3__, i32, %struct.pci_dev* }
%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"pci mtd\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtd_pci_map = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mtd_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.mtd_pci_info*, align 8
  %7 = alloca %struct.map_pci_info.1*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mtd_pci_info*
  store %struct.mtd_pci_info* %13, %struct.mtd_pci_info** %6, align 8
  store %struct.map_pci_info.1* null, %struct.map_pci_info.1** %7, align 8
  store %struct.mtd_info* null, %struct.mtd_info** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pci_enable_device(%struct.pci_dev* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_request_regions(%struct.pci_dev* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %102

25:                                               ; preds = %19
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.map_pci_info.1* @kmalloc(i32 24, i32 %26)
  store %struct.map_pci_info.1* %27, %struct.map_pci_info.1** %7, align 8
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %31 = icmp ne %struct.map_pci_info.1* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %87

33:                                               ; preds = %25
  %34 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %35 = getelementptr inbounds %struct.map_pci_info.1, %struct.map_pci_info.1* %34, i32 0, i32 1
  %36 = bitcast %struct.TYPE_3__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 4 bitcast (%struct.TYPE_3__* @mtd_pci_map to i8*), i64 4, i1 false)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_name(%struct.pci_dev* %37)
  %39 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %40 = getelementptr inbounds %struct.map_pci_info.1, %struct.map_pci_info.1* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %44 = getelementptr inbounds %struct.map_pci_info.1, %struct.map_pci_info.1* %43, i32 0, i32 3
  store %struct.pci_dev* %42, %struct.pci_dev** %44, align 8
  %45 = load %struct.mtd_pci_info*, %struct.mtd_pci_info** %6, align 8
  %46 = getelementptr inbounds %struct.mtd_pci_info, %struct.mtd_pci_info* %45, i32 0, i32 3
  %47 = load i32 (%struct.pci_dev*, %struct.map_pci_info.0*)*, i32 (%struct.pci_dev*, %struct.map_pci_info.0*)** %46, align 8
  %48 = bitcast i32 (%struct.pci_dev*, %struct.map_pci_info.0*)* %47 to i32 (%struct.pci_dev*, %struct.map_pci_info.1*)*
  %49 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %50 = getelementptr inbounds %struct.map_pci_info.1, %struct.map_pci_info.1* %49, i32 0, i32 0
  store i32 (%struct.pci_dev*, %struct.map_pci_info.1*)* %48, i32 (%struct.pci_dev*, %struct.map_pci_info.1*)** %50, align 8
  %51 = load %struct.mtd_pci_info*, %struct.mtd_pci_info** %6, align 8
  %52 = getelementptr inbounds %struct.mtd_pci_info, %struct.mtd_pci_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %55 = getelementptr inbounds %struct.map_pci_info.1, %struct.map_pci_info.1* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mtd_pci_info*, %struct.mtd_pci_info** %6, align 8
  %57 = getelementptr inbounds %struct.mtd_pci_info, %struct.mtd_pci_info* %56, i32 0, i32 0
  %58 = load i32 (%struct.pci_dev*, %struct.map_pci_info*)*, i32 (%struct.pci_dev*, %struct.map_pci_info*)** %57, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %61 = bitcast %struct.map_pci_info.1* %60 to %struct.map_pci_info*
  %62 = call i32 %58(%struct.pci_dev* %59, %struct.map_pci_info* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %33
  br label %87

66:                                               ; preds = %33
  %67 = load %struct.mtd_pci_info*, %struct.mtd_pci_info** %6, align 8
  %68 = getelementptr inbounds %struct.mtd_pci_info, %struct.mtd_pci_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %71 = getelementptr inbounds %struct.map_pci_info.1, %struct.map_pci_info.1* %70, i32 0, i32 1
  %72 = call %struct.mtd_info* @do_map_probe(i32 %69, %struct.TYPE_3__* %71)
  store %struct.mtd_info* %72, %struct.mtd_info** %8, align 8
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  %75 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %76 = icmp ne %struct.mtd_info* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %87

78:                                               ; preds = %66
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %83 = call i32 @mtd_device_register(%struct.mtd_info* %82, i32* null, i32 0)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %86 = call i32 @pci_set_drvdata(%struct.pci_dev* %84, %struct.mtd_info* %85)
  store i32 0, i32* %3, align 4
  br label %104

87:                                               ; preds = %77, %65, %32
  %88 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %89 = icmp ne %struct.map_pci_info.1* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %92 = getelementptr inbounds %struct.map_pci_info.1, %struct.map_pci_info.1* %91, i32 0, i32 0
  %93 = load i32 (%struct.pci_dev*, %struct.map_pci_info.1*)*, i32 (%struct.pci_dev*, %struct.map_pci_info.1*)** %92, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %96 = call i32 %93(%struct.pci_dev* %94, %struct.map_pci_info.1* %95)
  %97 = load %struct.map_pci_info.1*, %struct.map_pci_info.1** %7, align 8
  %98 = call i32 @kfree(%struct.map_pci_info.1* %97)
  br label %99

99:                                               ; preds = %90, %87
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i32 @pci_release_regions(%struct.pci_dev* %100)
  br label %102

102:                                              ; preds = %99, %24, %18
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %78
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local %struct.map_pci_info.1* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.mtd_info* @do_map_probe(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mtd_info*) #1

declare dso_local i32 @kfree(%struct.map_pci_info.1*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
