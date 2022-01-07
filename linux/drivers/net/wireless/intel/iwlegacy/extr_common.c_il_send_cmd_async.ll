; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_send_cmd_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_send_cmd_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_host_cmd = type { i32, i32, i64 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@il_generic_cmd_callback = common dso_local global i64 0, align 8
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error sending %s: enqueue_hcmd failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_host_cmd*)* @il_send_cmd_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_send_cmd_async(%struct.il_priv* %0, %struct.il_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_host_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_host_cmd* %1, %struct.il_host_cmd** %5, align 8
  %7 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %8 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CMD_ASYNC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CMD_WANT_SKB, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* @il_generic_cmd_callback, align 8
  %28 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @S_EXIT_PENDING, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %30
  %40 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %41 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %42 = call i32 @il_enqueue_hcmd(%struct.il_priv* %40, %struct.il_host_cmd* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.il_host_cmd*, %struct.il_host_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @il_get_cmd_string(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @IL_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %45, %36
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_enqueue_hcmd(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @IL_ERR(i8*, i32, i32) #1

declare dso_local i32 @il_get_cmd_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
