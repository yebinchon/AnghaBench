; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_poll_for_sgmii_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_poll_for_sgmii_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, i32, i32, i32, i8*, i32, i32 }

@BGX_GMP_PCS_MRX_STATUS = common dso_local global i32 0, align 4
@PCS_MRX_STATUS_LINK = common dso_local global i32 0, align 4
@PCS_MRX_STATUS_AN_CPT = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i8* null, align 8
@DUPLEX_UNKNOWN = common dso_local global i8* null, align 8
@BGX_GMP_PCS_ANX_AN_RESULTS = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i8* null, align 8
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_1000 = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmac*)* @bgx_poll_for_sgmii_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_poll_for_sgmii_link(%struct.lmac* %0) #0 {
  %2 = alloca %struct.lmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lmac* %0, %struct.lmac** %2, align 8
  %6 = load %struct.lmac*, %struct.lmac** %2, align 8
  %7 = getelementptr inbounds %struct.lmac, %struct.lmac* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.lmac*, %struct.lmac** %2, align 8
  %10 = getelementptr inbounds %struct.lmac, %struct.lmac* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BGX_GMP_PCS_MRX_STATUS, align 4
  %13 = call i32 @bgx_reg_read(i32 %8, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PCS_MRX_STATUS_LINK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.lmac*, %struct.lmac** %2, align 8
  %20 = getelementptr inbounds %struct.lmac, %struct.lmac* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lmac*, %struct.lmac** %2, align 8
  %23 = getelementptr inbounds %struct.lmac, %struct.lmac* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BGX_GMP_PCS_MRX_STATUS, align 4
  %26 = call i32 @bgx_reg_read(i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.lmac*, %struct.lmac** %2, align 8
  %29 = getelementptr inbounds %struct.lmac, %struct.lmac* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lmac*, %struct.lmac** %2, align 8
  %32 = getelementptr inbounds %struct.lmac, %struct.lmac* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BGX_GMP_PCS_MRX_STATUS, align 4
  %35 = load i32, i32* @PCS_MRX_STATUS_AN_CPT, align 4
  %36 = call i64 @bgx_poll_reg(i32 %30, i32 %33, i32 %34, i32 %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load %struct.lmac*, %struct.lmac** %2, align 8
  %40 = getelementptr inbounds %struct.lmac, %struct.lmac* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i8*, i8** @SPEED_UNKNOWN, align 8
  %42 = load %struct.lmac*, %struct.lmac** %2, align 8
  %43 = getelementptr inbounds %struct.lmac, %struct.lmac* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.lmac*, %struct.lmac** %2, align 8
  %47 = getelementptr inbounds %struct.lmac, %struct.lmac* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %97

48:                                               ; preds = %27
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @PCS_MRX_STATUS_LINK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.lmac*, %struct.lmac** %2, align 8
  %56 = getelementptr inbounds %struct.lmac, %struct.lmac* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.lmac*, %struct.lmac** %2, align 8
  %58 = getelementptr inbounds %struct.lmac, %struct.lmac* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lmac*, %struct.lmac** %2, align 8
  %61 = getelementptr inbounds %struct.lmac, %struct.lmac* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BGX_GMP_PCS_ANX_AN_RESULTS, align 4
  %64 = call i32 @bgx_reg_read(i32 %59, i32 %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = ashr i32 %65, 3
  %67 = and i32 %66, 3
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 1
  %70 = and i32 %69, 1
  %71 = load %struct.lmac*, %struct.lmac** %2, align 8
  %72 = getelementptr inbounds %struct.lmac, %struct.lmac* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  switch i32 %73, label %86 [
    i32 0, label %74
    i32 1, label %78
    i32 2, label %82
  ]

74:                                               ; preds = %48
  %75 = load i8*, i8** @SPEED_10, align 8
  %76 = load %struct.lmac*, %struct.lmac** %2, align 8
  %77 = getelementptr inbounds %struct.lmac, %struct.lmac* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  br label %96

78:                                               ; preds = %48
  %79 = load i8*, i8** @SPEED_100, align 8
  %80 = load %struct.lmac*, %struct.lmac** %2, align 8
  %81 = getelementptr inbounds %struct.lmac, %struct.lmac* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  br label %96

82:                                               ; preds = %48
  %83 = load i8*, i8** @SPEED_1000, align 8
  %84 = load %struct.lmac*, %struct.lmac** %2, align 8
  %85 = getelementptr inbounds %struct.lmac, %struct.lmac* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %96

86:                                               ; preds = %48
  %87 = load %struct.lmac*, %struct.lmac** %2, align 8
  %88 = getelementptr inbounds %struct.lmac, %struct.lmac* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load i8*, i8** @SPEED_UNKNOWN, align 8
  %90 = load %struct.lmac*, %struct.lmac** %2, align 8
  %91 = getelementptr inbounds %struct.lmac, %struct.lmac* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @DUPLEX_UNKNOWN, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.lmac*, %struct.lmac** %2, align 8
  %95 = getelementptr inbounds %struct.lmac, %struct.lmac* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %82, %78, %74
  br label %97

97:                                               ; preds = %96, %38
  %98 = load %struct.lmac*, %struct.lmac** %2, align 8
  %99 = getelementptr inbounds %struct.lmac, %struct.lmac* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.lmac*, %struct.lmac** %2, align 8
  %102 = getelementptr inbounds %struct.lmac, %struct.lmac* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %97
  %106 = load %struct.lmac*, %struct.lmac** %2, align 8
  %107 = getelementptr inbounds %struct.lmac, %struct.lmac* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.lmac*, %struct.lmac** %2, align 8
  %112 = call i32 @bgx_sgmii_change_link_state(%struct.lmac* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load %struct.lmac*, %struct.lmac** %2, align 8
  %115 = getelementptr inbounds %struct.lmac, %struct.lmac* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.lmac*, %struct.lmac** %2, align 8
  %118 = getelementptr inbounds %struct.lmac, %struct.lmac* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %97
  %120 = load %struct.lmac*, %struct.lmac** %2, align 8
  %121 = getelementptr inbounds %struct.lmac, %struct.lmac* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.lmac*, %struct.lmac** %2, align 8
  %124 = getelementptr inbounds %struct.lmac, %struct.lmac* %123, i32 0, i32 3
  %125 = load i32, i32* @HZ, align 4
  %126 = mul nsw i32 %125, 3
  %127 = call i32 @queue_delayed_work(i32 %122, i32* %124, i32 %126)
  ret void
}

declare dso_local i32 @bgx_reg_read(i32, i32, i32) #1

declare dso_local i64 @bgx_poll_reg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bgx_sgmii_change_link_state(%struct.lmac*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
