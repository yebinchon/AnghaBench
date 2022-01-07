; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block2mtd_dev = type { i32, %struct.TYPE_4__, i32, %struct.block_device* }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, %struct.block2mtd_dev*, i32, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error: cannot open device %s\0A\00", align 1
@MTD_BLOCK_MAJOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"attempting to use an MTD device as a block device\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"erasesize must be a divisor of device size\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"block2mtd: %s\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MTD_RAM = common dso_local global i32 0, align 4
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@block2mtd_erase = common dso_local global i32 0, align 4
@block2mtd_write = common dso_local global i32 0, align 4
@block2mtd_sync = common dso_local global i32 0, align 4
@block2mtd_read = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@blkmtd_device_list = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"mtd%d: [%s] erase_size = %dKiB [%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"block2mtd: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block2mtd_dev* (i8*, i32, i32)* @add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block2mtd_dev* @add_device(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.block2mtd_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca %struct.block2mtd_dev*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @FMODE_READ, align 4
  %15 = load i32, i32* @FMODE_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FMODE_EXCL, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.block2mtd_dev* null, %struct.block2mtd_dev** %4, align 8
  br label %205

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.block2mtd_dev* @kzalloc(i32 96, i32 %23)
  store %struct.block2mtd_dev* %24, %struct.block2mtd_dev** %11, align 8
  %25 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %26 = icmp ne %struct.block2mtd_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.block2mtd_dev* null, %struct.block2mtd_dev** %4, align 8
  br label %205

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %32 = call %struct.block_device* @blkdev_get_by_path(i8* %29, i32 %30, %struct.block2mtd_dev* %31)
  store %struct.block_device* %32, %struct.block_device** %10, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %60, %28
  %34 = load %struct.block_device*, %struct.block_device** %10, align 8
  %35 = call i64 @IS_ERR(%struct.block_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ false, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %63

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @msleep(i32 1000)
  br label %48

48:                                               ; preds = %46, %43
  %49 = call i32 (...) @wait_for_device_probe()
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @name_to_dev_t(i8* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %59 = call %struct.block_device* @blkdev_get_by_dev(i32 %56, i32 %57, %struct.block2mtd_dev* %58)
  store %struct.block_device* %59, %struct.block_device** %10, align 8
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %33

63:                                               ; preds = %41
  %64 = load %struct.block_device*, %struct.block_device** %10, align 8
  %65 = call i64 @IS_ERR(%struct.block_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %68)
  br label %202

70:                                               ; preds = %63
  %71 = load %struct.block_device*, %struct.block_device** %10, align 8
  %72 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %73 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %72, i32 0, i32 3
  store %struct.block_device* %71, %struct.block_device** %73, align 8
  %74 = load %struct.block_device*, %struct.block_device** %10, align 8
  %75 = getelementptr inbounds %struct.block_device, %struct.block_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @MAJOR(i32 %76)
  %78 = load i64, i64* @MTD_BLOCK_MAJOR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %202

82:                                               ; preds = %70
  %83 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %84 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %83, i32 0, i32 3
  %85 = load %struct.block_device*, %struct.block_device** %84, align 8
  %86 = getelementptr inbounds %struct.block_device, %struct.block_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = srem i64 %90, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %202

97:                                               ; preds = %82
  %98 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %99 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %98, i32 0, i32 0
  %100 = call i32 @mutex_init(i32* %99)
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = load i8*, i8** %5, align 8
  %103 = call i8* @kasprintf(i32 %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  store i8* %103, i8** %12, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  br label %198

107:                                              ; preds = %97
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %110 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %113 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %112, i32 0, i32 3
  %114 = load %struct.block_device*, %struct.block_device** %113, align 8
  %115 = getelementptr inbounds %struct.block_device, %struct.block_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PAGE_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %122 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %126 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %129 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  store i32 1, i32* %130, align 8
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %133 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 13
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @MTD_RAM, align 4
  %136 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %137 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 12
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @MTD_CAP_RAM, align 4
  %140 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %141 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 11
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @block2mtd_erase, align 4
  %144 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %145 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 10
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @block2mtd_write, align 4
  %148 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %149 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 9
  store i32 %147, i32* %150, align 8
  %151 = load i32, i32* @block2mtd_sync, align 4
  %152 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %153 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 8
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @block2mtd_read, align 4
  %156 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %157 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 7
  store i32 %155, i32* %158, align 8
  %159 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %160 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %161 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 6
  store %struct.block2mtd_dev* %159, %struct.block2mtd_dev** %162, align 8
  %163 = load i32, i32* @THIS_MODULE, align 4
  %164 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %165 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  store i32 %163, i32* %166, align 8
  %167 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %168 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %167, i32 0, i32 1
  %169 = call i64 @mtd_device_register(%struct.TYPE_4__* %168, i32* null, i32 0)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %107
  br label %198

172:                                              ; preds = %107
  %173 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %174 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %173, i32 0, i32 2
  %175 = call i32 @list_add(i32* %174, i32* @blkmtd_device_list)
  %176 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %177 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %181 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %188 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 10
  %192 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %193 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %179, i8* %186, i32 %191, i32 %195)
  %197 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  store %struct.block2mtd_dev* %197, %struct.block2mtd_dev** %4, align 8
  br label %205

198:                                              ; preds = %171, %106
  %199 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %200 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %199, i32 0, i32 0
  %201 = call i32 @mutex_destroy(i32* %200)
  br label %202

202:                                              ; preds = %198, %95, %80, %67
  %203 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %11, align 8
  %204 = call i32 @block2mtd_free_device(%struct.block2mtd_dev* %203)
  store %struct.block2mtd_dev* null, %struct.block2mtd_dev** %4, align 8
  br label %205

205:                                              ; preds = %202, %172, %27, %21
  %206 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %4, align 8
  ret %struct.block2mtd_dev* %206
}

declare dso_local %struct.block2mtd_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.block_device* @blkdev_get_by_path(i8*, i32, %struct.block2mtd_dev*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wait_for_device_probe(...) #1

declare dso_local i32 @name_to_dev_t(i8*) #1

declare dso_local %struct.block_device* @blkdev_get_by_dev(i32, i32, %struct.block2mtd_dev*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i64 @mtd_device_register(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @block2mtd_free_device(%struct.block2mtd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
