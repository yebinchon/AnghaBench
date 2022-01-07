; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32 }
%struct.idt_smb_seq = type { i32, i32, i32* }

@CCODE_BYTE = common dso_local global i32 0, align 4
@CCODE_START = common dso_local global i32 0, align 4
@CCODE_END = common dso_local global i32 0, align 4
@read_byte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)* @idt_smb_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_smb_read_byte(%struct.idt_89hpesx_dev* %0, %struct.idt_smb_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca %struct.idt_smb_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store %struct.idt_smb_seq* %1, %struct.idt_smb_seq** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %59, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %12 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %17 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CCODE_BYTE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @CCODE_START, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %15
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %30 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @CCODE_END, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* @read_byte, align 4
  %40 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %41 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @idt_smb_safe(i32 %39, i32 %42, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %38
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %54 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %9

62:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @idt_smb_safe(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
