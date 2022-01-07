; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_write_i2c_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_write_i2c_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32 }
%struct.idt_smb_seq = type { i32, i32, i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CCODE_BLOCK = common dso_local global i32 0, align 4
@CCODE_START = common dso_local global i32 0, align 4
@CCODE_END = common dso_local global i32 0, align 4
@write_i2c_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)* @idt_smb_write_i2c_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_smb_write_i2c_block(%struct.idt_89hpesx_dev* %0, %struct.idt_smb_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca %struct.idt_smb_seq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store %struct.idt_smb_seq* %1, %struct.idt_smb_seq** %5, align 8
  %10 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %16 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %25 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %26, i32* %27, align 16
  %28 = getelementptr inbounds i32, i32* %14, i64 1
  %29 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %30 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %33 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32* %28, i32 %31, i32 %34)
  %36 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %37 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CCODE_BLOCK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CCODE_START, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CCODE_END, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @write_i2c_block, align 4
  %46 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %47 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %51 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @idt_smb_safe(i32 %45, i32 %48, i32 %49, i32 %53, i32* %14)
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %23, %20
  %56 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @idt_smb_safe(i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
