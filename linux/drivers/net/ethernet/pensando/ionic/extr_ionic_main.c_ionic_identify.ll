; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic = type { i32, %struct.ionic_dev, %struct.ionic_identity }
%struct.ionic_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ionic_identity = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IONIC_OS_TYPE_LINUX = common dso_local global i32 0, align 4
@IONIC_DRV_VERSION = common dso_local global i32 0, align 4
@IONIC_IDENTITY_VERSION_1 = common dso_local global i32 0, align 4
@DEVCMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_identify(%struct.ionic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic*, align 8
  %4 = alloca %struct.ionic_identity*, align 8
  %5 = alloca %struct.ionic_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ionic* %0, %struct.ionic** %3, align 8
  %8 = load %struct.ionic*, %struct.ionic** %3, align 8
  %9 = getelementptr inbounds %struct.ionic, %struct.ionic* %8, i32 0, i32 2
  store %struct.ionic_identity* %9, %struct.ionic_identity** %4, align 8
  %10 = load %struct.ionic*, %struct.ionic** %3, align 8
  %11 = getelementptr inbounds %struct.ionic, %struct.ionic* %10, i32 0, i32 1
  store %struct.ionic_dev* %11, %struct.ionic_dev** %5, align 8
  %12 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %13 = call i32 @memset(%struct.ionic_identity* %12, i32 0, i32 12)
  %14 = load i32, i32* @IONIC_OS_TYPE_LINUX, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %17 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %20 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IONIC_DRV_VERSION, align 4
  %24 = call i32 @strncpy(i32 %22, i32 %23, i32 3)
  %25 = load %struct.ionic*, %struct.ionic** %3, align 8
  %26 = getelementptr inbounds %struct.ionic, %struct.ionic* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = call i64 @min(i32 8, i32 4)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %30 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %34 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %33, i32 0, i32 1
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @memcpy_toio(i32* %32, %struct.TYPE_4__* %34, i64 %35)
  %37 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %38 = load i32, i32* @IONIC_IDENTITY_VERSION_1, align 4
  %39 = call i32 @ionic_dev_cmd_identify(%struct.ionic_dev* %37, i32 %38)
  %40 = load %struct.ionic*, %struct.ionic** %3, align 8
  %41 = load i32, i32* @DEVCMD_TIMEOUT, align 4
  %42 = call i32 @ionic_dev_cmd_wait(%struct.ionic* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %1
  %46 = call i64 @min(i32 4, i32 4)
  store i64 %46, i64* %6, align 8
  %47 = load %struct.ionic_identity*, %struct.ionic_identity** %4, align 8
  %48 = getelementptr inbounds %struct.ionic_identity, %struct.ionic_identity* %47, i32 0, i32 0
  %49 = load %struct.ionic_dev*, %struct.ionic_dev** %5, align 8
  %50 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @memcpy_fromio(i32* %48, i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %45, %1
  %56 = load %struct.ionic*, %struct.ionic** %3, align 8
  %57 = getelementptr inbounds %struct.ionic, %struct.ionic* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %65

62:                                               ; preds = %55
  %63 = load %struct.ionic*, %struct.ionic** %3, align 8
  %64 = call i32 @ionic_debugfs_add_ident(%struct.ionic* %63)
  store i32 0, i32* %2, align 4
  br label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.ionic_identity*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @memcpy_toio(i32*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @ionic_dev_cmd_identify(%struct.ionic_dev*, i32) #1

declare dso_local i32 @ionic_dev_cmd_wait(%struct.ionic*, i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ionic_debugfs_add_ident(%struct.ionic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
