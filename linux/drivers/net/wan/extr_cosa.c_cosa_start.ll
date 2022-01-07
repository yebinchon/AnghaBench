; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [94 x i8] c"cosa%d: WARNING: start microcode requested with cosa->usage > 1 (%d). Odd things may happen.\0A\00", align 1
@COSA_FW_RESET = common dso_local global i32 0, align 4
@COSA_FW_DOWNLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"%s: download the microcode and/or reset the card first (status %d)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cosa%d: start microcode at 0x%04x failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cosa%d: starting microcode at 0x%04x\0A\00", align 1
@COSA_FW_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosa_data*, i32)* @cosa_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_start(%struct.cosa_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cosa_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cosa_data* %0, %struct.cosa_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %8 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %13 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %16 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %21 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @COSA_FW_RESET, align 4
  %24 = load i32, i32* @COSA_FW_DOWNLOAD, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @COSA_FW_RESET, align 4
  %28 = load i32, i32* @COSA_FW_DOWNLOAD, align 4
  %29 = or i32 %27, %28
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %33 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %36 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %75

41:                                               ; preds = %19
  %42 = load i32, i32* @COSA_FW_RESET, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %45 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @startmicrocode(%struct.cosa_data* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %54 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %75

61:                                               ; preds = %41
  %62 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %63 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %69 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @COSA_FW_START, align 4
  %71 = load %struct.cosa_data*, %struct.cosa_data** %4, align 8
  %72 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %61, %52, %31
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, ...) #1

declare dso_local i32 @startmicrocode(%struct.cosa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
