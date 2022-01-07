; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.memcard = type { i64, i64, i64, i64, i64, %struct.memcard*, %struct.memcard*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vmu_queryblocks = common dso_local global i32 0, align 4
@MAPLE_FUNC_MEMCARD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"VMU at (%d, %d) is busy\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MAPLE_COMMAND_GETMINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not lock VMU at (%d, %d) error is 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.maple_device*)* @vmu_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmu_connect(%struct.maple_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.memcard*, align 8
  %9 = alloca i32, align 4
  store %struct.maple_device* %0, %struct.maple_device** %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %11 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @be32_to_cpu(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @hweight_long(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %18 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be32_to_cpu(i32 %25)
  store i64 %26, i64* %5, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.memcard* @kmalloc(i32 64, i32 %27)
  store %struct.memcard* %28, %struct.memcard** %8, align 8
  %29 = load %struct.memcard*, %struct.memcard** %8, align 8
  %30 = icmp ne %struct.memcard* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %171

34:                                               ; preds = %1
  %35 = load i64, i64* %5, align 8
  %36 = lshr i64 %35, 24
  %37 = and i64 %36, 255
  %38 = add i64 %37, 1
  %39 = load %struct.memcard*, %struct.memcard** %8, align 8
  %40 = getelementptr inbounds %struct.memcard, %struct.memcard* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = lshr i64 %41, 16
  %43 = and i64 %42, 255
  %44 = add i64 %43, 1
  %45 = shl i64 %44, 5
  %46 = load %struct.memcard*, %struct.memcard** %8, align 8
  %47 = getelementptr inbounds %struct.memcard, %struct.memcard* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %5, align 8
  %49 = lshr i64 %48, 12
  %50 = and i64 %49, 15
  %51 = load %struct.memcard*, %struct.memcard** %8, align 8
  %52 = getelementptr inbounds %struct.memcard, %struct.memcard* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = lshr i64 %53, 8
  %55 = and i64 %54, 15
  %56 = load %struct.memcard*, %struct.memcard** %8, align 8
  %57 = getelementptr inbounds %struct.memcard, %struct.memcard* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = lshr i64 %58, 7
  %60 = and i64 %59, 1
  %61 = load %struct.memcard*, %struct.memcard** %8, align 8
  %62 = getelementptr inbounds %struct.memcard, %struct.memcard* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.memcard*, %struct.memcard** %8, align 8
  %64 = getelementptr inbounds %struct.memcard, %struct.memcard* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.memcard*, %struct.memcard** %8, align 8
  %66 = getelementptr inbounds %struct.memcard, %struct.memcard* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kmalloc_array(i64 %67, i32 4, i32 %68)
  %70 = bitcast i8* %69 to %struct.memcard*
  %71 = load %struct.memcard*, %struct.memcard** %8, align 8
  %72 = getelementptr inbounds %struct.memcard, %struct.memcard* %71, i32 0, i32 5
  store %struct.memcard* %70, %struct.memcard** %72, align 8
  %73 = load %struct.memcard*, %struct.memcard** %8, align 8
  %74 = getelementptr inbounds %struct.memcard, %struct.memcard* %73, i32 0, i32 5
  %75 = load %struct.memcard*, %struct.memcard** %74, align 8
  %76 = icmp ne %struct.memcard* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %34
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %168

80:                                               ; preds = %34
  %81 = load %struct.memcard*, %struct.memcard** %8, align 8
  %82 = getelementptr inbounds %struct.memcard, %struct.memcard* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kmalloc_array(i64 %83, i32 4, i32 %84)
  %86 = bitcast i8* %85 to %struct.memcard*
  %87 = load %struct.memcard*, %struct.memcard** %8, align 8
  %88 = getelementptr inbounds %struct.memcard, %struct.memcard* %87, i32 0, i32 6
  store %struct.memcard* %86, %struct.memcard** %88, align 8
  %89 = load %struct.memcard*, %struct.memcard** %8, align 8
  %90 = getelementptr inbounds %struct.memcard, %struct.memcard* %89, i32 0, i32 6
  %91 = load %struct.memcard*, %struct.memcard** %90, align 8
  %92 = icmp ne %struct.memcard* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %163

96:                                               ; preds = %80
  %97 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %98 = load %struct.memcard*, %struct.memcard** %8, align 8
  %99 = call i32 @maple_set_drvdata(%struct.maple_device* %97, %struct.memcard* %98)
  %100 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %101 = load i32, i32* @vmu_queryblocks, align 4
  %102 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %103 = call i32 @maple_getcond_callback(%struct.maple_device* %100, i32 %101, i32 0, i32 %102)
  %104 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %105 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %104, i32 0, i32 3
  %106 = call i32 @atomic_read(i32* %105)
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %136

108:                                              ; preds = %96
  %109 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %110 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %113 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %112, i32 0, i32 3
  %114 = call i32 @atomic_read(i32* %113)
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* @HZ, align 4
  %118 = call i32 @wait_event_interruptible_timeout(i32 %111, i32 %116, i32 %117)
  %119 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %120 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %119, i32 0, i32 3
  %121 = call i32 @atomic_read(i32* %120)
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %135

123:                                              ; preds = %108
  %124 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %125 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %124, i32 0, i32 2
  %126 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %127 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %130 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_notice(i32* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %131)
  %133 = load i32, i32* @EAGAIN, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %158

135:                                              ; preds = %108
  br label %136

136:                                              ; preds = %135, %96
  %137 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %138 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %137, i32 0, i32 3
  %139 = call i32 @atomic_set(i32* %138, i32 1)
  %140 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %141 = load i32, i32* @MAPLE_FUNC_MEMCARD, align 4
  %142 = load i32, i32* @MAPLE_COMMAND_GETMINFO, align 4
  %143 = call i32 @maple_add_packet(%struct.maple_device* %140, i32 %141, i32 %142, i32 2, i32* %9)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %136
  %147 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %148 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %147, i32 0, i32 2
  %149 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %150 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %153 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @dev_err(i32* %148, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %154, i32 %155)
  br label %163

157:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %173

158:                                              ; preds = %123
  %159 = load %struct.memcard*, %struct.memcard** %8, align 8
  %160 = getelementptr inbounds %struct.memcard, %struct.memcard* %159, i32 0, i32 6
  %161 = load %struct.memcard*, %struct.memcard** %160, align 8
  %162 = call i32 @kfree(%struct.memcard* %161)
  br label %163

163:                                              ; preds = %158, %146, %93
  %164 = load %struct.memcard*, %struct.memcard** %8, align 8
  %165 = getelementptr inbounds %struct.memcard, %struct.memcard* %164, i32 0, i32 5
  %166 = load %struct.memcard*, %struct.memcard** %165, align 8
  %167 = call i32 @kfree(%struct.memcard* %166)
  br label %168

168:                                              ; preds = %163, %77
  %169 = load %struct.memcard*, %struct.memcard** %8, align 8
  %170 = call i32 @kfree(%struct.memcard* %169)
  br label %171

171:                                              ; preds = %168, %31
  %172 = load i32, i32* %7, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %171, %157
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @hweight_long(i64) #1

declare dso_local %struct.memcard* @kmalloc(i32, i32) #1

declare dso_local i8* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @maple_set_drvdata(%struct.maple_device*, %struct.memcard*) #1

declare dso_local i32 @maple_getcond_callback(%struct.maple_device*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @maple_add_packet(%struct.maple_device*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.memcard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
