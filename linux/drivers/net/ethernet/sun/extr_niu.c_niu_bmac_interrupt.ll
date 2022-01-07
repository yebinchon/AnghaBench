; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_bmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_bmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.niu_bmac_stats }
%struct.niu_bmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BTXMAC_STATUS = common dso_local global i32 0, align 4
@BTXMAC_STATUS_UNDERRUN = common dso_local global i32 0, align 4
@BTXMAC_STATUS_MAX_PKT_ERR = common dso_local global i32 0, align 4
@BTXMAC_STATUS_BYTE_CNT_EXP = common dso_local global i32 0, align 4
@BTXMAC_BYTE_CNT_COUNT = common dso_local global i64 0, align 8
@BTXMAC_STATUS_FRAME_CNT_EXP = common dso_local global i32 0, align 4
@BTXMAC_FRM_CNT_COUNT = common dso_local global i64 0, align 8
@BRXMAC_STATUS = common dso_local global i32 0, align 4
@BRXMAC_STATUS_OVERFLOW = common dso_local global i32 0, align 4
@BRXMAC_STATUS_FRAME_CNT_EXP = common dso_local global i32 0, align 4
@BRXMAC_FRAME_CNT_COUNT = common dso_local global i64 0, align 8
@BRXMAC_STATUS_ALIGN_ERR_EXP = common dso_local global i32 0, align 4
@BRXMAC_ALIGN_ERR_CNT_COUNT = common dso_local global i64 0, align 8
@BRXMAC_STATUS_CRC_ERR_EXP = common dso_local global i32 0, align 4
@BRXMAC_STATUS_LEN_ERR_EXP = common dso_local global i32 0, align 4
@BRXMAC_CODE_VIOL_ERR_CNT_COUNT = common dso_local global i64 0, align 8
@BMAC_CTRL_STATUS = common dso_local global i32 0, align 4
@BMAC_CTRL_STATUS_NOPAUSE = common dso_local global i32 0, align 4
@BMAC_CTRL_STATUS_PAUSE = common dso_local global i32 0, align 4
@BMAC_CTRL_STATUS_PAUSE_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_bmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_bmac_interrupt(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_bmac_stats*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %5 = load %struct.niu*, %struct.niu** %2, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.niu_bmac_stats* %7, %struct.niu_bmac_stats** %3, align 8
  %8 = load i32, i32* @BTXMAC_STATUS, align 4
  %9 = call i32 @nr64_mac(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BTXMAC_STATUS_UNDERRUN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %16 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @BTXMAC_STATUS_MAX_PKT_ERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %26 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @BTXMAC_STATUS_BYTE_CNT_EXP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i64, i64* @BTXMAC_BYTE_CNT_COUNT, align 8
  %36 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %37 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @BTXMAC_STATUS_FRAME_CNT_EXP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i64, i64* @BTXMAC_FRM_CNT_COUNT, align 8
  %49 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %50 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  br label %55

55:                                               ; preds = %47, %42
  %56 = load i32, i32* @BRXMAC_STATUS, align 4
  %57 = call i32 @nr64_mac(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @BRXMAC_STATUS_OVERFLOW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %64 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @BRXMAC_STATUS_FRAME_CNT_EXP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i64, i64* @BRXMAC_FRAME_CNT_COUNT, align 8
  %74 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %75 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @BRXMAC_STATUS_ALIGN_ERR_EXP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i64, i64* @BRXMAC_ALIGN_ERR_CNT_COUNT, align 8
  %87 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %88 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  br label %93

93:                                               ; preds = %85, %80
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @BRXMAC_STATUS_CRC_ERR_EXP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load i64, i64* @BRXMAC_ALIGN_ERR_CNT_COUNT, align 8
  %100 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %101 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  br label %106

106:                                              ; preds = %98, %93
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @BRXMAC_STATUS_LEN_ERR_EXP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i64, i64* @BRXMAC_CODE_VIOL_ERR_CNT_COUNT, align 8
  %113 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %114 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %119

119:                                              ; preds = %111, %106
  %120 = load i32, i32* @BMAC_CTRL_STATUS, align 4
  %121 = call i32 @nr64_mac(i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @BMAC_CTRL_STATUS_NOPAUSE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %128 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %126, %119
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @BMAC_CTRL_STATUS_PAUSE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %138 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %136, %131
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @BMAC_CTRL_STATUS_PAUSE_RECV, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = load %struct.niu_bmac_stats*, %struct.niu_bmac_stats** %3, align 8
  %148 = getelementptr inbounds %struct.niu_bmac_stats, %struct.niu_bmac_stats* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %146, %141
  ret void
}

declare dso_local i32 @nr64_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
