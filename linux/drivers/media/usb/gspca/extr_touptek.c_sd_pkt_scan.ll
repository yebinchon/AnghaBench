; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sd = type { i64 }

@BULK_SIZE = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"finish frame sz %u/%u w/ len %u\0A\0A\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"abort frame sz %u/%u w/ len %u\0A\0A\00", align 1
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @BULK_SIZE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %3
  %14 = load %struct.sd*, %struct.sd** %7, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %13
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %27 = load i32, i32* @LAST_PACKET, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @gspca_frame_add(%struct.gspca_dev* %26, i32 %27, i32* %28, i32 %29)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = load i32, i32* @D_FRAM, align 4
  %33 = load %struct.sd*, %struct.sd** %7, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @gspca_dbg(%struct.gspca_dev* %31, i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %39, i32 %40)
  br label %57

42:                                               ; preds = %13
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %44 = load i32, i32* @DISCARD_PACKET, align 4
  %45 = call i32 @gspca_frame_add(%struct.gspca_dev* %43, i32 %44, i32* null, i32 0)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %47 = load i32, i32* @D_FRAM, align 4
  %48 = load %struct.sd*, %struct.sd** %7, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @gspca_dbg(%struct.gspca_dev* %46, i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %42, %25
  %58 = load %struct.sd*, %struct.sd** %7, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %84

60:                                               ; preds = %3
  %61 = load %struct.sd*, %struct.sd** %7, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = load i32, i32* @FIRST_PACKET, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @gspca_frame_add(%struct.gspca_dev* %66, i32 %67, i32* %68, i32 %69)
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %73 = load i32, i32* @INTER_PACKET, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @gspca_frame_add(%struct.gspca_dev* %72, i32 %73, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.sd*, %struct.sd** %7, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %77, %57
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
