; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mtd.c_efx_mtd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mtd.c_efx_mtd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.efx_mtd_partition*)*, i32, i32 }
%struct.efx_mtd_partition = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.efx_nic*, i32 }

@MTD_NO_ERASE = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@efx_mtd_erase = common dso_local global i32 0, align 4
@efx_mtd_sync = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mtd_add(%struct.efx_nic* %0, %struct.efx_mtd_partition* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_mtd_partition*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.efx_mtd_partition*, align 8
  %11 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store %struct.efx_mtd_partition* %1, %struct.efx_mtd_partition** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %98, %4
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %101

16:                                               ; preds = %12
  %17 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %7, align 8
  %18 = bitcast %struct.efx_mtd_partition* %17 to i8*
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = mul i64 %19, %20
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = bitcast i8* %22 to %struct.efx_mtd_partition*
  store %struct.efx_mtd_partition* %23, %struct.efx_mtd_partition** %10, align 8
  %24 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %25 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %28 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MTD_NO_ERASE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* @MTD_WRITEABLE, align 4
  %36 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %37 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %16
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %44 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 8
  store i32 %42, i32* %45, align 8
  %46 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %47 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %48 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store %struct.efx_nic* %46, %struct.efx_nic** %49, align 8
  %50 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %51 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %54 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @efx_mtd_erase, align 4
  %57 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %58 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %66 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 8
  %68 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %74 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @efx_mtd_sync, align 4
  %77 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %78 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %81 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (%struct.efx_mtd_partition*)*, i32 (%struct.efx_mtd_partition*)** %83, align 8
  %85 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %86 = call i32 %84(%struct.efx_mtd_partition* %85)
  %87 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %88 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %87, i32 0, i32 1
  %89 = call i64 @mtd_device_register(%struct.TYPE_4__* %88, i32* null, i32 0)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %41
  br label %102

92:                                               ; preds = %41
  %93 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %94 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %93, i32 0, i32 0
  %95 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 0
  %97 = call i32 @list_add_tail(i32* %94, i32* %96)
  br label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %12

101:                                              ; preds = %12
  store i32 0, i32* %5, align 4
  br label %120

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %107, %102
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %11, align 8
  %106 = icmp ne i64 %104, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %7, align 8
  %109 = bitcast %struct.efx_mtd_partition* %108 to i8*
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %9, align 8
  %112 = mul i64 %110, %111
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = bitcast i8* %113 to %struct.efx_mtd_partition*
  store %struct.efx_mtd_partition* %114, %struct.efx_mtd_partition** %10, align 8
  %115 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %10, align 8
  %116 = call i32 @efx_mtd_remove_partition(%struct.efx_mtd_partition* %115)
  br label %103

117:                                              ; preds = %103
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %101
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i64 @mtd_device_register(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @efx_mtd_remove_partition(%struct.efx_mtd_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
