; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_cl_bus_dev_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus-fixup.c_mei_cl_bus_dev_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_fixup = type { i32 (%struct.mei_cl_device.0*)*, i32 }
%struct.mei_cl_device.0 = type opaque
%struct.mei_cl_device = type { i32 }

@mei_fixups = common dso_local global %struct.mei_fixup* null, align 8
@MEI_UUID_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_cl_bus_dev_fixup(%struct.mei_cl_device* %0) #0 {
  %2 = alloca %struct.mei_cl_device*, align 8
  %3 = alloca %struct.mei_fixup*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.mei_cl_device* %0, %struct.mei_cl_device** %2, align 8
  %6 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %7 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @mei_me_cl_uuid(i32 %8)
  store i32* %9, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.mei_fixup*, %struct.mei_fixup** @mei_fixups, align 8
  %13 = call i64 @ARRAY_SIZE(%struct.mei_fixup* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = load %struct.mei_fixup*, %struct.mei_fixup** @mei_fixups, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.mei_fixup, %struct.mei_fixup* %16, i64 %17
  store %struct.mei_fixup* %18, %struct.mei_fixup** %3, align 8
  %19 = load %struct.mei_fixup*, %struct.mei_fixup** %3, align 8
  %20 = getelementptr inbounds %struct.mei_fixup, %struct.mei_fixup* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MEI_UUID_ANY, align 4
  %23 = call i64 @uuid_le_cmp(i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %15
  %26 = load %struct.mei_fixup*, %struct.mei_fixup** %3, align 8
  %27 = getelementptr inbounds %struct.mei_fixup, %struct.mei_fixup* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @uuid_le_cmp(i32 %28, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25, %15
  %34 = load %struct.mei_fixup*, %struct.mei_fixup** %3, align 8
  %35 = getelementptr inbounds %struct.mei_fixup, %struct.mei_fixup* %34, i32 0, i32 0
  %36 = load i32 (%struct.mei_cl_device.0*)*, i32 (%struct.mei_cl_device.0*)** %35, align 8
  %37 = load %struct.mei_cl_device*, %struct.mei_cl_device** %2, align 8
  %38 = bitcast %struct.mei_cl_device* %37 to %struct.mei_cl_device.0*
  %39 = call i32 %36(%struct.mei_cl_device.0* %38)
  br label %40

40:                                               ; preds = %33, %25
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %10

44:                                               ; preds = %10
  ret void
}

declare dso_local i32* @mei_me_cl_uuid(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mei_fixup*) #1

declare dso_local i64 @uuid_le_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
