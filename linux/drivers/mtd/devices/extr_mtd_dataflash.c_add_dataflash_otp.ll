; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_add_dataflash_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_add_dataflash_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dataflash = type { i32, i32, i64, %struct.mtd_info, %struct.spi_device*, i32 }
%struct.mtd_info = type { i32, i32, i32, %struct.TYPE_6__, %struct.dataflash*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.flash_platform_data = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"spi%d.%d-%s\00", align 1
@MTD_DATAFLASH = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@dataflash_erase = common dso_local global i32 0, align 4
@dataflash_read = common dso_local global i32 0, align 4
@dataflash_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s (%lld KBytes) pagesize %d bytes%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i8*, i32, i32, i32, i8)* @add_dataflash_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dataflash_otp(%struct.spi_device* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8 signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca %struct.dataflash*, align 8
  %15 = alloca %struct.mtd_info*, align 8
  %16 = alloca %struct.flash_platform_data*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8 %5, i8* %13, align 1
  %19 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 1
  %21 = call %struct.flash_platform_data* @dev_get_platdata(%struct.TYPE_7__* %20)
  store %struct.flash_platform_data* %21, %struct.flash_platform_data** %16, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.dataflash* @kzalloc(i32 96, i32 %22)
  store %struct.dataflash* %23, %struct.dataflash** %14, align 8
  %24 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %25 = icmp ne %struct.dataflash* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %166

29:                                               ; preds = %6
  %30 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %31 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %30, i32 0, i32 5
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %34 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %35 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %34, i32 0, i32 4
  store %struct.spi_device* %33, %struct.spi_device** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %38 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %41 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %43 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %46 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @sprintf(i64 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52, i8* %53)
  %55 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %56 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %55, i32 0, i32 3
  store %struct.mtd_info* %56, %struct.mtd_info** %15, align 8
  %57 = load %struct.flash_platform_data*, %struct.flash_platform_data** %16, align 8
  %58 = icmp ne %struct.flash_platform_data* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %29
  %60 = load %struct.flash_platform_data*, %struct.flash_platform_data** %16, align 8
  %61 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.flash_platform_data*, %struct.flash_platform_data** %16, align 8
  %66 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  br label %72

68:                                               ; preds = %59, %29
  %69 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %70 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i64 [ %67, %64 ], [ %71, %68 ]
  %74 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 10
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @MTD_DATAFLASH, align 4
  %88 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @MTD_WRITEABLE, align 4
  %91 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %92 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @dataflash_erase, align 4
  %94 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %95 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @dataflash_read, align 4
  %97 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @dataflash_write, align 4
  %100 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %101 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %103 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %104 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %103, i32 0, i32 4
  store %struct.dataflash* %102, %struct.dataflash** %104, align 8
  %105 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %106 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %105, i32 0, i32 1
  %107 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %108 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %109, align 8
  %110 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %111 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mtd_set_of_node(%struct.mtd_info* %110, i32 %114)
  %116 = load i8, i8* %13, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sge i32 %117, 99
  br i1 %118, label %119, label %123

119:                                              ; preds = %72
  %120 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %121 = load i8, i8* %13, align 1
  %122 = call i8* @otp_setup(%struct.mtd_info* %120, i8 signext %121)
  store i8* %122, i8** %17, align 8
  br label %123

123:                                              ; preds = %119, %72
  %124 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %125 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %124, i32 0, i32 1
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %128 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1023
  %131 = ashr i32 %130, 10
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %11, align 4
  %134 = load i8*, i8** %17, align 8
  %135 = call i32 @dev_info(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %126, i64 %132, i32 %133, i8* %134)
  %136 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %137 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %138 = call i32 @spi_set_drvdata(%struct.spi_device* %136, %struct.dataflash* %137)
  %139 = load %struct.mtd_info*, %struct.mtd_info** %15, align 8
  %140 = load %struct.flash_platform_data*, %struct.flash_platform_data** %16, align 8
  %141 = icmp ne %struct.flash_platform_data* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %123
  %143 = load %struct.flash_platform_data*, %struct.flash_platform_data** %16, align 8
  %144 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  br label %147

146:                                              ; preds = %123
  br label %147

147:                                              ; preds = %146, %142
  %148 = phi i32* [ %145, %142 ], [ null, %146 ]
  %149 = load %struct.flash_platform_data*, %struct.flash_platform_data** %16, align 8
  %150 = icmp ne %struct.flash_platform_data* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load %struct.flash_platform_data*, %struct.flash_platform_data** %16, align 8
  %153 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  br label %156

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i32 [ %154, %151 ], [ 0, %155 ]
  %158 = call i32 @mtd_device_register(%struct.mtd_info* %139, i32* %148, i32 %157)
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  store i32 0, i32* %7, align 4
  br label %166

162:                                              ; preds = %156
  %163 = load %struct.dataflash*, %struct.dataflash** %14, align 8
  %164 = call i32 @kfree(%struct.dataflash* %163)
  %165 = load i32, i32* %18, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %161, %26
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local %struct.flash_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.dataflash* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sprintf(i64, i8*, i32, i32, i8*) #1

declare dso_local i32 @mtd_set_of_node(%struct.mtd_info*, i32) #1

declare dso_local i8* @otp_setup(%struct.mtd_info*, i8 signext) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i8*, i64, i32, i8*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.dataflash*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.dataflash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
