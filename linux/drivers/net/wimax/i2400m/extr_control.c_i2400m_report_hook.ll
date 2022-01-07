; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_l3l4_hdr = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"(i2400m %p l3l4_hdr %p size %zu)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"REPORT STATE\00", align 1
@I2400M_MS_DONE_OK = common dso_local global i32 0, align 4
@i2400m_power_save_disabled = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"ready for powersave, not requesting (disabled by module parameter)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ready for powersave, requesting\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"(i2400m %p l3l4_hdr %p size %zu) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400m_report_hook(%struct.i2400m* %0, %struct.i2400m_l3l4_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_l3l4_hdr* %1, %struct.i2400m_l3l4_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %13 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %12, %struct.i2400m_l3l4_hdr* %13, i64 %14)
  %16 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %46 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %3
  %22 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %23 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @i2400m_report_state_hook(%struct.i2400m* %22, %struct.i2400m_l3l4_hdr* %23, i64 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %46

26:                                               ; preds = %3
  %27 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2400M_MS_DONE_OK, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load i32, i32* @i2400m_power_save_disabled, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = call i32 @d_printf(i32 1, %struct.device* %37, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %44

39:                                               ; preds = %33
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 @d_printf(i32 1, %struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %43 = call i32 @i2400m_cmd_enter_powersave(%struct.i2400m* %42)
  br label %44

44:                                               ; preds = %39, %36
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %3, %45, %21
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %49 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @d_fnend(i32 3, %struct.device* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.i2400m* %48, %struct.i2400m_l3l4_hdr* %49, i64 %50)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i2400m_report_state_hook(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64, i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @i2400m_cmd_enter_powersave(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
