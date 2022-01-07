; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_open_file_regdump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_open_file_regdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_hole = type { i32, i32 }
%struct.inode = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.file = type { i32* }

@open_file_regdump.reg_hole_list = internal constant [6 x %struct.reg_hole] [%struct.reg_hole { i32 512, i32 2044 }, %struct.reg_hole { i32 3072, i32 4092 }, %struct.reg_hole { i32 8192, i32 16380 }, %struct.reg_hole { i32 16640, i32 28668 }, %struct.reg_hole { i32 28764, i32 32764 }, %struct.reg_hole zeroinitializer], align 16
@REGDUMP_LINE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"0x%06x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @open_file_regdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file_regdump(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  store %struct.ath_softc* %16, %struct.ath_softc** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @AR_SREV_9300_20_OR_LATER(i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 34816, i32 46336
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = udiv i64 %25, 4
  %27 = add i64 %26, 1
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @REGDUMP_LINE_SIZE, align 8
  %30 = mul i64 %28, %29
  %31 = add i64 %30, 1
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32* @vmalloc(i64 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %96

39:                                               ; preds = %2
  %40 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %41 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %87, %39
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [6 x %struct.reg_hole], [6 x %struct.reg_hole]* @open_file_regdump.reg_hole_list, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.reg_hole, %struct.reg_hole* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 2
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [6 x %struct.reg_hole], [6 x %struct.reg_hole]* @open_file_regdump.reg_hole_list, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.reg_hole, %struct.reg_hole* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 2
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %87

65:                                               ; preds = %47
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = sub i64 %70, %72
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %74, 2
  %76 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %77 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = shl i32 %79, 2
  %81 = call i32 @REG_READ(i32 %78, i32 %80)
  %82 = call i64 @scnprintf(i32* %69, i64 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %65, %56
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %42

90:                                               ; preds = %42
  %91 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %92 = call i32 @ath9k_ps_restore(%struct.ath_softc* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.file*, %struct.file** %5, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %36
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(i32) #1

declare dso_local i32* @vmalloc(i64) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i64 @scnprintf(i32*, i64, i8*, i32, i32) #1

declare dso_local i32 @REG_READ(i32, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
