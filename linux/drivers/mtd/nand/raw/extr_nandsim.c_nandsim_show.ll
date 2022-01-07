; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nandsim.c_nandsim_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nandsim.c_nandsim_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@wear_eb_count = common dso_local global i32 0, align 4
@erase_block_wear = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Total numbers of erases:  %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Number of erase blocks:   %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Average number of erases: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Maximum number of erases: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Minimum number of erases: %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Number of ebs with erase counts from %lu to %lu : %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @nandsim_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nandsim_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [10 x i64], align 16
  %9 = alloca [10 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 -1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %41, %2
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @wear_eb_count, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i64*, i64** @erase_block_wear, align 8
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* %12, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %16

44:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp ult i32 %46, 9
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i64 0, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = mul i64 %52, %55
  %57 = add i64 %56, 5
  %58 = udiv i64 %57, 10
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 %60
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %45

65:                                               ; preds = %45
  %66 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i64 0, i64 9
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 9
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %100, %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @wear_eb_count, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load i64*, i64** @erase_block_wear, align 8
  %75 = load i32, i32* %11, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %96, %73
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 10
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ule i64 %83, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i64 0, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %99

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %79

99:                                               ; preds = %89, %79
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %69

103:                                              ; preds = %69
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* @wear_eb_count, align 4
  %106 = zext i32 %105 to i64
  %107 = udiv i64 %104, %106
  store i64 %107, i64* %7, align 8
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %109)
  %111 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %112 = load i32, i32* @wear_eb_count, align 4
  %113 = zext i32 %112 to i64
  %114 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %113)
  %115 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %116)
  %118 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %119 = load i64, i64* %6, align 8
  %120 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %122)
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %159, %103
  %125 = load i32, i32* %11, align 4
  %126 = icmp ult i32 %125, 10
  br i1 %126, label %127, label %162

127:                                              ; preds = %124
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = sub i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, 1
  br label %138

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %130
  %139 = phi i64 [ %136, %130 ], [ 0, %137 ]
  store i64 %139, i64* %15, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ugt i64 %140, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %159

147:                                              ; preds = %138
  %148 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [10 x i64], [10 x i64]* %8, i64 0, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %149, i64 %153, i64 %157)
  br label %159

159:                                              ; preds = %147, %146
  %160 = load i32, i32* %11, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %124

162:                                              ; preds = %124
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
