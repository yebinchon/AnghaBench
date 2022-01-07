; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-terratec.c_terratec_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-terratec.c_terratec_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { i32 }

@WRT_EN = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@CLK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_isa_card*, i32)* @terratec_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terratec_s_frequency(%struct.radio_isa_card* %0, i32 %1) #0 {
  %3 = alloca %struct.radio_isa_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [25 x i8], align 16
  store %struct.radio_isa_card* %0, %struct.radio_isa_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, 160
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 25)
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 10
  %16 = add nsw i32 %15, 10700
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  store i32 13, i32* %5, align 4
  store i32 10, i32* %6, align 4
  store i32 102400, i32* %7, align 4
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = srem i64 %22, %24
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  br label %40

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 %34
  store i8 1, i8* %35, align 1
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %32, %28
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %7, align 4
  br label %18

47:                                               ; preds = %18
  store i32 24, i32* %5, align 4
  br label %48

48:                                               ; preds = %96, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %99

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [25 x i8], [25 x i8]* %9, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %82

58:                                               ; preds = %51
  %59 = load i32, i32* @WRT_EN, align 4
  %60 = load i32, i32* @DATA, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %63 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @outb(i32 %61, i32 %64)
  %66 = load i32, i32* @WRT_EN, align 4
  %67 = load i32, i32* @DATA, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CLK_ON, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %72 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @outb(i32 %70, i32 %73)
  %75 = load i32, i32* @WRT_EN, align 4
  %76 = load i32, i32* @DATA, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %79 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @outb(i32 %77, i32 %80)
  br label %95

82:                                               ; preds = %51
  %83 = load i32, i32* @WRT_EN, align 4
  %84 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %85 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @outb(i32 %83, i32 %86)
  %88 = load i32, i32* @WRT_EN, align 4
  %89 = load i32, i32* @CLK_ON, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %92 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @outb(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %82, %58
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %5, align 4
  br label %48

99:                                               ; preds = %48
  %100 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %101 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @outb(i32 0, i32 %102)
  ret i32 0
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
