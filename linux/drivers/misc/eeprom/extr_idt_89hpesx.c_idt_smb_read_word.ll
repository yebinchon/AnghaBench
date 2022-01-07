; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32 }
%struct.idt_smb_seq = type { i32, i32, i32* }

@CCODE_WORD = common dso_local global i32 0, align 4
@CCODE_START = common dso_local global i32 0, align 4
@CCODE_END = common dso_local global i32 0, align 4
@read_word = common dso_local global i32 0, align 4
@CCODE_BYTE = common dso_local global i32 0, align 4
@read_byte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)* @idt_smb_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_smb_read_word(%struct.idt_89hpesx_dev* %0, %struct.idt_smb_seq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idt_89hpesx_dev*, align 8
  %5 = alloca %struct.idt_smb_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.idt_89hpesx_dev* %0, %struct.idt_89hpesx_dev** %4, align 8
  store %struct.idt_smb_seq* %1, %struct.idt_smb_seq** %5, align 8
  %10 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %11 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %14 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %15, 2
  %17 = sub nsw i32 %12, %16
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %64, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %24 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CCODE_WORD, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @CCODE_START, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 2
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @CCODE_END, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @read_word, align 4
  %45 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %46 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @idt_smb_safe(i32 %44, i32 %47, i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %109

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %58 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = bitcast i32* %62 to i64*
  store i64 %56, i64* %63, align 8
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %8, align 4
  br label %18

67:                                               ; preds = %18
  %68 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %69 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %67
  %74 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %75 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CCODE_BYTE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @CCODE_END, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @CCODE_START, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %73
  %88 = load i32, i32* @read_byte, align 4
  %89 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %90 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @idt_smb_safe(i32 %88, i32 %91, i32 %92)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i64, i64* %6, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %109

99:                                               ; preds = %87
  %100 = load i64, i64* %6, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %103 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %99, %67
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %96, %52
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @idt_smb_safe(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
