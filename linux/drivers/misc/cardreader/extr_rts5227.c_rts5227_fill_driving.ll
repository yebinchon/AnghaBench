; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_fill_driving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5227.c_rts5227_fill_driving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i64, i64 }

@__const.rts5227_fill_driving.driving_3v3 = private unnamed_addr constant [4 x [3 x i64]] [[3 x i64] [i64 19, i64 19, i64 19], [3 x i64] [i64 150, i64 150, i64 150], [3 x i64] [i64 127, i64 127, i64 127], [3 x i64] [i64 150, i64 150, i64 150]], align 16
@__const.rts5227_fill_driving.driving_1v8 = private unnamed_addr constant [4 x [3 x i64]] [[3 x i64] [i64 153, i64 153, i64 153], [3 x i64] [i64 170, i64 170, i64 170], [3 x i64] [i64 254, i64 254, i64 254], [3 x i64] [i64 179, i64 179, i64 179]], align 16
@OUTPUT_3V3 = common dso_local global i64 0, align 8
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SD30_CLK_DRIVE_SEL = common dso_local global i32 0, align 4
@SD30_CMD_DRIVE_SEL = common dso_local global i32 0, align 4
@SD30_DAT_DRIVE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i64)* @rts5227_fill_driving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5227_fill_driving(%struct.rtsx_pcr* %0, i64 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x [3 x i64]], align 16
  %6 = alloca [4 x [3 x i64]], align 16
  %7 = alloca [3 x i64]*, align 8
  %8 = alloca i64, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast [4 x [3 x i64]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x [3 x i64]]* @__const.rts5227_fill_driving.driving_3v3 to i8*), i64 96, i1 false)
  %10 = bitcast [4 x [3 x i64]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x [3 x i64]]* @__const.rts5227_fill_driving.driving_1v8 to i8*), i64 96, i1 false)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @OUTPUT_3V3, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds [4 x [3 x i64]], [4 x [3 x i64]]* %5, i64 0, i64 0
  store [3 x i64]* %15, [3 x i64]** %7, align 8
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %17 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  br label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds [4 x [3 x i64]], [4 x [3 x i64]]* %6, i64 0, i64 0
  store [3 x i64]* %20, [3 x i64]** %7, align 8
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %22 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %26 = load i32, i32* @WRITE_REG_CMD, align 4
  %27 = load i32, i32* @SD30_CLK_DRIVE_SEL, align 4
  %28 = load [3 x i64]*, [3 x i64]** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 %29
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %25, i32 %26, i32 %27, i32 255, i64 %32)
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %35 = load i32, i32* @WRITE_REG_CMD, align 4
  %36 = load i32, i32* @SD30_CMD_DRIVE_SEL, align 4
  %37 = load [3 x i64]*, [3 x i64]** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %37, i64 %38
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %39, i64 0, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %34, i32 %35, i32 %36, i32 255, i64 %41)
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %44 = load i32, i32* @WRITE_REG_CMD, align 4
  %45 = load i32, i32* @SD30_DAT_DRIVE_SEL, align 4
  %46 = load [3 x i64]*, [3 x i64]** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %46, i64 %47
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %48, i64 0, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %43, i32 %44, i32 %45, i32 255, i64 %50)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
