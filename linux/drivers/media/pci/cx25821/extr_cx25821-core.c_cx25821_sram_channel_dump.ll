; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_sram_channel_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_sram_channel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.sram_channel = type { i32, i64, i64, i64, i64, i64, i32, i64, i32 }

@cx25821_sram_channel_dump.name = internal global [14 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"init risc lo\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"init risc hi\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cdt base\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cdt size\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iq base\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"iq size\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"risc pc lo\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"risc pc hi\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"iq wr ptr\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"iq rd ptr\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"cdt current\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"pci target lo\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"pci target hi\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"line / byte\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s: %s - dma channel status dump\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"cmds + 0x%2x:   %-15s: 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"cmds + 0x%2x:   risc%d: \00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"ctrl + 0x%2x (0x%08x): iq %x: \00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"ctrl + 0x%2x :   iq %x: 0x%08x [ arg #%d ]\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"        :   fifo: 0x%08x -> 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"        :   ctrl: 0x%08x -> 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"        :   ptr1_reg: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"        :   ptr2_reg: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"        :   cnt1_reg: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"        :   cnt2_reg: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_sram_channel_dump(%struct.cx25821_dev* %0, %struct.sram_channel* %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca %struct.sram_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %4, align 8
  %9 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %13 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %11, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %36, %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @cx25821_sram_channel_dump.name, i64 0, i64 0))
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = mul i32 %21, 4
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [14 x i8*], [14 x i8*]* @cx25821_sram_channel_dump.name, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %28 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = mul i32 4, %30
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i32 @cx_read(i64 %33)
  %35 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %22, i8* %26, i32 %34)
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %40, 4
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %45, %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %47 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 14
  %51 = mul i32 4, %50
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = call i32 @cx_read(i64 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul i32 %56, 4
  %58 = add i32 %55, %57
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @cx25821_risc_decode(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %42

65:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %120, %65
  %67 = load i32, i32* %6, align 4
  %68 = icmp ult i32 %67, 16
  br i1 %68, label %69, label %124

69:                                               ; preds = %66
  %70 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %71 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = mul i32 4, %73
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = call i32 @cx_read(i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = mul i32 %78, 4
  %80 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %81 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = mul i32 4, %83
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %79, i64 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @cx25821_risc_decode(i32 %89)
  store i32 %90, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %116, %69
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %97 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %99, %100
  %102 = mul i32 4, %101
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %98, %103
  %105 = call i32 @cx_read(i64 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %106, %107
  %109 = mul i32 4, %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %109, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %95
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %91

119:                                              ; preds = %91
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %66

124:                                              ; preds = %66
  %125 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %126 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %129 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %132 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %130, %133
  %135 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %127, i32 %134)
  %136 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %137 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %141 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 96
  %144 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 %139, i64 %143)
  %145 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %146 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @cx_read(i64 %147)
  %149 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %148)
  %150 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %151 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @cx_read(i64 %152)
  %154 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i32 %153)
  %155 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %156 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @cx_read(i64 %157)
  %159 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i32 %158)
  %160 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %161 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @cx_read(i64 %162)
  %164 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i32 %163)
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cx_read(i64) #1

declare dso_local i32 @cx25821_risc_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
