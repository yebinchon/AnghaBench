; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_dash_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_dash_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TG3_APE_FW_VERSION = common dso_local global i32 0, align 4
@APE_HAS_NCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NCSI\00", align 1
@TG3PCI_DEVICE_TIGON3_5725 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"SMASH\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DASH\00", align 1
@TG3_VER_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c" %s v%d.%d.%d.%d\00", align 1
@APE_FW_VERSION_MAJMSK = common dso_local global i32 0, align 4
@APE_FW_VERSION_MAJSFT = common dso_local global i32 0, align 4
@APE_FW_VERSION_MINMSK = common dso_local global i32 0, align 4
@APE_FW_VERSION_MINSFT = common dso_local global i32 0, align 4
@APE_FW_VERSION_REVMSK = common dso_local global i32 0, align 4
@APE_FW_VERSION_REVSFT = common dso_local global i32 0, align 4
@APE_FW_VERSION_BLDMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_read_dash_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_read_dash_ver(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %6 = load %struct.tg3*, %struct.tg3** %2, align 8
  %7 = load i32, i32* @TG3_APE_FW_VERSION, align 4
  %8 = call i32 @tg3_ape_read32(%struct.tg3* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = load i32, i32* @APE_HAS_NCSI, align 4
  %11 = call i64 @tg3_flag(%struct.tg3* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TG3PCI_DEVICE_TIGON3_5725, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %24

23:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %24

24:                                               ; preds = %23, %22
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %struct.tg3*, %struct.tg3** %2, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @strlen(i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.tg3*, %struct.tg3** %2, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i64, i64* @TG3_VER_SIZE, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @APE_FW_VERSION_MAJMSK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @APE_FW_VERSION_MAJSFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @APE_FW_VERSION_MINMSK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @APE_FW_VERSION_MINSFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @APE_FW_VERSION_REVMSK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @APE_FW_VERSION_REVSFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @APE_FW_VERSION_BLDMSK, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @snprintf(i32* %35, i64 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %45, i32 %50, i32 %55, i32 %58)
  ret void
}

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
