; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov518_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.sd = type { i32 }

@LAST_PACKET = common dso_local global i32 0, align 4
@FIRST_PACKET = common dso_local global i32 0, align 4
@DISCARD_PACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Invalid packet nr: %d (expect: %d)\0A\00", align 1
@INTER_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @ov518_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov518_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
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
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %12, %15
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 1
  %41 = and i32 %40, 1
  %42 = call i32 @ov51x_handle_button(%struct.gspca_dev* %36, i32 %41)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %44 = load i32, i32* @LAST_PACKET, align 4
  %45 = call i32 @gspca_frame_add(%struct.gspca_dev* %43, i32 %44, i32* null, i32 0)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %47 = load i32, i32* @FIRST_PACKET, align 4
  %48 = call i32 @gspca_frame_add(%struct.gspca_dev* %46, i32 %47, i32* null, i32 0)
  %49 = load %struct.sd*, %struct.sd** %7, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %30, %3
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DISCARD_PACKET, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %113

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 7
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.sd*, %struct.sd** %7, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load %struct.sd*, %struct.sd** %7, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %106

79:                                               ; preds = %62
  %80 = load %struct.sd*, %struct.sd** %7, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %84, %79
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sd*, %struct.sd** %7, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @gspca_err(%struct.gspca_dev* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i64, i64* @DISCARD_PACKET, align 8
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %104 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %113

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105, %74
  br label %107

107:                                              ; preds = %106, %58
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %109 = load i32, i32* @INTER_PACKET, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @gspca_frame_add(%struct.gspca_dev* %108, i32 %109, i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %91, %57
  ret void
}

declare dso_local i32 @ov51x_handle_button(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
