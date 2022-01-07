; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wil_find_fw_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wil_find_fw_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_map = type { i64 }

@fw_mapping = common dso_local global %struct.fw_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fw_map* @wil_find_fw_mapping(i8* %0) #0 {
  %2 = alloca %struct.fw_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.fw_map* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %11, i64 %13
  %15 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %20, i64 %22
  %24 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @strcmp(i8* %19, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %29, i64 %31
  store %struct.fw_map* %32, %struct.fw_map** %2, align 8
  br label %38

33:                                               ; preds = %18, %10
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %5

37:                                               ; preds = %5
  store %struct.fw_map* null, %struct.fw_map** %2, align 8
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.fw_map*, %struct.fw_map** %2, align 8
  ret %struct.fw_map* %39
}

declare dso_local i32 @ARRAY_SIZE(%struct.fw_map*) #1

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
