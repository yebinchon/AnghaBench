; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_cmd_exit_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_cmd_exit_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.i2400m_l3l4_hdr = type { i8*, i64, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2400M_MT_CMD_EXIT_IDLE = common dso_local global i32 0, align 4
@I2400M_L3L4_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to issue 'exit idle' command: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_cmd_exit_idle(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %7 = alloca [32 x i8], align 16
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = call %struct.device* @i2400m_dev(%struct.i2400m* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.i2400m_l3l4_hdr* @kzalloc(i32 24, i32 %12)
  store %struct.i2400m_l3l4_hdr* %13, %struct.i2400m_l3l4_hdr** %6, align 8
  %14 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %15 = icmp eq %struct.i2400m_l3l4_hdr* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %50

17:                                               ; preds = %1
  %18 = load i32, i32* @I2400M_MT_CMD_EXIT_IDLE, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %23 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @I2400M_L3L4_VERSION, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %29 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %30 = call %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m* %28, %struct.i2400m_l3l4_hdr* %29, i32 24)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @PTR_ERR(%struct.sk_buff* %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i64 @IS_ERR(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %47

40:                                               ; preds = %17
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @wimax_msg_data(%struct.sk_buff* %41)
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %44 = call i32 @i2400m_msg_check_status(i32 %42, i8* %43, i32 32)
  store i32 %44, i32* %3, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @kfree_skb(%struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %40, %36
  %48 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %49 = call i32 @kfree(%struct.i2400m_l3l4_hdr* %48)
  br label %50

50:                                               ; preds = %47, %16
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local %struct.i2400m_l3l4_hdr* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2400m_msg_check_status(i32, i8*, i32) #1

declare dso_local i32 @wimax_msg_data(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.i2400m_l3l4_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
