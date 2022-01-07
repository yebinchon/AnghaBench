; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_get_clock_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_cit_get_clock_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@__const.cit_get_clock_div.fps = private unnamed_addr constant [8 x i32] [i32 30, i32 25, i32 20, i32 15, i32 12, i32 8, i32 6, i32 3], align 16
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"PacketSize: %d, res: %dx%d -> using clockdiv: %d (%d fps)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_get_clock_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_get_clock_div(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 7, i32* %4, align 4
  %7 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.cit_get_clock_div.fps to i8*), i64 32, i1 false)
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = call i32 @cit_get_packet_size(%struct.gspca_dev* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 1000, %19
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %24, %28
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %29, %34
  %36 = mul nsw i32 %35, 3
  %37 = sdiv i32 %36, 2
  %38 = icmp sgt i32 %20, %37
  br label %39

39:                                               ; preds = %18, %15
  %40 = phi i1 [ false, %15 ], [ %38, %18 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  br label %15

44:                                               ; preds = %39
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = load i32, i32* @D_PROBE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gspca_dbg(%struct.gspca_dev* %45, i32 %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %55, i32 %56, i32 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %44, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cit_get_packet_size(%struct.gspca_dev*) #2

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
