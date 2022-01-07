; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"buffer-length = %lu buf[0]0x%08X\0A\00", align 1
@MEI_SLOT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"buf[%d] = 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i8*, i64)* @mei_txe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_read(%struct.mei_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mei_txe_hw*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mei_device* %0, %struct.mei_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %14 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %13)
  store %struct.mei_txe_hw* %14, %struct.mei_txe_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %78

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to i64*
  store i64* %31, i64** %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = and i64 %32, 3
  store i64 %33, i64* %11, align 8
  %34 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %35 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %39 = call i64 @mei_txe_out_data_read(%struct.mei_device* %38, i64 0)
  %40 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %39)
  store i64 0, i64* %12, align 8
  br label %41

41:                                               ; preds = %61, %29
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %45 = udiv i64 %43, %44
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  %51 = call i64 @mei_txe_out_data_read(%struct.mei_device* %48, i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %53 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %41

64:                                               ; preds = %41
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  %71 = call i64 @mei_txe_out_data_read(%struct.mei_device* %68, i64 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memcpy(i64* %72, i64* %10, i64 %73)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %8, align 8
  %77 = call i32 @mei_txe_output_ready_set(%struct.mei_txe_hw* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i64 @mei_txe_out_data_read(%struct.mei_device*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @mei_txe_output_ready_set(%struct.mei_txe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
