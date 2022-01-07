; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_show_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_show_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw2100_priv = type { i64, i64*, %struct.net_device* }
%struct.net_device = type { i32 }

@show_memory.loop = internal global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_memory(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipw2100_priv*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [81 x i8], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.ipw2100_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.ipw2100_priv* %14, %struct.ipw2100_priv** %7, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 2
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i64, i64* @show_memory.loop, align 8
  %19 = icmp uge i64 %18, 196608
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i64 0, i64* @show_memory.loop, align 8
  br label %21

21:                                               ; preds = %20, %3
  br label %22

22:                                               ; preds = %155, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 128
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* @show_memory.loop, align 8
  %29 = icmp ult i64 %28, 196608
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i1 [ false, %22 ], [ %29, %27 ]
  br i1 %31, label %32, label %158

32:                                               ; preds = %30
  %33 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %34 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i64, i64* @show_memory.loop, align 8
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %44, %47
  %49 = call i64 @SNAPSHOT_ADDR(i64 %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %40

58:                                               ; preds = %40
  br label %78

59:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.net_device*, %struct.net_device** %8, align 8
  %65 = load i64, i64* @show_memory.loop, align 8
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %71
  %73 = call i32 @read_nic_dword(%struct.net_device* %64, i64 %69, i32* %72)
  br label %74

74:                                               ; preds = %63
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %60

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %80 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %141

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 16
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %104 = getelementptr inbounds i32, i32* %103, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %110 = getelementptr inbounds i32, i32* %109, i64 7
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  %114 = load i32, i32* %113, align 16
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %119 = getelementptr inbounds i32, i32* %118, i64 10
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %122 = getelementptr inbounds i32, i32* %121, i64 11
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %125 = getelementptr inbounds i32, i32* %124, i64 12
  %126 = load i32, i32* %125, align 16
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %128 = getelementptr inbounds i32, i32* %127, i64 13
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %131 = getelementptr inbounds i32, i32* %130, i64 14
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %134 = getelementptr inbounds i32, i32* %133, i64 15
  %135 = load i32, i32* %134, align 4
  %136 = call i64 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126, i32 %129, i32 %132, i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %9, align 4
  br label %155

141:                                              ; preds = %78
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = getelementptr inbounds [81 x i8], [81 x i8]* %12, i64 0, i64 0
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %148 = load i64, i64* @show_memory.loop, align 8
  %149 = call i8* @snprint_line(i8* %146, i32 81, i32* %147, i32 16, i64 %148)
  %150 = call i64 (i8*, i8*, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %141, %83
  %156 = load i64, i64* @show_memory.loop, align 8
  %157 = add i64 %156, 16
  store i64 %157, i64* @show_memory.loop, align 8
  br label %22

158:                                              ; preds = %30
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local %struct.ipw2100_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @SNAPSHOT_ADDR(i64) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i64, i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @snprint_line(i8*, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
