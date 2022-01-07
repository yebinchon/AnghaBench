; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_set_rds_ps_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_si4713.c_si4713_set_rds_ps_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i64 }

@MAX_RDS_PS_NAME = common dso_local global i32 0, align 4
@RDS_BLOCK = common dso_local global i32 0, align 4
@SI4713_TX_RDS_PS_MESSAGE_COUNT = common dso_local global i32 0, align 4
@SI4713_TX_RDS_PS_REPEAT_COUNT = common dso_local global i32 0, align 4
@DEFAULT_RDS_PS_REPEAT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, i8*)* @si4713_set_rds_ps_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_set_rds_ps_name(%struct.si4713_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si4713_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @memset(i8* %13, i32 0, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %19 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RDS_BLOCK, align 4
  %31 = sdiv i32 %30, 2
  %32 = sdiv i32 %29, %31
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 @si4713_tx_rds_ps(%struct.si4713_device* %28, i32 %32, i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %80

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @RDS_BLOCK, align 4
  %45 = sdiv i32 %44, 2
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %57

56:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %59 = load i32, i32* @SI4713_TX_RDS_PS_MESSAGE_COUNT, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @rds_ps_nblocks(i32 %60)
  %62 = call i32 @si4713_write_property(%struct.si4713_device* %58, i32 %59, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %80

67:                                               ; preds = %57
  %68 = load %struct.si4713_device*, %struct.si4713_device** %4, align 8
  %69 = load i32, i32* @SI4713_TX_RDS_PS_REPEAT_COUNT, align 4
  %70 = load i32, i32* @DEFAULT_RDS_PS_REPEAT_COUNT, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i32 @si4713_write_property(%struct.si4713_device* %68, i32 %69, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %17
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %75, %65, %40
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @si4713_tx_rds_ps(%struct.si4713_device*, i32, i8*) #1

declare dso_local i32 @si4713_write_property(%struct.si4713_device*, i32, i32) #1

declare dso_local i32 @rds_ps_nblocks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
