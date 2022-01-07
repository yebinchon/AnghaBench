; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_get_intrmod_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_get_intrmod_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_7__, %struct.octeon_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.oct_intrmod_cfg = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i32, i64 }
%struct.oct_intrmod_resp = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_INTRMOD_PARAMS = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Get interrupt moderation parameters failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, %struct.oct_intrmod_cfg*)* @octnet_get_intrmod_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octnet_get_intrmod_cfg(%struct.lio* %0, %struct.oct_intrmod_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.oct_intrmod_cfg*, align 8
  %6 = alloca %struct.octeon_soft_command*, align 8
  %7 = alloca %struct.oct_intrmod_resp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.octeon_device*, align 8
  store %struct.lio* %0, %struct.lio** %4, align 8
  store %struct.oct_intrmod_cfg* %1, %struct.oct_intrmod_cfg** %5, align 8
  %10 = load %struct.lio*, %struct.lio** %4, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 1
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %9, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %14 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %13, i32 0, i32 16, i32 0)
  %15 = inttoptr i64 %14 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %15, %struct.octeon_soft_command** %6, align 8
  %16 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %17 = icmp ne %struct.octeon_soft_command* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %99

21:                                               ; preds = %2
  %22 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %23 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.oct_intrmod_resp*
  store %struct.oct_intrmod_resp* %25, %struct.oct_intrmod_resp** %7, align 8
  %26 = load %struct.oct_intrmod_resp*, %struct.oct_intrmod_resp** %7, align 8
  %27 = call i32 @memset(%struct.oct_intrmod_resp* %26, i32 0, i32 16)
  %28 = load %struct.lio*, %struct.lio** %4, align 8
  %29 = getelementptr inbounds %struct.lio, %struct.lio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %37 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %39 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %40 = load i32, i32* @OPCODE_NIC, align 4
  %41 = load i32, i32* @OPCODE_NIC_INTRMOD_PARAMS, align 4
  %42 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %38, %struct.octeon_soft_command* %39, i32 %40, i32 %41, i32 0, i32 0, i32 0)
  %43 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %44 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %43, i32 0, i32 2
  %45 = call i32 @init_completion(i32* %44)
  %46 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %47 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %48 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %50 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %51 = call i32 @octeon_send_soft_command(%struct.octeon_device* %49, %struct.octeon_soft_command* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IQ_SEND_FAILED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %21
  %56 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %57 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %58 = call i32 @octeon_free_soft_command(%struct.octeon_device* %56, %struct.octeon_soft_command* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %99

61:                                               ; preds = %21
  %62 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %63 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %64 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %62, %struct.octeon_soft_command* %63, i32 0)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %99

70:                                               ; preds = %61
  %71 = load %struct.oct_intrmod_resp*, %struct.oct_intrmod_resp** %7, align 8
  %72 = getelementptr inbounds %struct.oct_intrmod_resp, %struct.oct_intrmod_resp* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %77 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %82 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @WRITE_ONCE(i32 %83, i32 1)
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %99

87:                                               ; preds = %70
  %88 = load %struct.oct_intrmod_resp*, %struct.oct_intrmod_resp** %7, align 8
  %89 = getelementptr inbounds %struct.oct_intrmod_resp, %struct.oct_intrmod_resp* %88, i32 0, i32 0
  %90 = call i32 @octeon_swap_8B_data(i32* %89, i32 0)
  %91 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %92 = load %struct.oct_intrmod_resp*, %struct.oct_intrmod_resp** %7, align 8
  %93 = getelementptr inbounds %struct.oct_intrmod_resp, %struct.oct_intrmod_resp* %92, i32 0, i32 0
  %94 = call i32 @memcpy(%struct.oct_intrmod_cfg* %91, i32* %93, i32 4)
  %95 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %96 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @WRITE_ONCE(i32 %97, i32 1)
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %87, %75, %67, %55, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.oct_intrmod_resp*, i32, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.oct_intrmod_cfg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
