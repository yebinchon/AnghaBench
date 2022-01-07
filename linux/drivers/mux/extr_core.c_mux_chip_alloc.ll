; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_chip_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_mux_chip_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_chip = type { i64, i32, %struct.TYPE_4__, %struct.mux_control* }
%struct.TYPE_4__ = type { i32, %struct.device*, i32*, i32* }
%struct.mux_control = type { i32, i32, i32, %struct.mux_chip* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mux_class = common dso_local global i32 0, align 4
@mux_type = common dso_local global i32 0, align 4
@mux_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"muxchipX failed to get a device id\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"muxchip%d\00", align 1
@MUX_CACHE_UNKNOWN = common dso_local global i32 0, align 4
@MUX_IDLE_AS_IS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mux_chip* @mux_chip_alloc(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mux_chip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mux_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mux_control*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.mux_chip* @ERR_PTR(i32 %25)
  store %struct.mux_chip* %26, %struct.mux_chip** %4, align 8
  br label %129

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 24
  %31 = add i64 56, %30
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.mux_chip* @kzalloc(i32 %34, i32 %35)
  store %struct.mux_chip* %36, %struct.mux_chip** %8, align 8
  %37 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %38 = icmp ne %struct.mux_chip* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.mux_chip* @ERR_PTR(i32 %41)
  store %struct.mux_chip* %42, %struct.mux_chip** %4, align 8
  br label %129

43:                                               ; preds = %27
  %44 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %45 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %44, i64 1
  %46 = bitcast %struct.mux_chip* %45 to %struct.mux_control*
  %47 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %48 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %47, i32 0, i32 3
  store %struct.mux_control* %46, %struct.mux_control** %48, align 8
  %49 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %50 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32* @mux_class, i32** %51, align 8
  %52 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %53 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32* @mux_type, i32** %54, align 8
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %57 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store %struct.device* %55, %struct.device** %58, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %63 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %66 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %65, i32 0, i32 2
  %67 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %68 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %66, %struct.mux_chip* %67)
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i64 @ida_simple_get(i32* @mux_ida, i32 0, i32 0, i32 %69)
  %71 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %72 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %74 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %43
  %78 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %79 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %10, align 4
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %84 = call i32 @kfree(%struct.mux_chip* %83)
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.mux_chip* @ERR_PTR(i32 %85)
  store %struct.mux_chip* %86, %struct.mux_chip** %4, align 8
  br label %129

87:                                               ; preds = %43
  %88 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %89 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %88, i32 0, i32 2
  %90 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %91 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @dev_set_name(%struct.TYPE_4__* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %97 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %121, %87
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %104 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %103, i32 0, i32 3
  %105 = load %struct.mux_control*, %struct.mux_control** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %105, i64 %107
  store %struct.mux_control* %108, %struct.mux_control** %11, align 8
  %109 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %110 = load %struct.mux_control*, %struct.mux_control** %11, align 8
  %111 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %110, i32 0, i32 3
  store %struct.mux_chip* %109, %struct.mux_chip** %111, align 8
  %112 = load %struct.mux_control*, %struct.mux_control** %11, align 8
  %113 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %112, i32 0, i32 2
  %114 = call i32 @sema_init(i32* %113, i32 1)
  %115 = load i32, i32* @MUX_CACHE_UNKNOWN, align 4
  %116 = load %struct.mux_control*, %struct.mux_control** %11, align 8
  %117 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @MUX_IDLE_AS_IS, align 4
  %119 = load %struct.mux_control*, %struct.mux_control** %11, align 8
  %120 = getelementptr inbounds %struct.mux_control, %struct.mux_control* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %98

124:                                              ; preds = %98
  %125 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  %126 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %125, i32 0, i32 2
  %127 = call i32 @device_initialize(%struct.TYPE_4__* %126)
  %128 = load %struct.mux_chip*, %struct.mux_chip** %8, align 8
  store %struct.mux_chip* %128, %struct.mux_chip** %4, align 8
  br label %129

129:                                              ; preds = %124, %77, %39, %23
  %130 = load %struct.mux_chip*, %struct.mux_chip** %4, align 8
  ret %struct.mux_chip* %130
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mux_chip* @ERR_PTR(i32) #1

declare dso_local %struct.mux_chip* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.mux_chip*) #1

declare dso_local i64 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.mux_chip*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
