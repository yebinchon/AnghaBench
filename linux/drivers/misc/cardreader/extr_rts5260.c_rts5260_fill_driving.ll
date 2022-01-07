; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_fill_driving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5260.c_rts5260_fill_driving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i64, i64 }

@__const.rts5260_fill_driving.driving_3v3 = private unnamed_addr constant [6 x [3 x i64]] [[3 x i64] [i64 148, i64 148, i64 148], [3 x i64] [i64 17, i64 17, i64 24], [3 x i64] [i64 85, i64 85, i64 92], [3 x i64] [i64 148, i64 148, i64 148], [3 x i64] [i64 148, i64 148, i64 148], [3 x i64] [i64 255, i64 255, i64 255]], align 16
@__const.rts5260_fill_driving.driving_1v8 = private unnamed_addr constant [6 x [3 x i64]] [[3 x i64] [i64 154, i64 137, i64 137], [3 x i64] [i64 196, i64 196, i64 196], [3 x i64] [i64 60, i64 60, i64 60], [3 x i64] [i64 155, i64 153, i64 153], [3 x i64] [i64 154, i64 137, i64 137], [3 x i64] [i64 254, i64 254, i64 254]], align 16
@OUTPUT_3V3 = common dso_local global i64 0, align 8
@SD30_CLK_DRIVE_SEL = common dso_local global i32 0, align 4
@SD30_CMD_DRIVE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_pcr*, i64)* @rts5260_fill_driving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts5260_fill_driving(%struct.rtsx_pcr* %0, i64 %1) #0 {
  %3 = alloca %struct.rtsx_pcr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x [3 x i64]], align 16
  %6 = alloca [6 x [3 x i64]], align 16
  %7 = alloca [3 x i64]*, align 8
  %8 = alloca i64, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast [6 x [3 x i64]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x [3 x i64]]* @__const.rts5260_fill_driving.driving_3v3 to i8*), i64 144, i1 false)
  %10 = bitcast [6 x [3 x i64]]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x [3 x i64]]* @__const.rts5260_fill_driving.driving_1v8 to i8*), i64 144, i1 false)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @OUTPUT_3V3, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = getelementptr inbounds [6 x [3 x i64]], [6 x [3 x i64]]* %5, i64 0, i64 0
  store [3 x i64]* %15, [3 x i64]** %7, align 8
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %17 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  br label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds [6 x [3 x i64]], [6 x [3 x i64]]* %6, i64 0, i64 0
  store [3 x i64]* %20, [3 x i64]** %7, align 8
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %22 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %26 = load i32, i32* @SD30_CLK_DRIVE_SEL, align 4
  %27 = load [3 x i64]*, [3 x i64]** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %27, i64 %28
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %25, i32 %26, i32 255, i64 %31)
  %33 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %34 = load i32, i32* @SD30_CMD_DRIVE_SEL, align 4
  %35 = load [3 x i64]*, [3 x i64]** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %35, i64 %36
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %37, i64 0, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %33, i32 %34, i32 255, i64 %39)
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %3, align 8
  %42 = load i32, i32* @SD30_CMD_DRIVE_SEL, align 4
  %43 = load [3 x i64]*, [3 x i64]** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %43, i64 %44
  %46 = getelementptr inbounds [3 x i64], [3 x i64]* %45, i64 0, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @rtsx_pci_write_register(%struct.rtsx_pcr* %41, i32 %42, i32 255, i64 %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rtsx_pci_write_register(%struct.rtsx_pcr*, i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
