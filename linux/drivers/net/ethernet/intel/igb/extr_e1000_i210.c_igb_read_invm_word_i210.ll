; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_read_invm_word_i210.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_i210.c_igb_read_invm_word_i210.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_ERR_INVM_VALUE_NOT_FOUND = common dso_local global i64 0, align 8
@E1000_INVM_SIZE = common dso_local global i64 0, align 8
@E1000_INVM_UNINITIALIZED_STRUCTURE = common dso_local global i64 0, align 8
@E1000_INVM_CSR_AUTOLOAD_STRUCTURE = common dso_local global i64 0, align 8
@E1000_INVM_CSR_AUTOLOAD_DATA_SIZE_IN_DWORDS = common dso_local global i64 0, align 8
@E1000_INVM_RSA_KEY_SHA256_STRUCTURE = common dso_local global i64 0, align 8
@E1000_INVM_RSA_KEY_SHA256_DATA_SIZE_IN_DWORDS = common dso_local global i64 0, align 8
@E1000_INVM_WORD_AUTOLOAD_STRUCTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Read INVM Word 0x%02x = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Requested word 0x%02x not found in OTP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64*)* @igb_read_invm_word_i210 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_read_invm_word_i210(%struct.e1000_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64, i64* @E1000_ERR_INVM_VALUE_NOT_FOUND, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %64, %3
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @E1000_INVM_SIZE, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @E1000_INVM_DATA_REG(i64 %19)
  %21 = call i32 @rd32(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @INVM_DWORD_TO_RECORD_TYPE(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @E1000_INVM_UNINITIALIZED_STRUCTURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %67

28:                                               ; preds = %18
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @E1000_INVM_CSR_AUTOLOAD_STRUCTURE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* @E1000_INVM_CSR_AUTOLOAD_DATA_SIZE_IN_DWORDS, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @E1000_INVM_RSA_KEY_SHA256_STRUCTURE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* @E1000_INVM_RSA_KEY_SHA256_DATA_SIZE_IN_DWORDS, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @E1000_INVM_WORD_AUTOLOAD_STRUCTURE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @INVM_DWORD_TO_WORD_ADDRESS(i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @INVM_DWORD_TO_WORD_DATA(i32 %55)
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i64, ...) @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %60)
  store i64 0, i64* %7, align 8
  br label %67

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %14

67:                                               ; preds = %54, %27, %14
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %5, align 8
  %72 = call i32 (i8*, i64, ...) @hw_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i64, i64* %7, align 8
  ret i64 %74
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @E1000_INVM_DATA_REG(i64) #1

declare dso_local i64 @INVM_DWORD_TO_RECORD_TYPE(i32) #1

declare dso_local i64 @INVM_DWORD_TO_WORD_ADDRESS(i32) #1

declare dso_local i64 @INVM_DWORD_TO_WORD_DATA(i32) #1

declare dso_local i32 @hw_dbg(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
