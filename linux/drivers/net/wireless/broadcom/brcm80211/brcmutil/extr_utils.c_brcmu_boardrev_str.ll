; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_boardrev_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_boardrev_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BRCMU_BOARDREV_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%03x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @brcmu_boardrev_str(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @BRCMU_BOARDREV_LEN, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 240
  %13 = ashr i32 %12, 4
  %14 = trunc i32 %13 to i8
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 15
  %17 = call i32 @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8 signext %14, i32 %16)
  br label %31

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 61440
  %21 = icmp eq i32 %20, 4096
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 80, i32 65
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %5, align 1
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @BRCMU_BOARDREV_LEN, align 4
  %27 = load i8, i8* %5, align 1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 4095
  %30 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 signext %27, i32 %29)
  br label %31

31:                                               ; preds = %18, %8
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
