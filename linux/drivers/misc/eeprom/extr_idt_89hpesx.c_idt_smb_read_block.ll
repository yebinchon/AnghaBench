; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32 }
%struct.idt_smb_seq = type { i64, i32, i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CCODE_BLOCK = common dso_local global i32 0, align 4
@CCODE_START = common dso_local global i32 0, align 4
@CCODE_END = common dso_local global i32 0, align 4
@read_block = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)* @idt_smb_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_smb_read_block(%struct.idt_89hpesx_dev* %0, %struct.idt_smb_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca %struct.idt_smb_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store %struct.idt_smb_seq* %1, %struct.idt_smb_seq** %5, align 8
  %8 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %9 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %18 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CCODE_BLOCK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CCODE_START, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CCODE_END, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @read_block, align 4
  %27 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %28 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %32 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @idt_smb_safe(i32 %26, i32 %29, i32 %30, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %37 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %16
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  br label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i64 [ %44, %43 ], [ %48, %45 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %13
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @idt_smb_safe(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
