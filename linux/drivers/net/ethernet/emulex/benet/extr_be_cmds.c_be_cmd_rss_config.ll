; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_rss_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_rss_config = type { i32, i32, %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@BE_IF_FLAGS_RSS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@OPCODE_ETH_RSS_CONFIG = common dso_local global i32 0, align 4
@RSS_HASH_KEY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_rss_config(%struct.be_adapter* %0, i32* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.be_mcc_wrb*, align 8
  %13 = alloca %struct.be_cmd_req_rss_config*, align 8
  %14 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %16 = call i32 @be_if_cap_flags(%struct.be_adapter* %15)
  %17 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %88

21:                                               ; preds = %5
  %22 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %26 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %25)
  store %struct.be_mcc_wrb* %26, %struct.be_mcc_wrb** %12, align 8
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %28 = icmp ne %struct.be_mcc_wrb* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  br label %83

32:                                               ; preds = %21
  %33 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %34 = call %struct.be_cmd_req_rss_config* @embedded_payload(%struct.be_mcc_wrb* %33)
  store %struct.be_cmd_req_rss_config* %34, %struct.be_cmd_req_rss_config** %13, align 8
  %35 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %35, i32 0, i32 2
  %37 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %38 = load i32, i32* @OPCODE_ETH_RSS_CONFIG, align 4
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %12, align 8
  %40 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %36, i32 %37, i32 %38, i32 40, %struct.be_mcc_wrb* %39, i32* null)
  %41 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %46 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i8* @cpu_to_le16(i64 %47)
  %49 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %50 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @fls(i32 %51)
  %53 = sub nsw i64 %52, 1
  %54 = call i8* @cpu_to_le16(i64 %53)
  %55 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %56 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %58 = call i32 @BEx_chip(%struct.be_adapter* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %32
  %61 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %62 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %32
  %65 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %66 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @memcpy(i32 %67, i32* %68, i32 %69)
  %71 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %72 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* @RSS_HASH_KEY_LEN, align 4
  %76 = call i32 @memcpy(i32 %73, i32* %74, i32 %75)
  %77 = load %struct.be_cmd_req_rss_config*, %struct.be_cmd_req_rss_config** %13, align 8
  %78 = getelementptr inbounds %struct.be_cmd_req_rss_config, %struct.be_cmd_req_rss_config* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @be_dws_cpu_to_le(i32 %79, i32 4)
  %81 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %82 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %81)
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %64, %29
  %84 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %85 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %20
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @be_if_cap_flags(%struct.be_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_rss_config* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @be_dws_cpu_to_le(i32, i32) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
