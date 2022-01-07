; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_socrates_nand.c_socrates_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_socrates_nand.c_socrates_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.socrates_nand_host = type { i32*, %struct.TYPE_10__*, %struct.nand_chip }
%struct.nand_chip = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mtd_info = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"socrates_nand\00", align 1
@socrates_nand_cmd_ctrl = common dso_local global i32 0, align 4
@socrates_nand_read_byte = common dso_local global i32 0, align 4
@socrates_nand_write_buf = common dso_local global i32 0, align 4
@socrates_nand_read_buf = common dso_local global i32 0, align 4
@socrates_nand_device_ready = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @socrates_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socrates_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.socrates_nand_host*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.socrates_nand_host* @devm_kzalloc(%struct.TYPE_10__* %9, i32 48, i32 %10)
  store %struct.socrates_nand_host* %11, %struct.socrates_nand_host** %4, align 8
  %12 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %13 = icmp ne %struct.socrates_nand_host* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %116

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @of_iomap(i32 %21, i32 0)
  %23 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %24 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %26 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(%struct.TYPE_10__* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %116

35:                                               ; preds = %17
  %36 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %37 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %36, i32 0, i32 2
  store %struct.nand_chip* %37, %struct.nand_chip** %6, align 8
  %38 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %39 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %38)
  store %struct.mtd_info* %39, %struct.mtd_info** %5, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %43 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %42, i32 0, i32 1
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %43, align 8
  %44 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %45 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %46 = call i32 @nand_set_controller_data(%struct.nand_chip* %44, %struct.socrates_nand_host* %45)
  %47 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nand_set_flash_node(%struct.nand_chip* %47, i32 %51)
  %53 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %59, align 8
  %60 = load i32, i32* @socrates_nand_cmd_ctrl, align 4
  %61 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @socrates_nand_read_byte, align 4
  %65 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @socrates_nand_write_buf, align 4
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @socrates_nand_read_buf, align 4
  %73 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* @socrates_nand_device_ready, align 4
  %77 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %78 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @NAND_ECC_SOFT, align 4
  %81 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %85 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 20, i32* %90, align 4
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %94 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %92, %struct.socrates_nand_host* %93)
  %95 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %96 = call i32 @nand_scan(%struct.nand_chip* %95, i32 1)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %35
  br label %110

100:                                              ; preds = %35
  %101 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %102 = call i32 @mtd_device_register(%struct.mtd_info* %101, i32* null, i32 0)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %116

107:                                              ; preds = %100
  %108 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %109 = call i32 @nand_release(%struct.nand_chip* %108)
  br label %110

110:                                              ; preds = %107, %99
  %111 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %4, align 8
  %112 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @iounmap(i32* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %105, %29, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.socrates_nand_host* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32* @of_iomap(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_set_controller_data(%struct.nand_chip*, %struct.socrates_nand_host*) #1

declare dso_local i32 @nand_set_flash_node(%struct.nand_chip*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.socrates_nand_host*) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_release(%struct.nand_chip*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
