; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_device_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i64, i32, i32 }

@ddb_num = common dso_local global i64 0, align 8
@DDB_MAX_ADAPTER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ddb_mutex = common dso_local global i32 0, align 4
@ddbs = common dso_local global %struct.ddb** null, align 8
@ddb_class = common dso_local global i32 0, align 4
@ddb_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ddbridge%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not create ddbridge%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_device_create(%struct.ddb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i32, align 4
  store %struct.ddb* %0, %struct.ddb** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* @ddb_num, align 8
  %6 = load i64, i64* @DDB_MAX_ADAPTER, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %85

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @ddb_mutex)
  %13 = load i64, i64* @ddb_num, align 8
  %14 = load %struct.ddb*, %struct.ddb** %3, align 8
  %15 = getelementptr inbounds %struct.ddb, %struct.ddb* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.ddb*, %struct.ddb** %3, align 8
  %17 = load %struct.ddb**, %struct.ddb*** @ddbs, align 8
  %18 = load %struct.ddb*, %struct.ddb** %3, align 8
  %19 = getelementptr inbounds %struct.ddb, %struct.ddb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ddb*, %struct.ddb** %17, i64 %20
  store %struct.ddb* %16, %struct.ddb** %21, align 8
  %22 = load %struct.ddb*, %struct.ddb** %3, align 8
  %23 = getelementptr inbounds %struct.ddb, %struct.ddb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ddb_major, align 4
  %26 = load %struct.ddb*, %struct.ddb** %3, align 8
  %27 = getelementptr inbounds %struct.ddb, %struct.ddb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @MKDEV(i32 %25, i64 %28)
  %30 = load %struct.ddb*, %struct.ddb** %3, align 8
  %31 = load %struct.ddb*, %struct.ddb** %3, align 8
  %32 = getelementptr inbounds %struct.ddb, %struct.ddb* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @device_create(i32* @ddb_class, i32 %24, i32 %29, %struct.ddb* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.ddb*, %struct.ddb** %3, align 8
  %36 = getelementptr inbounds %struct.ddb, %struct.ddb* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ddb*, %struct.ddb** %3, align 8
  %38 = getelementptr inbounds %struct.ddb, %struct.ddb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %11
  %43 = load %struct.ddb*, %struct.ddb** %3, align 8
  %44 = getelementptr inbounds %struct.ddb, %struct.ddb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.ddb*, %struct.ddb** %3, align 8
  %48 = getelementptr inbounds %struct.ddb, %struct.ddb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ddb*, %struct.ddb** %3, align 8
  %51 = getelementptr inbounds %struct.ddb, %struct.ddb* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_info(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %82

54:                                               ; preds = %11
  %55 = load %struct.ddb*, %struct.ddb** %3, align 8
  %56 = call i32 @ddb_device_attrs_add(%struct.ddb* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.ddb*, %struct.ddb** %3, align 8
  %61 = call i32 @ddb_device_attrs_del(%struct.ddb* %60)
  %62 = load i32, i32* @ddb_major, align 4
  %63 = load %struct.ddb*, %struct.ddb** %3, align 8
  %64 = getelementptr inbounds %struct.ddb, %struct.ddb* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @MKDEV(i32 %62, i64 %65)
  %67 = call i32 @device_destroy(i32* @ddb_class, i32 %66)
  %68 = load %struct.ddb**, %struct.ddb*** @ddbs, align 8
  %69 = load %struct.ddb*, %struct.ddb** %3, align 8
  %70 = getelementptr inbounds %struct.ddb, %struct.ddb* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.ddb*, %struct.ddb** %68, i64 %71
  store %struct.ddb* null, %struct.ddb** %72, align 8
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i32 @ERR_PTR(i32 %74)
  %76 = load %struct.ddb*, %struct.ddb** %3, align 8
  %77 = getelementptr inbounds %struct.ddb, %struct.ddb* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  br label %81

78:                                               ; preds = %54
  %79 = load i64, i64* @ddb_num, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* @ddb_num, align 8
  br label %81

81:                                               ; preds = %78, %59
  br label %82

82:                                               ; preds = %81, %42
  %83 = call i32 @mutex_unlock(i32* @ddb_mutex)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %8
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_create(i32*, i32, i32, %struct.ddb*, i8*, i64) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @ddb_device_attrs_add(%struct.ddb*) #1

declare dso_local i32 @ddb_device_attrs_del(%struct.ddb*) #1

declare dso_local i32 @device_destroy(i32*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
