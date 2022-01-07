; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_reg_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_reg_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { i32 }
%struct.vpfe_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ALAW: 0x%x\0A\00", align 1
@VPFE_ALAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"CLAMP: 0x%x\0A\00", align 1
@VPFE_CLAMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"DCSUB: 0x%x\0A\00", align 1
@VPFE_DCSUB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"BLKCMP: 0x%x\0A\00", align 1
@VPFE_BLKCMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"COLPTN: 0x%x\0A\00", align 1
@VPFE_COLPTN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"SDOFST: 0x%x\0A\00", align 1
@VPFE_SDOFST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"SYN_MODE: 0x%x\0A\00", align 1
@VPFE_SYNMODE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"HSIZE_OFF: 0x%x\0A\00", align 1
@VPFE_HSIZE_OFF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"HORZ_INFO: 0x%x\0A\00", align 1
@VPFE_HORZ_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"VERT_START: 0x%x\0A\00", align 1
@VPFE_VERT_START = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"VERT_LINES: 0x%x\0A\00", align 1
@VPFE_VERT_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpfe_ccdc*)* @vpfe_reg_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpfe_reg_dump(%struct.vpfe_ccdc* %0) #0 {
  %2 = alloca %struct.vpfe_ccdc*, align 8
  %3 = alloca %struct.vpfe_device*, align 8
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %2, align 8
  %4 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %5 = call %struct.vpfe_device* @to_vpfe(%struct.vpfe_ccdc* %4)
  store %struct.vpfe_device* %5, %struct.vpfe_device** %3, align 8
  %6 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %7 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %8 = load i32, i32* @VPFE_ALAW, align 4
  %9 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %7, i32 %8)
  %10 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %12 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %13 = load i32, i32* @VPFE_CLAMP, align 4
  %14 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %12, i32 %13)
  %15 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %17 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %18 = load i32, i32* @VPFE_DCSUB, align 4
  %19 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %17, i32 %18)
  %20 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %22 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %23 = load i32, i32* @VPFE_BLKCMP, align 4
  %24 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %22, i32 %23)
  %25 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %27 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %28 = load i32, i32* @VPFE_COLPTN, align 4
  %29 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %27, i32 %28)
  %30 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %32 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %33 = load i32, i32* @VPFE_SDOFST, align 4
  %34 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %32, i32 %33)
  %35 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %37 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %38 = load i32, i32* @VPFE_SYNMODE, align 4
  %39 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %37, i32 %38)
  %40 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %39)
  %41 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %42 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %43 = load i32, i32* @VPFE_HSIZE_OFF, align 4
  %44 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %42, i32 %43)
  %45 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  %46 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %47 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %48 = load i32, i32* @VPFE_HORZ_INFO, align 4
  %49 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %47, i32 %48)
  %50 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %49)
  %51 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %52 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %53 = load i32, i32* @VPFE_VERT_START, align 4
  %54 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %52, i32 %53)
  %55 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %54)
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %57 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %2, align 8
  %58 = load i32, i32* @VPFE_VERT_LINES, align 4
  %59 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %57, i32 %58)
  %60 = call i32 @vpfe_dbg(i32 3, %struct.vpfe_device* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %59)
  ret void
}

declare dso_local %struct.vpfe_device* @to_vpfe(%struct.vpfe_ccdc*) #1

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*, i32) #1

declare dso_local i32 @vpfe_reg_read(%struct.vpfe_ccdc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
