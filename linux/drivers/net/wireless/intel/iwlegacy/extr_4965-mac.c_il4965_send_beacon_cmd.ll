; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_send_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_send_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [56 x i8] c"Could not obtain free frame buffer for beacon command.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error configuring the beacon command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@C_TX_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_send_beacon_cmd(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = call %struct.il_frame* @il4965_get_free_frame(%struct.il_priv* %7)
  store %struct.il_frame* %8, %struct.il_frame** %4, align 8
  %9 = load %struct.il_frame*, %struct.il_frame** %4, align 8
  %10 = icmp ne %struct.il_frame* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @IL_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = load %struct.il_frame*, %struct.il_frame** %4, align 8
  %18 = call i32 @il4965_hw_get_beacon_cmd(%struct.il_priv* %16, %struct.il_frame* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = call i32 @IL_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = load %struct.il_frame*, %struct.il_frame** %4, align 8
  %25 = call i32 @il4965_free_frame(%struct.il_priv* %23, %struct.il_frame* %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %15
  %29 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %30 = load i32, i32* @C_TX_BEACON, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.il_frame*, %struct.il_frame** %4, align 8
  %33 = getelementptr inbounds %struct.il_frame, %struct.il_frame* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @il_send_cmd_pdu(%struct.il_priv* %29, i32 %30, i32 %31, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %39 = load %struct.il_frame*, %struct.il_frame** %4, align 8
  %40 = call i32 @il4965_free_frame(%struct.il_priv* %38, %struct.il_frame* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %28, %21, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.il_frame* @il4965_get_free_frame(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il4965_hw_get_beacon_cmd(%struct.il_priv*, %struct.il_frame*) #1

declare dso_local i32 @il4965_free_frame(%struct.il_priv*, %struct.il_frame*) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
