; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_read_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_read_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i64, i32, i32, %struct.mei_device* }
%struct.mei_device = type { i32 }
%struct.file = type { i32 }
%struct.mei_cl_cb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no such me client\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MEI_FOP_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rpm: get failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"rpm: autosuspend\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_cl_read_start(%struct.mei_cl* %0, i64 %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_cl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.mei_device*, align 8
  %9 = alloca %struct.mei_cl_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.mei_cl* %0, %struct.mei_cl** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %11 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %12 = icmp ne %struct.mei_cl* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %15 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %14, i32 0, i32 3
  %16 = load %struct.mei_device*, %struct.mei_device** %15, align 8
  %17 = icmp ne %struct.mei_device* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i1 [ true, %3 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %136

27:                                               ; preds = %19
  %28 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %29 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %28, i32 0, i32 3
  %30 = load %struct.mei_device*, %struct.mei_device** %29, align 8
  store %struct.mei_device* %30, %struct.mei_device** %8, align 8
  %31 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %32 = call i32 @mei_cl_is_connected(%struct.mei_cl* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %136

37:                                               ; preds = %27
  %38 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %39 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mei_me_cl_is_active(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %45 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %46 = call i32 (%struct.mei_device*, %struct.mei_cl*, i8*, ...) @cl_err(%struct.mei_device* %44, %struct.mei_cl* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOTTY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %136

49:                                               ; preds = %37
  %50 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %51 = call i64 @mei_cl_is_fixed_address(%struct.mei_cl* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %136

54:                                               ; preds = %49
  %55 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %56 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %136

62:                                               ; preds = %54
  %63 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* @MEI_FOP_READ, align 4
  %66 = load %struct.file*, %struct.file** %7, align 8
  %67 = call %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl* %63, i64 %64, i32 %65, %struct.file* %66)
  store %struct.mei_cl_cb* %67, %struct.mei_cl_cb** %9, align 8
  %68 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %9, align 8
  %69 = icmp ne %struct.mei_cl_cb* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %136

73:                                               ; preds = %62
  %74 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %75 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pm_runtime_get(i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @EINPROGRESS, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %87 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_put_noidle(i32 %88)
  %90 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %91 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 (%struct.mei_device*, %struct.mei_cl*, i8*, ...) @cl_err(%struct.mei_device* %90, %struct.mei_cl* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %128

94:                                               ; preds = %80, %73
  store i32 0, i32* %10, align 4
  %95 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %96 = call i64 @mei_hbuf_acquire(%struct.mei_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %100 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %101 = call i32 @mei_hbm_cl_flow_control_req(%struct.mei_device* %99, %struct.mei_cl* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %116

105:                                              ; preds = %98
  %106 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %9, align 8
  %107 = getelementptr inbounds %struct.mei_cl_cb, %struct.mei_cl_cb* %106, i32 0, i32 0
  %108 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %109 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %108, i32 0, i32 1
  %110 = call i32 @list_move_tail(i32* %107, i32* %109)
  br label %111

111:                                              ; preds = %105, %94
  %112 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %113 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %111, %104
  %117 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %118 = load %struct.mei_cl*, %struct.mei_cl** %5, align 8
  %119 = call i32 @cl_dbg(%struct.mei_device* %117, %struct.mei_cl* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %121 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pm_runtime_mark_last_busy(i32 %122)
  %124 = load %struct.mei_device*, %struct.mei_device** %8, align 8
  %125 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pm_runtime_put_autosuspend(i32 %126)
  br label %128

128:                                              ; preds = %116, %85
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.mei_cl_cb*, %struct.mei_cl_cb** %9, align 8
  %133 = call i32 @mei_io_cb_free(%struct.mei_cl_cb* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %134, %70, %59, %53, %43, %34, %24
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mei_cl_is_connected(%struct.mei_cl*) #1

declare dso_local i32 @mei_me_cl_is_active(i32) #1

declare dso_local i32 @cl_err(%struct.mei_device*, %struct.mei_cl*, i8*, ...) #1

declare dso_local i64 @mei_cl_is_fixed_address(%struct.mei_cl*) #1

declare dso_local %struct.mei_cl_cb* @mei_cl_enqueue_ctrl_wr_cb(%struct.mei_cl*, i64, i32, %struct.file*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i64 @mei_hbuf_acquire(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_cl_flow_control_req(%struct.mei_device*, %struct.mei_cl*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @cl_dbg(%struct.mei_device*, %struct.mei_cl*, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mei_io_cb_free(%struct.mei_cl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
