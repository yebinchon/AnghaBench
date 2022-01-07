; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_modus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-kthreads.c_msp34xxg_modus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i64 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"selected radio modus\0A\00", align 1
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"selected M (EIA-J) modus\0A\00", align 1
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"selected M (A2) modus\0A\00", align 1
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"selected SECAM-L modus\0A\00", align 1
@V4L2_STD_MN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"selected M (BTSC) modus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @msp34xxg_modus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp34xxg_modus(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = call i32 @i2c_get_clientdata(%struct.i2c_client* %5)
  %7 = call %struct.msp_state* @to_state(i32 %6)
  store %struct.msp_state* %7, %struct.msp_state** %4, align 8
  %8 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %9 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @msp_debug, align 4
  %16 = call i32 @dev_dbg_lvl(i32* %14, i32 1, i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %19 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @msp_debug, align 4
  %27 = call i32 @dev_dbg_lvl(i32* %25, i32 1, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 16385, i32* %2, align 4
  br label %63

28:                                               ; preds = %17
  %29 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %30 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* @msp_debug, align 4
  %38 = call i32 @dev_dbg_lvl(i32* %36, i32 1, i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %63

39:                                               ; preds = %28
  %40 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %41 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* @msp_debug, align 4
  %49 = call i32 @dev_dbg_lvl(i32* %47, i32 1, i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 24577, i32* %2, align 4
  br label %63

50:                                               ; preds = %39
  %51 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %52 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @V4L2_STD_MN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* @msp_debug, align 4
  %61 = call i32 @dev_dbg_lvl(i32* %59, i32 1, i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 8193, i32* %2, align 4
  br label %63

62:                                               ; preds = %50
  store i32 28673, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %57, %45, %34, %23, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
