; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_detect_eeprom_page_size_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_detect_eeprom_page_size_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_EEPROM_PAGE_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Detected EEPROM page size = %d words.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32)* @ixgbe_detect_eeprom_page_size_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_detect_eeprom_page_size_generic(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %24, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %14, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 4
  %35 = call i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %32, i32 %33, i32 %34, i32* %14)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %65

43:                                               ; preds = %27
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %44, i32 %45, i32 1, i32* %14)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %65

51:                                               ; preds = %43
  %52 = load i32, i32* @IXGBE_EEPROM_PAGE_SIZE_MAX, align 4
  %53 = getelementptr inbounds i32, i32* %14, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = sub nsw i32 %52, %54
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hw_dbg(%struct.ixgbe_hw* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i64 0, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %51, %49, %41
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i64, i64* %3, align 8
  ret i64 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw*, i32, i32, i32*) #2

declare dso_local i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw*, i32, i32, i32*) #2

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
