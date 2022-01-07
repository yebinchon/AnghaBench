; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i64 }
%struct.stk1135_pkt_header = type { i32, i32, i32 }

@INTER_PACKET = common dso_local global i32 0, align 4
@D_PACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"received short packet (less than 4 bytes)\0A\00", align 1
@STK1135_HDR_FRAME_START = common dso_local global i32 0, align 4
@STK1135_HDR_SEQ_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"received out-of-sequence packet\0A\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stk1135_pkt_header*, align 8
  %12 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %14 = bitcast %struct.gspca_dev* %13 to %struct.sd*
  store %struct.sd* %14, %struct.sd** %7, align 8
  store i32 12, i32* %8, align 4
  %15 = load i32, i32* @INTER_PACKET, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.stk1135_pkt_header*
  store %struct.stk1135_pkt_header* %18, %struct.stk1135_pkt_header** %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %23 = load i32, i32* @D_PACK, align 4
  %24 = call i32 @gspca_dbg(%struct.gspca_dev* %22, i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %118

25:                                               ; preds = %3
  %26 = load %struct.stk1135_pkt_header*, %struct.stk1135_pkt_header** %11, align 8
  %27 = getelementptr inbounds %struct.stk1135_pkt_header, %struct.stk1135_pkt_header* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = and i32 %29, 256
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sd*, %struct.sd** %7, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.sd*, %struct.sd** %7, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %47

44:                                               ; preds = %25
  %45 = load %struct.sd*, %struct.sd** %7, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.stk1135_pkt_header*, %struct.stk1135_pkt_header** %11, align 8
  %49 = getelementptr inbounds %struct.stk1135_pkt_header, %struct.stk1135_pkt_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @STK1135_HDR_FRAME_START, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = load %struct.stk1135_pkt_header*, %struct.stk1135_pkt_header** %11, align 8
  %56 = getelementptr inbounds %struct.stk1135_pkt_header, %struct.stk1135_pkt_header* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STK1135_HDR_SEQ_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.sd*, %struct.sd** %7, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = load i32, i32* @D_PACK, align 4
  %68 = call i32 @gspca_dbg(%struct.gspca_dev* %66, i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.sd*, %struct.sd** %7, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @DISCARD_PACKET, align 4
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %74 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %118

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.sd*, %struct.sd** %7, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sd*, %struct.sd** %7, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @STK1135_HDR_SEQ_MASK, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.sd*, %struct.sd** %7, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %76
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, 12
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %118

94:                                               ; preds = %89
  %95 = load %struct.stk1135_pkt_header*, %struct.stk1135_pkt_header** %11, align 8
  %96 = getelementptr inbounds %struct.stk1135_pkt_header, %struct.stk1135_pkt_header* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @STK1135_HDR_FRAME_START, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  store i32 8, i32* %8, align 4
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %103 = load i32, i32* @LAST_PACKET, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @gspca_frame_add(%struct.gspca_dev* %102, i32 %103, i32* %104, i32 0)
  %106 = load i32, i32* @FIRST_PACKET, align 4
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = call i32 @gspca_frame_add(%struct.gspca_dev* %108, i32 %109, i32* %113, i32 %116)
  br label %118

118:                                              ; preds = %107, %93, %65, %21
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
