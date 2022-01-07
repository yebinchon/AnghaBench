; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_submit_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 (%struct.lbs_private*, i32, i32*, i64)*, i32, i32, i32, i64, i64, i32, i32, %struct.cmd_ctrl_node*, i32 }
%struct.cmd_ctrl_node = type { %struct.cmd_header* }
%struct.cmd_header = type { i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@CMD_802_11_SCAN = common dso_local global i64 0, align 8
@CMD_802_11_ASSOCIATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"DNLD_CMD: command 0x%04x, seq %d, size %d\0A\00", align 1
@LBS_DEB_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"DNLD_CMD\00", align 1
@MVMS_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"DNLD_CMD: hw_host_to_card failed: %d\0A\00", align 1
@DNLD_RES_RECEIVED = common dso_local global i64 0, align 8
@CMD_802_11_DEEP_SLEEP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, %struct.cmd_ctrl_node*)* @lbs_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_submit_command(%struct.lbs_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cmd_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = mul nsw i32 3, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %13, i32 0, i32 0
  %15 = load %struct.cmd_header*, %struct.cmd_header** %14, align 8
  store %struct.cmd_header* %15, %struct.cmd_header** %6, align 8
  %16 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 7
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %29 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %31 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 8
  store %struct.cmd_ctrl_node* %30, %struct.cmd_ctrl_node** %32, align 8
  %33 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %34 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %33, i32 0, i32 7
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %38 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %42 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le16_to_cpu(i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @CMD_802_11_SCAN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %2
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @CMD_802_11_ASSOCIATE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %2
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 5, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %58 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16_to_cpu(i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %60, i64 %61)
  %63 = load i32, i32* @LBS_DEB_CMD, align 4
  %64 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %65 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %64, i32 0, i32 0
  %66 = load %struct.cmd_header*, %struct.cmd_header** %65, align 8
  %67 = bitcast %struct.cmd_header* %66 to i8*
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @lbs_deb_hex(i32 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %67, i64 %68)
  %70 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %71 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %70, i32 0, i32 0
  %72 = load i32 (%struct.lbs_private*, i32, i32*, i64)*, i32 (%struct.lbs_private*, i32, i32*, i64)** %71, align 8
  %73 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %74 = load i32, i32* @MVMS_CMD, align 4
  %75 = load %struct.cmd_header*, %struct.cmd_header** %6, align 8
  %76 = bitcast %struct.cmd_header* %75 to i32*
  %77 = load i64, i64* %7, align 8
  %78 = call i32 %72(%struct.lbs_private* %73, i32 %74, i32* %76, i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %55
  %82 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %83 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @netdev_info(i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i64, i64* @DNLD_RES_RECEIVED, align 8
  %88 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %89 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %88, i32 0, i32 4
  store i64 %87, i64* %89, align 8
  %90 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %91 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @lbs_complete_command(%struct.lbs_private* %90, %struct.cmd_ctrl_node* %91, i32 %92)
  br label %94

94:                                               ; preds = %81, %55
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* @CMD_802_11_DEEP_SLEEP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %100 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %105 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %104, i32 0, i32 1
  store i32 1, i32* %105, align 8
  %106 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %107 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %110 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %112 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %113 = call i32 @lbs_complete_command(%struct.lbs_private* %111, %struct.cmd_ctrl_node* %112, i32 0)
  br label %122

114:                                              ; preds = %94
  %115 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %116 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %115, i32 0, i32 3
  %117 = load i64, i64* @jiffies, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = call i32 @mod_timer(i32* %116, i64 %120)
  br label %122

122:                                              ; preds = %114, %108
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i64, i64, i64) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i8*, i64) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @lbs_complete_command(%struct.lbs_private*, %struct.cmd_ctrl_node*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
