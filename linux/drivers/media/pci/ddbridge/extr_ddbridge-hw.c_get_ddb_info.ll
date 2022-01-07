; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-hw.c_get_ddb_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-hw.c_get_ddb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_device_id = type { i64, i64, i64, i64, %struct.ddb_info* }
%struct.ddb_info = type { i32 }

@ddb_device_ids = common dso_local global %struct.ddb_device_id* null, align 8
@ddb_none = common dso_local global %struct.ddb_info zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ddb_info* @get_ddb_info(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ddb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ddb_device_id*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %55, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.ddb_device_id*, %struct.ddb_device_id** @ddb_device_ids, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.ddb_device_id* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = load %struct.ddb_device_id*, %struct.ddb_device_id** @ddb_device_ids, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ddb_device_id, %struct.ddb_device_id* %18, i64 %20
  store %struct.ddb_device_id* %21, %struct.ddb_device_id** %11, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.ddb_device_id*, %struct.ddb_device_id** %11, align 8
  %24 = getelementptr inbounds %struct.ddb_device_id, %struct.ddb_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %17
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.ddb_device_id*, %struct.ddb_device_id** %11, align 8
  %30 = getelementptr inbounds %struct.ddb_device_id, %struct.ddb_device_id* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.ddb_device_id*, %struct.ddb_device_id** %11, align 8
  %36 = getelementptr inbounds %struct.ddb_device_id, %struct.ddb_device_id* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ddb_device_id*, %struct.ddb_device_id** %11, align 8
  %42 = getelementptr inbounds %struct.ddb_device_id, %struct.ddb_device_id* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.ddb_device_id*, %struct.ddb_device_id** %11, align 8
  %47 = getelementptr inbounds %struct.ddb_device_id, %struct.ddb_device_id* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 65535
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %39
  %51 = load %struct.ddb_device_id*, %struct.ddb_device_id** %11, align 8
  %52 = getelementptr inbounds %struct.ddb_device_id, %struct.ddb_device_id* %51, i32 0, i32 4
  %53 = load %struct.ddb_info*, %struct.ddb_info** %52, align 8
  store %struct.ddb_info* %53, %struct.ddb_info** %5, align 8
  br label %59

54:                                               ; preds = %45, %33, %27, %17
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %12

58:                                               ; preds = %12
  store %struct.ddb_info* @ddb_none, %struct.ddb_info** %5, align 8
  br label %59

59:                                               ; preds = %58, %50
  %60 = load %struct.ddb_info*, %struct.ddb_info** %5, align 8
  ret %struct.ddb_info* %60
}

declare dso_local i32 @ARRAY_SIZE(%struct.ddb_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
