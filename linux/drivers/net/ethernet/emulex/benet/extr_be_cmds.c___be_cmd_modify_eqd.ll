; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c___be_cmd_modify_eqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c___be_cmd_modify_eqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_set_eqd = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_modify_eq_delay = type { %struct.TYPE_2__*, i8*, i32 }
%struct.TYPE_2__ = type { i8*, i64, i8* }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_MODIFY_EQ_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.be_set_eqd*, i32)* @__be_cmd_modify_eqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__be_cmd_modify_eqd(%struct.be_adapter* %0, %struct.be_set_eqd* %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_set_eqd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_modify_eq_delay*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_set_eqd* %1, %struct.be_set_eqd** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %7, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %17 = icmp ne %struct.be_mcc_wrb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %23 = call %struct.be_cmd_req_modify_eq_delay* @embedded_payload(%struct.be_mcc_wrb* %22)
  store %struct.be_cmd_req_modify_eq_delay* %23, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %24 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %25 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %24, i32 0, i32 2
  %26 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %27 = load i32, i32* @OPCODE_COMMON_MODIFY_EQ_DELAY, align 4
  %28 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %29 = call i32 @be_wrb_cmd_hdr_prepare(i32* %25, i32 %26, i32 %27, i32 24, %struct.be_mcc_wrb* %28, i32* null)
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %33 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %74, %21
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load %struct.be_set_eqd*, %struct.be_set_eqd** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %39, i64 %41
  %43 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i8* %45, i8** %52, align 8
  %53 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %54 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.be_set_eqd*, %struct.be_set_eqd** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %60, i64 %62
  %64 = getelementptr inbounds %struct.be_set_eqd, %struct.be_set_eqd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.be_cmd_req_modify_eq_delay*, %struct.be_cmd_req_modify_eq_delay** %8, align 8
  %68 = getelementptr inbounds %struct.be_cmd_req_modify_eq_delay, %struct.be_cmd_req_modify_eq_delay* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %66, i8** %73, align 8
  br label %74

74:                                               ; preds = %38
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %34

77:                                               ; preds = %34
  %78 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %79 = call i32 @be_mcc_notify(%struct.be_adapter* %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %77, %18
  %81 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_modify_eq_delay* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
