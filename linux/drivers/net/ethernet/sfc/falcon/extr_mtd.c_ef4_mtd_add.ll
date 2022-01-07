; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mtd.c_ef4_mtd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mtd.c_ef4_mtd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ef4_mtd_partition*)*, i32, i32 }
%struct.ef4_mtd_partition = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.ef4_nic*, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@ef4_mtd_erase = common dso_local global i32 0, align 4
@ef4_mtd_sync = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_mtd_add(%struct.ef4_nic* %0, %struct.ef4_mtd_partition* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ef4_nic*, align 8
  %7 = alloca %struct.ef4_mtd_partition*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ef4_mtd_partition*, align 8
  %11 = alloca i64, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %6, align 8
  store %struct.ef4_mtd_partition* %1, %struct.ef4_mtd_partition** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %83, %4
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %12
  %17 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %7, align 8
  %18 = bitcast %struct.ef4_mtd_partition* %17 to i8*
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = mul i64 %19, %20
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = bitcast i8* %22 to %struct.ef4_mtd_partition*
  store %struct.ef4_mtd_partition* %23, %struct.ef4_mtd_partition** %10, align 8
  %24 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %25 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %29 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 7
  store i32 %27, i32* %30, align 8
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %32 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %33 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  store %struct.ef4_nic* %31, %struct.ef4_nic** %34, align 8
  %35 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %36 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %39 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ef4_mtd_erase, align 4
  %42 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %43 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %46 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %51 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %54 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %59 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @ef4_mtd_sync, align 4
  %62 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %63 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %66 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (%struct.ef4_mtd_partition*)*, i32 (%struct.ef4_mtd_partition*)** %68, align 8
  %70 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %71 = call i32 %69(%struct.ef4_mtd_partition* %70)
  %72 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %73 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %72, i32 0, i32 1
  %74 = call i64 @mtd_device_register(%struct.TYPE_4__* %73, i32* null, i32 0)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %16
  br label %87

77:                                               ; preds = %16
  %78 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %79 = getelementptr inbounds %struct.ef4_mtd_partition, %struct.ef4_mtd_partition* %78, i32 0, i32 0
  %80 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %81 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %80, i32 0, i32 0
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %77
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %12

86:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %105

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %92, %87
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %11, align 8
  %91 = icmp ne i64 %89, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %7, align 8
  %94 = bitcast %struct.ef4_mtd_partition* %93 to i8*
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = mul i64 %95, %96
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = bitcast i8* %98 to %struct.ef4_mtd_partition*
  store %struct.ef4_mtd_partition* %99, %struct.ef4_mtd_partition** %10, align 8
  %100 = load %struct.ef4_mtd_partition*, %struct.ef4_mtd_partition** %10, align 8
  %101 = call i32 @ef4_mtd_remove_partition(%struct.ef4_mtd_partition* %100)
  br label %88

102:                                              ; preds = %88
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %86
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @mtd_device_register(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ef4_mtd_remove_partition(%struct.ef4_mtd_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
