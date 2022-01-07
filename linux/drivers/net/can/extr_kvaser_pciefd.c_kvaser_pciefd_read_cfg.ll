; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_read_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_read_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvaser_pciefd_cfg_img = type { i32 }

@KVASER_PCIEFD_FLASH_RES_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_CFG_IMG_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVASER_PCIEFD_FLASH_ID_EPCS16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Flash id is 0x%x instead of expected EPCS16 (0x%x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KVASER_PCIEFD_FLASH_STATUS_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unexpected WIP bit set in flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*)* @kvaser_pciefd_read_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_read_cfg(%struct.kvaser_pciefd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_pciefd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_pciefd_cfg_img*, align 8
  %6 = alloca [4 x i32], align 16
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %3, align 8
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* @KVASER_PCIEFD_FLASH_RES_CMD, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %17 = call i32 @kvaser_pciefd_spi_cmd(%struct.kvaser_pciefd* %12, i32* %13, i32 %15, i32* %16, i32 1)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %89

23:                                               ; preds = %1
  %24 = load i32, i32* @KVASER_PCIEFD_CFG_IMG_SZ, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.kvaser_pciefd_cfg_img* @kmalloc(i32 %24, i32 %25)
  store %struct.kvaser_pciefd_cfg_img* %26, %struct.kvaser_pciefd_cfg_img** %5, align 8
  %27 = load %struct.kvaser_pciefd_cfg_img*, %struct.kvaser_pciefd_cfg_img** %5, align 8
  %28 = icmp ne %struct.kvaser_pciefd_cfg_img* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %89

32:                                               ; preds = %23
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = load i32, i32* @KVASER_PCIEFD_FLASH_ID_EPCS16, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %39 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = load i32, i32* @KVASER_PCIEFD_FLASH_ID_EPCS16, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %85

48:                                               ; preds = %32
  %49 = load i32, i32* @KVASER_PCIEFD_FLASH_STATUS_CMD, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %54 = call i32 @kvaser_pciefd_spi_cmd(%struct.kvaser_pciefd* %51, i32* %52, i32 1, i32* %53, i32 1)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %85

58:                                               ; preds = %48
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  %66 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %67 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %85

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %74 = load %struct.kvaser_pciefd_cfg_img*, %struct.kvaser_pciefd_cfg_img** %5, align 8
  %75 = call i32 @kvaser_pciefd_cfg_read_and_verify(%struct.kvaser_pciefd* %73, %struct.kvaser_pciefd_cfg_img* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %83 = load %struct.kvaser_pciefd_cfg_img*, %struct.kvaser_pciefd_cfg_img** %5, align 8
  %84 = call i32 @kvaser_pciefd_cfg_read_params(%struct.kvaser_pciefd* %82, %struct.kvaser_pciefd_cfg_img* %83)
  br label %85

85:                                               ; preds = %81, %78, %63, %57, %37
  %86 = load %struct.kvaser_pciefd_cfg_img*, %struct.kvaser_pciefd_cfg_img** %5, align 8
  %87 = call i32 @kfree(%struct.kvaser_pciefd_cfg_img* %86)
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %29, %20
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @kvaser_pciefd_spi_cmd(%struct.kvaser_pciefd*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.kvaser_pciefd_cfg_img* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kvaser_pciefd_cfg_read_and_verify(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_cfg_img*) #1

declare dso_local i32 @kvaser_pciefd_cfg_read_params(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_cfg_img*) #1

declare dso_local i32 @kfree(%struct.kvaser_pciefd_cfg_img*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
