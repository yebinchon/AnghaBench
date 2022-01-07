; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwl_dvm_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwl_dvm_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32 }
%struct.iwl_host_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Not sending command - %s KILL\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@EIO = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Command %s failed: FW Error\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Fw not loaded - dropping CMD: %x\0A\00", align 1
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %7 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %11 = call i64 @iwl_is_ctkill(%struct.iwl_priv* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9, %2
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %16 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 @IWL_WARN(%struct.iwl_priv* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %9
  %24 = load i32, i32* @STATUS_FW_ERROR, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 3
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iwl_get_cmd_string(i32 %33, i32 %36)
  %38 = call i32 @IWL_ERR(%struct.iwl_priv* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %71

41:                                               ; preds = %23
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %48 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IWL_ERR(%struct.iwl_priv* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %41
  %55 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CMD_ASYNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %62, i32 0, i32 1
  %64 = call i32 @lockdep_assert_held(i32* %63)
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %67 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %70 = call i32 @iwl_trans_send_cmd(i32 %68, %struct.iwl_host_cmd* %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %46, %29, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i64 @iwl_is_ctkill(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_get_cmd_string(i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_trans_send_cmd(i32, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
