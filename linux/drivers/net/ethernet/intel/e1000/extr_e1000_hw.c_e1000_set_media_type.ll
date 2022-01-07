; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_media_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_set_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32, i8* }

@e1000_82543 = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i8* null, align 8
@e1000_media_type_fiber = common dso_local global i8* null, align 8
@e1000_media_type_copper = common dso_local global i8* null, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_TBIMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_set_media_type(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @e1000_82543, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 132, label %16
    i32 131, label %16
  ]

16:                                               ; preds = %12, %12
  %17 = load i8*, i8** @e1000_media_type_internal_serdes, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  br label %51

20:                                               ; preds = %12
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  switch i64 %23, label %32 [
    i64 130, label %24
    i64 129, label %24
    i64 128, label %28
  ]

24:                                               ; preds = %20, %20
  %25 = load i8*, i8** @e1000_media_type_fiber, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  br label %50

28:                                               ; preds = %20
  %29 = load i8*, i8** @e1000_media_type_copper, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  br label %50

32:                                               ; preds = %20
  %33 = load i32, i32* @STATUS, align 4
  %34 = call i32 @er32(i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @E1000_STATUS_TBIMODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** @e1000_media_type_fiber, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %49

45:                                               ; preds = %32
  %46 = load i8*, i8** @e1000_media_type_copper, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %28, %24
  br label %51

51:                                               ; preds = %50, %16
  ret void
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
