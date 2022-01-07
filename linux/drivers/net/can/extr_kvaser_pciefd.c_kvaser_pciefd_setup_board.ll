; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i32, i32, i32, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_SYSID_VERSION_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SYSID_NRCHAN_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Number of channels does not match: %u vs %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KVASER_PCIEFD_MAX_CAN_CHANNELS = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SYSID_BUILD_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Version %u.%u.%u\0A\00", align 1
@KVASER_PCIEFD_SYSID_MAJOR_VER_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SYSID_BUILD_VER_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_STAT_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SRB_STAT_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Hardware without DMA is not supported\0A\00", align 1
@KVASER_PCIEFD_SYSID_BUSFREQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SYSID_CANFREQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_LOOP_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*)* @kvaser_pciefd_setup_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_setup_board(%struct.kvaser_pciefd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_pciefd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %3, align 8
  %9 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %10 = call i32 @kvaser_pciefd_read_cfg(%struct.kvaser_pciefd* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %2, align 4
  br label %135

15:                                               ; preds = %1
  %16 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %17 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @KVASER_PCIEFD_SYSID_VERSION_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i8* @ioread32(i64 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @KVASER_PCIEFD_SYSID_NRCHAN_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = and i32 %25, 255
  store i32 %26, i32* %7, align 4
  %27 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %28 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %15
  %33 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %34 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %33, i32 0, i32 5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %38 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %135

44:                                               ; preds = %15
  %45 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %46 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @KVASER_PCIEFD_MAX_CAN_CHANNELS, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @KVASER_PCIEFD_MAX_CAN_CHANNELS, align 4
  %52 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %53 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %56 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KVASER_PCIEFD_SYSID_BUILD_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i8* @ioread32(i64 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %63 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @KVASER_PCIEFD_SYSID_MAJOR_VER_SHIFT, align 4
  %68 = ashr i32 %66, %67
  %69 = and i32 %68, 255
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, 255
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @KVASER_PCIEFD_SYSID_BUILD_VER_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = and i32 %74, 32767
  %76 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %71, i32 %75)
  %77 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %78 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @KVASER_PCIEFD_SRB_STAT_REG, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i8* @ioread32(i64 %81)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @KVASER_PCIEFD_SRB_STAT_DMA, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %54
  %89 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %90 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %89, i32 0, i32 5
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %135

96:                                               ; preds = %54
  %97 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %98 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @KVASER_PCIEFD_SYSID_BUSFREQ_REG, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i8* @ioread32(i64 %101)
  %103 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %104 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %106 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @KVASER_PCIEFD_SYSID_CANFREQ_REG, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i8* @ioread32(i64 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %113 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %115 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 1000000
  %118 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %119 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %121 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %96
  %125 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %126 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %96
  %128 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %129 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @KVASER_PCIEFD_LOOP_REG, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @iowrite32(i32 0, i64 %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %127, %88, %32, %13
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @kvaser_pciefd_read_cfg(%struct.kvaser_pciefd*) #1

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
