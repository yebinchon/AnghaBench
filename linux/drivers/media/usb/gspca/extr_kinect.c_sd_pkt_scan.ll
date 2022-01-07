; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_kinect.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_kinect.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }
%struct.pkt_hdr = type { i8*, i64 }

@.str = private unnamed_addr constant [38 x i8] c"[Stream %02x] Invalid magic %02x%02x\0A\00", align 1
@FIRST_PACKET = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Packet type not recognized...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca %struct.pkt_hdr*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = bitcast %struct.gspca_dev* %14 to %struct.sd*
  store %struct.sd* %15, %struct.sd** %7, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = bitcast i64* %16 to i8*
  %18 = bitcast i8* %17 to %struct.pkt_hdr*
  store %struct.pkt_hdr* %18, %struct.pkt_hdr** %8, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 16
  store i64* %20, i64** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 16
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.sd*, %struct.sd** %7, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load %struct.sd*, %struct.sd** %7, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, 2
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load %struct.sd*, %struct.sd** %7, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 5
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %13, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 12
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %116

43:                                               ; preds = %3
  %44 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 82
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 66
  br i1 %58, label %59, label %76

59:                                               ; preds = %51, %43
  %60 = load %struct.sd*, %struct.sd** %7, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %64 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %70 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %68, i32 %74)
  br label %116

76:                                               ; preds = %51
  %77 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %78 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %84 = load i32, i32* @FIRST_PACKET, align 4
  %85 = load i64*, i64** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @gspca_frame_add(%struct.gspca_dev* %83, i32 %84, i64* %85, i32 %86)
  br label %116

88:                                               ; preds = %76
  %89 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %90 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %96 = load i32, i32* @INTER_PACKET, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @gspca_frame_add(%struct.gspca_dev* %95, i32 %96, i64* %97, i32 %98)
  br label %115

100:                                              ; preds = %88
  %101 = load %struct.pkt_hdr*, %struct.pkt_hdr** %8, align 8
  %102 = getelementptr inbounds %struct.pkt_hdr, %struct.pkt_hdr* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %108 = load i32, i32* @LAST_PACKET, align 4
  %109 = load i64*, i64** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @gspca_frame_add(%struct.gspca_dev* %107, i32 %108, i64* %109, i32 %110)
  br label %114

112:                                              ; preds = %100
  %113 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %106
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %42, %59, %115, %82
  ret void
}

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
