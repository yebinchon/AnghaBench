; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_sas_device_pg0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptsas.c_mptsas_sas_device_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.mptsas_devinfo = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MPI_SASDEVICE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_PAGETYPE_EXTENDED = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@SAS_CONFIG_PAGE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_IOCSTATUS_CONFIG_INVALID_PAGE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.mptsas_devinfo*, i64, i64)* @mptsas_sas_device_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_device_pg0(%struct.TYPE_15__* %0, %struct.mptsas_devinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.mptsas_devinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.mptsas_devinfo* %1, %struct.mptsas_devinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @MPI_SASDEVICE0_PAGEVERSION, align 4
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @MPI_CONFIG_PAGETYPE_EXTENDED, align 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE, align 4
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add nsw i64 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @SAS_CONFIG_PAGE_TIMEOUT, align 4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %38 = call i32 @memset(%struct.mptsas_devinfo* %37, i32 0, i32 72)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = call i32 @mpt_config(%struct.TYPE_15__* %39, %struct.TYPE_17__* %10)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %4
  br label %162

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %162

51:                                               ; preds = %44
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %56, 4
  %58 = call %struct.TYPE_14__* @pci_alloc_consistent(i32 %54, i32 %57, i32* %12)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %11, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = icmp ne %struct.TYPE_14__* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  br label %162

64:                                               ; preds = %51
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = call i32 @mpt_config(%struct.TYPE_15__* %69, %struct.TYPE_17__* %10)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @MPI_IOCSTATUS_CONFIG_INVALID_PAGE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %14, align 4
  br label %152

77:                                               ; preds = %64
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %152

81:                                               ; preds = %77
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %84 = call i32 @mptsas_print_device_pg0(%struct.TYPE_15__* %82, %struct.TYPE_14__* %83)
  %85 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %86 = call i32 @memset(%struct.mptsas_devinfo* %85, i32 0, i32 72)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le16_to_cpu(i32 %89)
  %91 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %92 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %91, i32 0, i32 11
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @le16_to_cpu(i32 %95)
  %97 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %98 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %97, i32 0, i32 10
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le16_to_cpu(i32 %101)
  %103 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %104 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %103, i32 0, i32 9
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le16_to_cpu(i32 %107)
  %109 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %110 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %115 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %120 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %125 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %127 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %126, i32 0, i32 4
  store i32 -1, i32* %127, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %132 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = call i32 @memcpy(i32* %13, i32* %134, i32 4)
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @le64_to_cpu(i32 %136)
  %138 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %139 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %145 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @le16_to_cpu(i32 %148)
  %150 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %151 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %81, %80, %74
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @pci_free_consistent(i32 %155, i32 %158, %struct.TYPE_14__* %159, i32 %160)
  br label %162

162:                                              ; preds = %152, %61, %48, %43
  %163 = load i32, i32* %14, align 4
  ret i32 %163
}

declare dso_local i32 @memset(%struct.mptsas_devinfo*, i32, i32) #1

declare dso_local i32 @mpt_config(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_14__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mptsas_print_device_pg0(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
