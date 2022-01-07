; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_status_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_status_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tea5767_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TEA5767_READY_FLAG_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"Ready Flag ON\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Ready Flag OFF\0A\00", align 1
@TEA5767_BAND_LIMIT_MASK = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Tuner at band limit\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Tuner not at band limit\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Frequency %d.%03d KHz (divider = 0x%04x)\0A\00", align 1
@TEA5767_STEREO_MASK = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Stereo\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Mono\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"IF Counter = %d\0A\00", align 1
@TEA5767_IF_CNTR_MASK = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ADC Level = %d\0A\00", align 1
@TEA5767_ADC_LEVEL_MASK = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Chip ID = %d\0A\00", align 1
@TEA5767_CHIP_ID_MASK = common dso_local global i8 0, align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Reserved = 0x%02x\0A\00", align 1
@TEA5767_RESERVED_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tea5767_priv*, i8*)* @tea5767_status_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tea5767_status_dump(%struct.tea5767_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.tea5767_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tea5767_priv* %0, %struct.tea5767_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8, i8* @TEA5767_READY_FLAG_MASK, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %8, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i8, i8* @TEA5767_BAND_LIMIT_MASK, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %32

30:                                               ; preds = %19
  %31 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 63
  %38 = shl i32 %37, 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %38, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.tea5767_priv*, %struct.tea5767_priv** %3, align 8
  %45 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %67 [
    i32 131, label %48
    i32 129, label %54
    i32 128, label %60
    i32 130, label %66
  ]

48:                                               ; preds = %32
  %49 = load i32, i32* %5, align 4
  %50 = mul i32 %49, 50000
  %51 = sub i32 %50, 700000
  %52 = sub i32 %51, 225000
  %53 = udiv i32 %52, 4
  store i32 %53, i32* %6, align 4
  br label %73

54:                                               ; preds = %32
  %55 = load i32, i32* %5, align 4
  %56 = mul i32 %55, 50000
  %57 = add i32 %56, 700000
  %58 = add i32 %57, 225000
  %59 = udiv i32 %58, 4
  store i32 %59, i32* %6, align 4
  br label %73

60:                                               ; preds = %32
  %61 = load i32, i32* %5, align 4
  %62 = mul i32 %61, 32768
  %63 = add i32 %62, 700000
  %64 = add i32 %63, 225000
  %65 = udiv i32 %64, 4
  store i32 %65, i32* %6, align 4
  br label %73

66:                                               ; preds = %32
  br label %67

67:                                               ; preds = %32, %66
  %68 = load i32, i32* %5, align 4
  %69 = mul i32 %68, 32768
  %70 = sub i32 %69, 700000
  %71 = sub i32 %70, 225000
  %72 = udiv i32 %71, 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %67, %60, %54, %48
  %74 = load i32, i32* %5, align 4
  %75 = lshr i32 %74, 8
  %76 = and i32 %75, 63
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8 %82, i8* %84, align 1
  %85 = load i32, i32* %6, align 4
  %86 = udiv i32 %85, 1000
  %87 = load i32, i32* %6, align 4
  %88 = urem i32 %87, 1000
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %88, i32 %89)
  %91 = load i8, i8* @TEA5767_STEREO_MASK, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %92, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %73
  %100 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %103

101:                                              ; preds = %73
  %102 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %99
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @TEA5767_IF_CNTR_MASK, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @TEA5767_ADC_LEVEL_MASK, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %115, %117
  %119 = ashr i32 %118, 4
  %120 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @TEA5767_CHIP_ID_MASK, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %124, %126
  %128 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @TEA5767_RESERVED_MASK, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %132, %134
  %136 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  ret void
}

declare dso_local i32 @tuner_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
