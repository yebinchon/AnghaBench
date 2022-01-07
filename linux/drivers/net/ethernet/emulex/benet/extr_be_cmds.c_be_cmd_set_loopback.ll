; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_set_lmode = type { i8*, i8*, i8*, i8*, i32 }

@OPCODE_LOWLEVEL_SET_LOOPBACK_MODE = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_LOWLEVEL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SET_LB_MODE_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_loopback(%struct.be_adapter* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.be_mcc_wrb*, align 8
  %11 = alloca %struct.be_cmd_req_set_lmode*, align 8
  %12 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %14 = load i32, i32* @OPCODE_LOWLEVEL_SET_LOOPBACK_MODE, align 4
  %15 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %16 = call i32 @be_cmd_allowed(%struct.be_adapter* %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %78

21:                                               ; preds = %4
  %22 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %26 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %25)
  store %struct.be_mcc_wrb* %26, %struct.be_mcc_wrb** %10, align 8
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %28 = icmp ne %struct.be_mcc_wrb* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  br label %73

32:                                               ; preds = %21
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %34 = call %struct.be_cmd_req_set_lmode* @embedded_payload(%struct.be_mcc_wrb* %33)
  store %struct.be_cmd_req_set_lmode* %34, %struct.be_cmd_req_set_lmode** %11, align 8
  %35 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %11, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %35, i32 0, i32 4
  %37 = load i32, i32* @CMD_SUBSYSTEM_LOWLEVEL, align 4
  %38 = load i32, i32* @OPCODE_LOWLEVEL_SET_LOOPBACK_MODE, align 4
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %10, align 8
  %40 = call i32 @be_wrb_cmd_hdr_prepare(i32* %36, i32 %37, i32 %38, i32 40, %struct.be_mcc_wrb* %39, i32* null)
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %11, align 8
  %43 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %11, align 8
  %46 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %11, align 8
  %49 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.be_cmd_req_set_lmode*, %struct.be_cmd_req_set_lmode** %11, align 8
  %52 = getelementptr inbounds %struct.be_cmd_req_set_lmode, %struct.be_cmd_req_set_lmode* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %54 = call i32 @be_mcc_notify(%struct.be_adapter* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %32
  br label %73

58:                                               ; preds = %32
  %59 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* @SET_LB_MODE_TIMEOUT, align 4
  %65 = call i32 @msecs_to_jiffies(i32 %64)
  %66 = call i32 @wait_for_completion_timeout(i32* %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %58
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %57, %29
  %74 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %71, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @be_cmd_allowed(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_set_lmode* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
