; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_command_ram_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_command_ram_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.adv7842_platform_data* }
%struct.adv7842_platform_data = type { i32, i32 }
%struct.adv7842_state = type { %struct.v4l2_dv_timings, i32 }
%struct.v4l2_dv_timings = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no sdram or no ddr sdram\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADV7842_EDID_PORT_A = common dso_local global i32 0, align 4
@ADV7842_EDID_PORT_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @adv7842_command_ram_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7842_command_ram_test(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.adv7842_state*, align 8
  %6 = alloca %struct.adv7842_platform_data*, align 8
  %7 = alloca %struct.v4l2_dv_timings, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call %struct.adv7842_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.adv7842_state* %12, %struct.adv7842_state** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %15, align 8
  store %struct.adv7842_platform_data* %16, %struct.adv7842_platform_data** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %6, align 8
  %18 = icmp ne %struct.adv7842_platform_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %6, align 8
  %24 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %6, align 8
  %29 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = call i32 @v4l2_info(%struct.v4l2_subdev* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %79

37:                                               ; preds = %27
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %39 = call i32 @main_reset(%struct.v4l2_subdev* %38)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %41 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %6, align 8
  %42 = call i32 @adv7842_rewrite_i2c_addresses(%struct.v4l2_subdev* %40, %struct.adv7842_platform_data* %41)
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %44 = call i32 @adv7842_ddr_ram_test(%struct.v4l2_subdev* %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %46 = call i32 @main_reset(%struct.v4l2_subdev* %45)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %48 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %6, align 8
  %49 = call i32 @adv7842_rewrite_i2c_addresses(%struct.v4l2_subdev* %47, %struct.adv7842_platform_data* %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %51 = call i32 @adv7842_core_init(%struct.v4l2_subdev* %50)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %53 = call i32 @disable_input(%struct.v4l2_subdev* %52)
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %55 = load %struct.adv7842_state*, %struct.adv7842_state** %5, align 8
  %56 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @select_input(%struct.v4l2_subdev* %54, i32 %57)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = call i32 @enable_input(%struct.v4l2_subdev* %59)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %62 = call i32 @edid_write_vga_segment(%struct.v4l2_subdev* %61)
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %64 = load i32, i32* @ADV7842_EDID_PORT_A, align 4
  %65 = call i32 @edid_write_hdmi_segment(%struct.v4l2_subdev* %63, i32 %64)
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %67 = load i32, i32* @ADV7842_EDID_PORT_B, align 4
  %68 = call i32 @edid_write_hdmi_segment(%struct.v4l2_subdev* %66, i32 %67)
  %69 = load %struct.adv7842_state*, %struct.adv7842_state** %5, align 8
  %70 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %69, i32 0, i32 0
  %71 = bitcast %struct.v4l2_dv_timings* %7 to i8*
  %72 = bitcast %struct.v4l2_dv_timings* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load %struct.adv7842_state*, %struct.adv7842_state** %5, align 8
  %74 = getelementptr inbounds %struct.adv7842_state, %struct.adv7842_state* %73, i32 0, i32 0
  %75 = call i32 @memset(%struct.v4l2_dv_timings* %74, i32 0, i32 4)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %77 = call i32 @adv7842_s_dv_timings(%struct.v4l2_subdev* %76, %struct.v4l2_dv_timings* %7)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %37, %32, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv7842_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @main_reset(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7842_rewrite_i2c_addresses(%struct.v4l2_subdev*, %struct.adv7842_platform_data*) #1

declare dso_local i32 @adv7842_ddr_ram_test(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7842_core_init(%struct.v4l2_subdev*) #1

declare dso_local i32 @disable_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @select_input(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @enable_input(%struct.v4l2_subdev*) #1

declare dso_local i32 @edid_write_vga_segment(%struct.v4l2_subdev*) #1

declare dso_local i32 @edid_write_hdmi_segment(%struct.v4l2_subdev*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.v4l2_dv_timings*, i32, i32) #1

declare dso_local i32 @adv7842_s_dv_timings(%struct.v4l2_subdev*, %struct.v4l2_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
