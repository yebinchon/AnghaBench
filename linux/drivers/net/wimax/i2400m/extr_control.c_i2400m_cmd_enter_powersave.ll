; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_cmd_enter_powersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_cmd_enter_powersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.i2400m_cmd_enter_power_save = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2400M_MT_CMD_ENTER_POWERSAVE = common dso_local global i32 0, align 4
@I2400M_L3L4_VERSION = common dso_local global i32 0, align 4
@I2400M_TLV_TYPE_WAKEUP_MODE = common dso_local global i32 0, align 4
@I2400M_WAKEUP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to issue 'Enter power save' command: %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot enter power save mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"'Enter power save' (0x%04x) command failed: %d - %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"device ready to power save\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_cmd_enter_powersave(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.i2400m_cmd_enter_power_save*, align 8
  %7 = alloca [32 x i8], align 16
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = call %struct.device* @i2400m_dev(%struct.i2400m* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.i2400m_cmd_enter_power_save* @kzalloc(i32 48, i32 %12)
  store %struct.i2400m_cmd_enter_power_save* %13, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %14 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %15 = icmp eq %struct.i2400m_cmd_enter_power_save* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %88

17:                                               ; preds = %1
  %18 = load i32, i32* @I2400M_MT_CMD_ENTER_POWERSAVE, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %21 = getelementptr inbounds %struct.i2400m_cmd_enter_power_save, %struct.i2400m_cmd_enter_power_save* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = call i8* @cpu_to_le16(i32 24)
  %24 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %25 = getelementptr inbounds %struct.i2400m_cmd_enter_power_save, %struct.i2400m_cmd_enter_power_save* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @I2400M_L3L4_VERSION, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %30 = getelementptr inbounds %struct.i2400m_cmd_enter_power_save, %struct.i2400m_cmd_enter_power_save* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* @I2400M_TLV_TYPE_WAKEUP_MODE, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %35 = getelementptr inbounds %struct.i2400m_cmd_enter_power_save, %struct.i2400m_cmd_enter_power_save* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = call i8* @cpu_to_le16(i32 4)
  %38 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %39 = getelementptr inbounds %struct.i2400m_cmd_enter_power_save, %struct.i2400m_cmd_enter_power_save* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @I2400M_WAKEUP_ENABLED, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %44 = getelementptr inbounds %struct.i2400m_cmd_enter_power_save, %struct.i2400m_cmd_enter_power_save* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %46 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %47 = call %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m* %45, %struct.i2400m_cmd_enter_power_save* %46, i32 48)
  store %struct.sk_buff* %47, %struct.sk_buff** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.sk_buff* %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i64 @IS_ERR(%struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %17
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %85

57:                                               ; preds = %17
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @wimax_msg_data(%struct.sk_buff* %58)
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %61 = call i32 @i2400m_msg_check_status(i32 %59, i8* %60, i32 32)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @EACCES, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @d_printf(i32 1, %struct.device* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %82

69:                                               ; preds = %57
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* @I2400M_MT_CMD_ENTER_POWERSAVE, align 4
  %75 = load i32, i32* %3, align 4
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %77 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75, i8* %76)
  br label %81

78:                                               ; preds = %69
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @d_printf(i32 1, %struct.device* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %72
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 @kfree_skb(%struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %82, %53
  %86 = load %struct.i2400m_cmd_enter_power_save*, %struct.i2400m_cmd_enter_power_save** %6, align 8
  %87 = call i32 @kfree(%struct.i2400m_cmd_enter_power_save* %86)
  br label %88

88:                                               ; preds = %85, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local %struct.i2400m_cmd_enter_power_save* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m*, %struct.i2400m_cmd_enter_power_save*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @i2400m_msg_check_status(i32, i8*, i32) #1

declare dso_local i32 @wimax_msg_data(%struct.sk_buff*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.i2400m_cmd_enter_power_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
