; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_print_qlm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_print_qlm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, i32, %struct.lmac*, %struct.TYPE_2__* }
%struct.lmac = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"BGX%d QLM mode\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"BGX%d LMAC%d mode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s: SGMII\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s: XAUI\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s: RXAUI\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s: XFI\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s: 10G_KR\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s: XLAUI\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%s: 40G_KR4\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s: QSGMII\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%s: RGMII\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*, i64)* @bgx_print_qlm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_print_qlm_mode(%struct.bgx* %0, i64 %1) #0 {
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.lmac*, align 8
  %7 = alloca [27 x i8], align 16
  store %struct.bgx* %0, %struct.bgx** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.bgx*, %struct.bgx** %3, align 8
  %9 = getelementptr inbounds %struct.bgx, %struct.bgx* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.bgx*, %struct.bgx** %3, align 8
  %13 = getelementptr inbounds %struct.bgx, %struct.bgx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %96

20:                                               ; preds = %16, %2
  %21 = load %struct.bgx*, %struct.bgx** %3, align 8
  %22 = getelementptr inbounds %struct.bgx, %struct.bgx* %21, i32 0, i32 2
  %23 = load %struct.lmac*, %struct.lmac** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.lmac, %struct.lmac* %23, i64 %24
  store %struct.lmac* %25, %struct.lmac** %6, align 8
  %26 = load %struct.bgx*, %struct.bgx** %3, align 8
  %27 = getelementptr inbounds %struct.bgx, %struct.bgx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %32 = load %struct.bgx*, %struct.bgx** %3, align 8
  %33 = getelementptr inbounds %struct.bgx, %struct.bgx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %43

36:                                               ; preds = %20
  %37 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %38 = load %struct.bgx*, %struct.bgx** %3, align 8
  %39 = getelementptr inbounds %struct.bgx, %struct.bgx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.lmac*, %struct.lmac** %6, align 8
  %45 = getelementptr inbounds %struct.lmac, %struct.lmac* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %96 [
    i32 131, label %47
    i32 130, label %51
    i32 132, label %55
    i32 129, label %59
    i32 128, label %73
    i32 134, label %87
    i32 133, label %91
    i32 135, label %95
  ]

47:                                               ; preds = %43
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %50 = call i32 @dev_info(%struct.device* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %96

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %54 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %96

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %58 = call i32 @dev_info(%struct.device* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  br label %96

59:                                               ; preds = %43
  %60 = load %struct.lmac*, %struct.lmac** %6, align 8
  %61 = getelementptr inbounds %struct.lmac, %struct.lmac* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %67 = call i32 @dev_info(%struct.device* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %71 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %96

73:                                               ; preds = %43
  %74 = load %struct.lmac*, %struct.lmac** %6, align 8
  %75 = getelementptr inbounds %struct.lmac, %struct.lmac* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %81 = call i32 @dev_info(%struct.device* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %80)
  br label %86

82:                                               ; preds = %73
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %85 = call i32 @dev_info(%struct.device* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %96

87:                                               ; preds = %43
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %90 = call i32 @dev_info(%struct.device* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %89)
  br label %96

91:                                               ; preds = %43
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %94 = call i32 @dev_info(%struct.device* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %93)
  br label %96

95:                                               ; preds = %43
  br label %96

96:                                               ; preds = %19, %43, %95, %91, %87, %86, %72, %55, %51, %47
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
