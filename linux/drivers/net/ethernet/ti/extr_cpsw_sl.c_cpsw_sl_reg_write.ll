; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_sl.c_cpsw_sl_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_sl = type { i64*, i64, i32 }

@CPSW_SL_REG_NOTUSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"cpsw_sl: not sup w reg: %04X\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cpsw_sl: reg: %04X w 0x%08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_sl_reg_write(%struct.cpsw_sl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpsw_sl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpsw_sl* %0, %struct.cpsw_sl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %8 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CPSW_SL_REG_NOTUSED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %18 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %21 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %54

28:                                               ; preds = %3
  %29 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %30 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %33 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %43 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cpsw_sl*, %struct.cpsw_sl** %4, align 8
  %46 = getelementptr inbounds %struct.cpsw_sl, %struct.cpsw_sl* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %44, %51
  %53 = call i32 @writel(i32 %41, i64 %52)
  br label %54

54:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
