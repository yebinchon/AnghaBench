; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c___mei_cl_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c___mei_cl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i64, i64, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i64, i64, i32 }
%struct.mei_cl_cb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MEI_DEV_ENABLED = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@MEI_WRITE_COMPLETE = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@MEI_FOP_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEI_CL_IO_TX_INTERNAL = common dso_local global i32 0, align 4
@MEI_CL_IO_TX_BLOCKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mei_cl_send(%struct.mei_cl* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mei_cl*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mei_device*, align 8
  %11 = alloca %struct.mei_cl_cb*, align 8
  %12 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %14 = icmp ne %struct.mei_cl* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %17 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %16, i32 0, i32 4
  %18 = load %struct.mei_device*, %struct.mei_device** %17, align 8
  %19 = icmp ne %struct.mei_device* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %4
  %22 = phi i1 [ true, %4 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %163

29:                                               ; preds = %21
  %30 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %31 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %30, i32 0, i32 4
  %32 = load %struct.mei_device*, %struct.mei_device** %31, align 8
  store %struct.mei_device* %32, %struct.mei_device** %10, align 8
  %33 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %34 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %37 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MEI_DEV_ENABLED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %158

44:                                               ; preds = %29
  %45 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %46 = call i32 @mei_cl_is_connected(%struct.mei_cl* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %158

51:                                               ; preds = %44
  %52 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %53 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mei_me_cl_is_active(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOTTY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %158

60:                                               ; preds = %51
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %63 = call i64 @mei_cl_mtu(%struct.mei_cl* %62)
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EFBIG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %158

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %118, %68
  %70 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %71 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %74 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %69
  %78 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %79 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %82 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %85 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MEI_WRITE_COMPLETE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %77
  %90 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %91 = call i32 @mei_cl_is_connected(%struct.mei_cl* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %89, %77
  %95 = phi i1 [ true, %77 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @wait_event_interruptible(i32 %83, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %99 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %98, i32 0, i32 2
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load i32, i32* @current, align 4
  %105 = call i64 @signal_pending(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @EINTR, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %158

111:                                              ; preds = %94
  %112 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %113 = call i32 @mei_cl_is_connected(%struct.mei_cl* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %158

118:                                              ; preds = %111
  br label %69

119:                                              ; preds = %69
  %120 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i32, i32* @MEI_FOP_WRITE, align 4
  %123 = call %struct.mei_cl_cb* @mei_cl_alloc_cb(%struct.mei_cl* %120, i64 %121, i32 %122, i32* null)
  store %struct.mei_cl_cb* %123, %struct.mei_cl_cb** %11, align 8
  %124 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %11, align 8
  %125 = icmp ne %struct.mei_cl_cb* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %12, align 4
  br label %158

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @MEI_CL_IO_TX_INTERNAL, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %11, align 8
  %138 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @MEI_CL_IO_TX_BLOCKING, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %11, align 8
  %147 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %11, align 8
  %149 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @memcpy(i32 %151, i32* %152, i64 %153)
  %155 = load %struct.mei_cl*, %struct.mei_cl** %6, align 8
  %156 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %11, align 8
  %157 = call i32 @mei_cl_write(%struct.mei_cl* %155, %struct.mei_cl_cb* %156)
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %129, %126, %115, %110, %65, %57, %48, %41
  %159 = load %struct.mei_device*, %struct.mei_device** %10, align 8
  %160 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %159, i32 0, i32 2
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %158, %26
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @mei_me_cl_is_active(i32) #1

declare dso_local i64 @mei_cl_mtu(%struct.mei_cl*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local %struct.mei_cl_cb* @mei_cl_alloc_cb(%struct.mei_cl*, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @mei_cl_write(%struct.mei_cl*, %struct.mei_cl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
