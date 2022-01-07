; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_i2c_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_i2c_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32 }
%struct.idt_smb_seq = type { i32, i64, i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CCODE_BLOCK = common dso_local global i64 0, align 8
@CCODE_START = common dso_local global i64 0, align 8
@CCODE_END = common dso_local global i64 0, align 8
@read_i2c_block = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)* @idt_smb_read_i2c_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_smb_read_i2c_block(%struct.idt_89hpesx_dev* %0, %struct.idt_smb_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca %struct.idt_smb_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store %struct.idt_smb_seq* %1, %struct.idt_smb_seq** %5, align 8
  %11 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %17 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %26 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CCODE_BLOCK, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @CCODE_START, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @CCODE_END, align 8
  %33 = or i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load i32, i32* @read_i2c_block, align 4
  %35 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %36 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %40 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = call i64 @idt_smb_safe(i32 %34, i32 %37, i64 %38, i32 %42, i64* %15)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %46 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %44, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %24
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  br label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @ENODATA, align 4
  %58 = sub nsw i32 0, %57
  %59 = sext i32 %58 to i64
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi i64 [ %55, %54 ], [ %59, %56 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

63:                                               ; preds = %24
  %64 = getelementptr inbounds i64, i64* %15, i64 0
  %65 = load i64, i64* %64, align 16
  %66 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %67 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @ENODATA, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

74:                                               ; preds = %63
  %75 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %76 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds i64, i64* %15, i64 1
  %79 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %80 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = call i32 @memcpy(i32 %77, i64* %78, i64 %82)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %74, %71, %60, %21
  %85 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @idt_smb_safe(i32, i32, i64, i32, i64*) #2

declare dso_local i32 @memcpy(i32, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
