; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_transfer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_transfer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@TMIO_MMC_32BIT_DATA_PORT = common dso_local global i32 0, align 4
@CTL_SD_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i16*, i32)* @tmio_mmc_transfer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_transfer_data(%struct.tmio_mmc_host* %0, i16* %1, i32 %2) #0 {
  %4 = alloca %struct.tmio_mmc_host*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %12 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MMC_DATA_READ, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TMIO_MMC_32BIT_DATA_PORT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %27 = load i16*, i16** %5, align 8
  %28 = bitcast i16* %27 to i32*
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %33 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = lshr i32 %35, 2
  %37 = call i32 @sd_ctrl_read32_rep(%struct.tmio_mmc_host* %32, i32 %33, i32* %34, i32 %36)
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %40 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %6, align 4
  %43 = lshr i32 %42, 2
  %44 = call i32 @sd_ctrl_write32_rep(%struct.tmio_mmc_host* %39, i32 %40, i32* %41, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %118

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = lshr i32 %51, 2
  %53 = load i32*, i32** %10, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = urem i32 %56, 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %62 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %63 = call i32 @sd_ctrl_read32_rep(%struct.tmio_mmc_host* %61, i32 %62, i32* %9, i32 1)
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @memcpy(i32* %64, i32* %9, i32 %65)
  br label %74

67:                                               ; preds = %50
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @memcpy(i32* %9, i32* %68, i32 %69)
  %71 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %72 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %73 = call i32 @sd_ctrl_write32_rep(%struct.tmio_mmc_host* %71, i32 %72, i32* %9, i32 1)
  br label %74

74:                                               ; preds = %67, %60
  br label %118

75:                                               ; preds = %3
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %80 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %81 = load i16*, i16** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = lshr i32 %82, 1
  %84 = call i32 @sd_ctrl_read16_rep(%struct.tmio_mmc_host* %79, i32 %80, i16* %81, i32 %83)
  br label %92

85:                                               ; preds = %75
  %86 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %87 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %88 = load i16*, i16** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = lshr i32 %89, 1
  %91 = call i32 @sd_ctrl_write16_rep(%struct.tmio_mmc_host* %86, i32 %87, i16* %88, i32 %90)
  br label %92

92:                                               ; preds = %85, %78
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %118

97:                                               ; preds = %92
  %98 = load i16*, i16** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = lshr i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %98, i64 %101
  %103 = bitcast i16* %102 to i32*
  store i32* %103, i32** %8, align 8
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %108 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %109 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %107, i32 %108)
  %110 = and i32 %109, 255
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  br label %118

112:                                              ; preds = %97
  %113 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %4, align 8
  %114 = load i32, i32* @CTL_SD_DATA_PORT, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %113, i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %49, %74, %96, %112, %106
  ret void
}

declare dso_local i32 @sd_ctrl_read32_rep(%struct.tmio_mmc_host*, i32, i32*, i32) #1

declare dso_local i32 @sd_ctrl_write32_rep(%struct.tmio_mmc_host*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sd_ctrl_read16_rep(%struct.tmio_mmc_host*, i32, i16*, i32) #1

declare dso_local i32 @sd_ctrl_write16_rep(%struct.tmio_mmc_host*, i32, i16*, i32) #1

declare dso_local i32 @sd_ctrl_read16(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
