; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_proc.c_prism2_scan_results_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_proc.c_prism2_scan_results_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_3__ = type { %struct.hfa384x_hostscan_result* }
%struct.hfa384x_hostscan_result = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"CHID ANL SL BcnInt Capab Rate BSSID ATIM SupRates SSID\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%d %d %d %d 0x%02x %d %pM %d \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"<%02x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @prism2_scan_results_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_scan_results_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfa384x_hostscan_result*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @file_inode(i32 %15)
  %17 = call %struct.TYPE_3__* @PDE_DATA(i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %141

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = sub i64 %26, 2
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %30, i64 %31
  store %struct.hfa384x_hostscan_result* %32, %struct.hfa384x_hostscan_result** %10, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %35 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %39 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %43 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %47 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %51 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %55 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %59 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %62 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %57, i32 %60, i32 %64)
  %66 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %67 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %91, %24
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %71, 8
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %94

82:                                               ; preds = %73
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %69

94:                                               ; preds = %81, %69
  %95 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %96 = call i32 @seq_putc(%struct.seq_file* %95, i8 signext 32)
  %97 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %98 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %11, align 8
  %100 = load %struct.hfa384x_hostscan_result*, %struct.hfa384x_hostscan_result** %10, align 8
  %101 = getelementptr inbounds %struct.hfa384x_hostscan_result, %struct.hfa384x_hostscan_result* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @le16_to_cpu(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 32
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  store i32 32, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %94
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %135, %107
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %108
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  store i8 %117, i8* %12, align 1
  %118 = load i8, i8* %12, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp sge i32 %119, 32
  br i1 %120, label %121, label %129

121:                                              ; preds = %112
  %122 = load i8, i8* %12, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp slt i32 %123, 127
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %127 = load i8, i8* %12, align 1
  %128 = call i32 @seq_putc(%struct.seq_file* %126, i8 signext %127)
  br label %134

129:                                              ; preds = %121, %112
  %130 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %131 = load i8, i8* %12, align 1
  %132 = zext i8 %131 to i32
  %133 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %108

138:                                              ; preds = %108
  %139 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %140 = call i32 @seq_putc(%struct.seq_file* %139, i8 signext 10)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %138, %21
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.TYPE_3__* @PDE_DATA(i32) #1

declare dso_local i32 @file_inode(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
