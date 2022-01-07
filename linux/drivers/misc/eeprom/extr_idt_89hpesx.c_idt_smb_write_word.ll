; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_smb_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt_89hpesx_dev = type { i32 }
%struct.idt_smb_seq = type { i32, i32, i32* }

@CCODE_WORD = common dso_local global i32 0, align 4
@CCODE_START = common dso_local global i32 0, align 4
@CCODE_END = common dso_local global i32 0, align 4
@write_word = common dso_local global i32 0, align 4
@CCODE_BYTE = common dso_local global i32 0, align 4
@write_byte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_89hpesx_dev*, %struct.idt_smb_seq*)* @idt_smb_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_smb_write_word(%struct.idt_89hpesx_dev* %0, %struct.idt_smb_seq* %1) #0 {
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

18:                                               ; preds = %63, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %66

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
  %44 = load i32, i32* @write_word, align 4
  %45 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %46 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %50 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @idt_smb_safe(i32 %44, i32 %47, i32 %48, i32 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %107

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %8, align 4
  br label %18

66:                                               ; preds = %18
  %67 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %68 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %66
  %73 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %74 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CCODE_BYTE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CCODE_END, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i32, i32* @CCODE_START, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %72
  %87 = load i32, i32* @write_byte, align 4
  %88 = load %struct.idt_89hpesx_dev*, %struct.idt_89hpesx_dev** %4, align 8
  %89 = getelementptr inbounds %struct.idt_89hpesx_dev, %struct.idt_89hpesx_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.idt_smb_seq*, %struct.idt_smb_seq** %5, align 8
  %93 = getelementptr inbounds %struct.idt_smb_seq, %struct.idt_smb_seq* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @idt_smb_safe(i32 %87, i32 %90, i32 %91, i32 %98)
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %86
  %103 = load i64, i64* %6, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %3, align 4
  br label %107

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105, %66
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %102, %59
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @idt_smb_safe(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
