; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_sram_channel_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_sram_channel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }
%struct.sram_channel = type { i32, i32, i64, i64, i64, i64, i64, i32, i64 }

@cx88_sram_channel_dump.name = internal constant [11 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"initial risc\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cdt base\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cdt size\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"iq base\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iq size\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"risc pc\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"iq wr ptr\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"iq rd ptr\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"cdt current\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pci target\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"line / byte\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%s - dma channel status dump\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"   cmds: %-12s: 0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"  risc%d: \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"0x%08x [ arg #%d ]\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"  iq %x: \00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"  iq %x: 0x%08x [ arg #%d ]\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"fifo: 0x%08x -> 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"ctrl: 0x%08x -> 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"  ptr1_reg: 0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"  ptr2_reg: 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"  cnt1_reg: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"  cnt2_reg: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_sram_channel_dump(%struct.cx88_core* %0, %struct.sram_channel* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca %struct.sram_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %4, align 8
  %9 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %10 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @cx88_sram_channel_dump.name, i64 0, i64 0))
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [11 x i8*], [11 x i8*]* @cx88_sram_channel_dump.name, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %23 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul i32 4, %25
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @cx_read(i64 %28)
  %30 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %21, i32 %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %13

34:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %40 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 11
  %44 = mul i32 4, %43
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = call i32 @cx_read(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, -1
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %54, i32 %55)
  br label %60

57:                                               ; preds = %38
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @cx88_risc_decode(i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %35

64:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %106, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %66, 16
  br i1 %67, label %68, label %110

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
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @cx88_risc_decode(i32 %79)
  store i32 %80, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %102, %68
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %87 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %89, %90
  %92 = mul i32 4, %91
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %88, %93
  %95 = call i32 @cx_read(i64 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i8*, i32, ...) @pr_cont(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %85
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %81

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %65

110:                                              ; preds = %65
  %111 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %112 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %115 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %118 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  %121 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %113, i32 %120)
  %122 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %123 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %126 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 96
  %129 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i64 %124, i64 %128)
  %130 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %131 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @cx_read(i64 %132)
  %134 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %133)
  %135 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %136 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @cx_read(i64 %137)
  %139 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %138)
  %140 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %141 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @cx_read(i64 %142)
  %144 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %143)
  %145 = load %struct.sram_channel*, %struct.sram_channel** %4, align 8
  %146 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @cx_read(i64 %147)
  %149 = call i32 (i8*, ...) @dprintk0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %148)
  ret void
}

declare dso_local i32 @dprintk0(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cx_read(i64) #1

declare dso_local i32 @pr_cont(i8*, i32, ...) #1

declare dso_local i32 @cx88_risc_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
