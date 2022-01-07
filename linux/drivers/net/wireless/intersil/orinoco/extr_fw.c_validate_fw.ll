; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_fw.c_validate_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_fw.c_validate_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_fw_header = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"image too small\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"HFW\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"format not recognised\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bad headersize\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bad block offset\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bad PDR offset\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"bad PRI offset\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"bad compat offset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.orinoco_fw_header*, i64)* @validate_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @validate_fw(%struct.orinoco_fw_header* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.orinoco_fw_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.orinoco_fw_header* %0, %struct.orinoco_fw_header** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ult i64 %7, 24
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %67

10:                                               ; preds = %2
  %11 = load %struct.orinoco_fw_header*, %struct.orinoco_fw_header** %4, align 8
  %12 = getelementptr inbounds %struct.orinoco_fw_header, %struct.orinoco_fw_header* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @memcmp(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %67

17:                                               ; preds = %10
  %18 = load %struct.orinoco_fw_header*, %struct.orinoco_fw_header** %4, align 8
  %19 = getelementptr inbounds %struct.orinoco_fw_header, %struct.orinoco_fw_header* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %67

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.orinoco_fw_header*, %struct.orinoco_fw_header** %4, align 8
  %29 = getelementptr inbounds %struct.orinoco_fw_header, %struct.orinoco_fw_header* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = add i64 %27, %31
  %33 = load i64, i64* %5, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %67

36:                                               ; preds = %26
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.orinoco_fw_header*, %struct.orinoco_fw_header** %4, align 8
  %39 = getelementptr inbounds %struct.orinoco_fw_header, %struct.orinoco_fw_header* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = add i64 %37, %41
  %43 = load i64, i64* %5, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %67

46:                                               ; preds = %36
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.orinoco_fw_header*, %struct.orinoco_fw_header** %4, align 8
  %49 = getelementptr inbounds %struct.orinoco_fw_header, %struct.orinoco_fw_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  %52 = add i64 %47, %51
  %53 = load i64, i64* %5, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %67

56:                                               ; preds = %46
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.orinoco_fw_header*, %struct.orinoco_fw_header** %4, align 8
  %59 = getelementptr inbounds %struct.orinoco_fw_header, %struct.orinoco_fw_header* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  %62 = add i64 %57, %61
  %63 = load i64, i64* %5, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %67

66:                                               ; preds = %56
  store i8* null, i8** %3, align 8
  br label %67

67:                                               ; preds = %66, %65, %55, %45, %35, %25, %16, %9
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
