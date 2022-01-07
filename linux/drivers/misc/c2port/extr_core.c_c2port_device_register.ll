; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/c2port/extr_core.c_c2port_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.c2port_device = type { i32, i32, i64, i64, i32, %struct.c2port_ops*, i32 }
%struct.c2port_ops = type { i32, i32, i32 (%struct.c2port_device.0*, i32)*, i32, i32, i32, i32 }
%struct.c2port_device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@c2port_idr_lock = common dso_local global i32 0, align 4
@c2port_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@bin_attr_flash_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@c2port_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"c2port%d\00", align 1
@C2PORT_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"C2 port %s added\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"%s flash has %d blocks x %d bytes (%d bytes total)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.c2port_device* @c2port_device_register(i8* %0, %struct.c2port_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.c2port_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.c2port_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.c2port_device*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.c2port_ops* %1, %struct.c2port_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %11 = icmp ne %struct.c2port_ops* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %61, label %16

16:                                               ; preds = %3
  %17 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %18 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %17, i32 0, i32 2
  %19 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.c2port_device.0*, i32)* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %61, label %25

25:                                               ; preds = %16
  %26 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %27 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %25
  %35 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %36 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %34
  %44 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %45 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %54 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52, %43, %34, %25, %16, %3
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.c2port_device* @ERR_PTR(i32 %63)
  store %struct.c2port_device* %64, %struct.c2port_device** %4, align 8
  br label %183

65:                                               ; preds = %52
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.c2port_device* @kmalloc(i32 48, i32 %66)
  store %struct.c2port_device* %67, %struct.c2port_device** %8, align 8
  %68 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %69 = icmp ne %struct.c2port_device* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  %77 = call %struct.c2port_device* @ERR_PTR(i32 %76)
  store %struct.c2port_device* %77, %struct.c2port_device** %4, align 8
  br label %183

78:                                               ; preds = %65
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @idr_preload(i32 %79)
  %81 = call i32 @spin_lock_irq(i32* @c2port_idr_lock)
  %82 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %83 = load i32, i32* @GFP_NOWAIT, align 4
  %84 = call i32 @idr_alloc(i32* @c2port_idr, %struct.c2port_device* %82, i32 0, i32 0, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = call i32 @spin_unlock_irq(i32* @c2port_idr_lock)
  %86 = call i32 (...) @idr_preload_end()
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %178

90:                                               ; preds = %78
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %93 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %95 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %98 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bin_attr_flash_data, i32 0, i32 0), align 4
  %101 = load i32, i32* @c2port_class, align 4
  %102 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %103 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %104 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @device_create(i32 %101, i32* null, i32 0, %struct.c2port_device* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %108 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %110 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %90
  %115 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %116 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %9, align 4
  br label %171

119:                                              ; preds = %90
  %120 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %121 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %124 = call i32 @dev_set_drvdata(i32 %122, %struct.c2port_device* %123)
  %125 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %126 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* @C2PORT_NAME_LEN, align 4
  %130 = call i32 @strncpy(i32 %127, i8* %128, i32 %129)
  %131 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %132 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %133 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %132, i32 0, i32 5
  store %struct.c2port_ops* %131, %struct.c2port_ops** %133, align 8
  %134 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %135 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %134, i32 0, i32 4
  %136 = call i32 @mutex_init(i32* %135)
  %137 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %138 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %140 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %142 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %141, i32 0, i32 2
  %143 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %142, align 8
  %144 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %145 = bitcast %struct.c2port_device* %144 to %struct.c2port_device.0*
  %146 = call i32 %143(%struct.c2port_device.0* %145, i32 0)
  %147 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %148 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  %152 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %153 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %5, align 8
  %156 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %157 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %160 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %163 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.c2port_ops*, %struct.c2port_ops** %6, align 8
  %166 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %164, %167
  %169 = call i32 (i32, i8*, i8*, ...) @dev_info(i32 %154, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %155, i32 %158, i32 %161, i32 %168)
  %170 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  store %struct.c2port_device* %170, %struct.c2port_device** %4, align 8
  br label %183

171:                                              ; preds = %114
  %172 = call i32 @spin_lock_irq(i32* @c2port_idr_lock)
  %173 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %174 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @idr_remove(i32* @c2port_idr, i32 %175)
  %177 = call i32 @spin_unlock_irq(i32* @c2port_idr_lock)
  br label %178

178:                                              ; preds = %171, %89
  %179 = load %struct.c2port_device*, %struct.c2port_device** %8, align 8
  %180 = call i32 @kfree(%struct.c2port_device* %179)
  %181 = load i32, i32* %9, align 4
  %182 = call %struct.c2port_device* @ERR_PTR(i32 %181)
  store %struct.c2port_device* %182, %struct.c2port_device** %4, align 8
  br label %183

183:                                              ; preds = %178, %119, %74, %61
  %184 = load %struct.c2port_device*, %struct.c2port_device** %4, align 8
  ret %struct.c2port_device* %184
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.c2port_device* @ERR_PTR(i32) #1

declare dso_local %struct.c2port_device* @kmalloc(i32, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.c2port_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @device_create(i32, i32*, i32, %struct.c2port_device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.c2port_device*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, ...) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.c2port_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
