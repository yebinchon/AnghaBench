; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_dps0_is_key_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_dps0_is_key_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.docg3 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DOC_DPS0_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@DOC_DPS_KEY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dps0_is_key_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps0_is_key_locked(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.docg3*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %11 = call %struct.docg3* @sysfs_dev2docg3(%struct.device* %9, %struct.device_attribute* %10)
  store %struct.docg3* %11, %struct.docg3** %7, align 8
  %12 = load %struct.docg3*, %struct.docg3** %7, align 8
  %13 = getelementptr inbounds %struct.docg3, %struct.docg3* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.docg3*, %struct.docg3** %7, align 8
  %18 = load %struct.docg3*, %struct.docg3** %7, align 8
  %19 = getelementptr inbounds %struct.docg3, %struct.docg3* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @doc_set_device_id(%struct.docg3* %17, i32 %20)
  %22 = load %struct.docg3*, %struct.docg3** %7, align 8
  %23 = load i32, i32* @DOC_DPS0_STATUS, align 4
  %24 = call i32 @doc_register_readb(%struct.docg3* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.docg3*, %struct.docg3** %7, align 8
  %26 = call i32 @doc_set_device_id(%struct.docg3* %25, i32 0)
  %27 = load %struct.docg3*, %struct.docg3** %7, align 8
  %28 = getelementptr inbounds %struct.docg3, %struct.docg3* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DOC_DPS_KEY_OK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret i32 %39
}

declare dso_local %struct.docg3* @sysfs_dev2docg3(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @doc_set_device_id(%struct.docg3*, i32) #1

declare dso_local i32 @doc_register_readb(%struct.docg3*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
