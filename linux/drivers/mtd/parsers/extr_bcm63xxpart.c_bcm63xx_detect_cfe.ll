; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_detect_cfe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_detect_cfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@BCM963XX_CFE_VERSION_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cfe-v\00", align 1
@BCM963XX_CFE_MAGIC_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CFE1CFE1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @bcm63xx_detect_cfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_detect_cfe(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca [9 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = load i32, i32* @BCM963XX_CFE_VERSION_OFFSET, align 4
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %10 = call i32 @mtd_read(%struct.mtd_info* %7, i32 %8, i32 5, i64* %6, i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 %11
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %19 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i32 5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %31

22:                                               ; preds = %17
  %23 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %24 = load i32, i32* @BCM963XX_CFE_MAGIC_OFFSET, align 4
  %25 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %26 = call i32 @mtd_read(%struct.mtd_info* %23, i32 %24, i32 8, i64* %6, i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 %27
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 8)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %22, %21, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
