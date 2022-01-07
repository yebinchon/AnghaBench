; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }

@WDCMSG_TARGET_GET_CAPABILITY = common dso_local global i32 0, align 4
@AR5523_CMD_FLAG_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not read capability %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*, i32, i32*)* @ar5523_get_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_get_capability(%struct.ar5523* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar5523*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @cpu_to_be32(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %14 = load i32, i32* @WDCMSG_TARGET_GET_CAPABILITY, align 4
  %15 = load i32, i32* @AR5523_CMD_FLAG_MAGIC, align 4
  %16 = call i32 @ar5523_cmd_read(%struct.ar5523* %13, i32 %14, i32* %9, i32 4, i32* %10, i32 4, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ar5523_err(%struct.ar5523* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ar5523_cmd_read(%struct.ar5523*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
