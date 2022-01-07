; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_dps0_insert_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_dps0_insert_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.docg3 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@DOC_LAYOUT_DPS_KEY_LENGTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@DOC_DPS0_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @dps0_insert_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dps0_insert_key(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.docg3*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %14 = call %struct.docg3* @sysfs_dev2docg3(%struct.device* %12, %struct.device_attribute* %13)
  store %struct.docg3* %14, %struct.docg3** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @DOC_LAYOUT_DPS_KEY_LENGTH, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.docg3*, %struct.docg3** %10, align 8
  %23 = getelementptr inbounds %struct.docg3, %struct.docg3* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.docg3*, %struct.docg3** %10, align 8
  %28 = load %struct.docg3*, %struct.docg3** %10, align 8
  %29 = getelementptr inbounds %struct.docg3, %struct.docg3* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @doc_set_device_id(%struct.docg3* %27, i32 %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %46, %21
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @DOC_LAYOUT_DPS_KEY_LENGTH, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.docg3*, %struct.docg3** %10, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i32, i32* @DOC_DPS0_KEY, align 4
  %45 = call i32 @doc_writeb(%struct.docg3* %38, i8 signext %43, i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %32

49:                                               ; preds = %32
  %50 = load %struct.docg3*, %struct.docg3** %10, align 8
  %51 = call i32 @doc_set_device_id(%struct.docg3* %50, i32 0)
  %52 = load %struct.docg3*, %struct.docg3** %10, align 8
  %53 = getelementptr inbounds %struct.docg3, %struct.docg3* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %49, %18
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local %struct.docg3* @sysfs_dev2docg3(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @doc_set_device_id(%struct.docg3*, i32) #1

declare dso_local i32 @doc_writeb(%struct.docg3*, i8 signext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
