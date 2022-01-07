; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_set_ledsteady.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_set_ledsteady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }
%struct.ar5523_cmd_ledsteady = type { i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"set %s led %s (steady)\0A\00", align 1
@UATH_LED_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"activity\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@WDCMSG_SET_LED_STEADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*, i32, i32)* @ar5523_set_ledsteady to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_set_ledsteady(%struct.ar5523* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar5523*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar5523_cmd_ledsteady, align 8
  store %struct.ar5523* %0, %struct.ar5523** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = getelementptr inbounds %struct.ar5523_cmd_ledsteady, %struct.ar5523_cmd_ledsteady* %7, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = getelementptr inbounds %struct.ar5523_cmd_ledsteady, %struct.ar5523_cmd_ledsteady* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @UATH_LED_LINK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %24 = call i32 @ar5523_dbg(%struct.ar5523* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %23)
  %25 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %26 = load i32, i32* @WDCMSG_SET_LED_STEADY, align 4
  %27 = call i32 @ar5523_cmd_write(%struct.ar5523* %25, i32 %26, %struct.ar5523_cmd_ledsteady* %7, i32 16, i32 0)
  ret i32 %27
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*, i8*, i8*) #1

declare dso_local i32 @ar5523_cmd_write(%struct.ar5523*, i32, %struct.ar5523_cmd_ledsteady*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
