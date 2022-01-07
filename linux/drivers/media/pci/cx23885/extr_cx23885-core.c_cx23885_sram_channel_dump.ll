; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_sram_channel_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_sram_channel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }
%struct.sram_channel = type { i32, i32, i64, i64, i64, i64, i64, i32, i64 }

@cx23885_sram_channel_dump.name = internal global [14 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0)], align 16
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
@.str.15 = private unnamed_addr constant [27 x i8] c"%s:   cmds: %-15s: 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"%s:   risc%d: \00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%s:   (0x%08x) iq %x: \00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"%s:   iq %x: 0x%08x [ arg #%d ]\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%s: fifo: 0x%08x -> 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"%s: ctrl: 0x%08x -> 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"%s:   ptr1_reg: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"%s:   ptr2_reg: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"%s:   cnt1_reg: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"%s:   cnt2_reg: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_sram_channel_dump(%struct.cx23885_dev* %0, %struct.sram_channel* %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.sram_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %4, align 8
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %13 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %11, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @cx23885_sram_channel_dump.name, i64 0, i64 0))
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %22 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [14 x i8*], [14 x i8*]* @cx23885_sram_channel_dump.name, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %29 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul i32 4, %31
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @cx_read(i64 %34)
  %36 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %23, i8* %27, i32 %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %16

40:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %46 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 14
  %50 = mul i32 4, %49
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %47, %51
  %53 = call i32 @cx_read(i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %55 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @cx23885_risc_decode(i32 %59)
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %41

64:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %119, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %66, 16
  br i1 %67, label %68, label %123

68:                                               ; preds = %65
  %69 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %70 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = mul i32 4, %72
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = call i32 @cx_read(i64 %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %78 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %81 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = mul i32 4, %83
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %79, i64 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @cx23885_risc_decode(i32 %89)
  store i32 %90, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %115, %68
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %97 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %99, %100
  %102 = mul i32 4, %101
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %98, %103
  %105 = call i32 @cx_read(i64 %104)
  store i32 %105, i32* %5, align 4
  %106 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %107 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %108, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %95
  %116 = load i32, i32* %7, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %91

118:                                              ; preds = %91
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %6, align 4
  %122 = add i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %65

123:                                              ; preds = %65
  %124 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %125 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %128 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %131 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %134 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %126, i32 %129, i32 %136)
  %138 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %139 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %142 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %145 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 96
  %148 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %140, i64 %143, i64 %147)
  %149 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %150 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %153 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @cx_read(i64 %154)
  %156 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %151, i32 %155)
  %157 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %158 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %161 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @cx_read(i64 %162)
  %164 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %159, i32 %163)
  %165 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %166 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %169 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @cx_read(i64 %170)
  %172 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %167, i32 %171)
  %173 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %174 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %177 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @cx_read(i64 %178)
  %180 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 %175, i32 %179)
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cx_read(i64) #1

declare dso_local i32 @cx23885_risc_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
