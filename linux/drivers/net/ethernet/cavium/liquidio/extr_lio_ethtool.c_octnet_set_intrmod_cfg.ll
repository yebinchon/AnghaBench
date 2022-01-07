; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_set_intrmod_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_octnet_set_intrmod_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_7__, %struct.octeon_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.oct_intrmod_cfg = type { i64 }
%struct.octeon_soft_command = type { i32, i32, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_INTRMOD_CFG = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Rx-Adaptive Interrupt moderation %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"intrmod config failed. Status: %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, %struct.oct_intrmod_cfg*)* @octnet_set_intrmod_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octnet_set_intrmod_cfg(%struct.lio* %0, %struct.oct_intrmod_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lio*, align 8
  %5 = alloca %struct.oct_intrmod_cfg*, align 8
  %6 = alloca %struct.octeon_soft_command*, align 8
  %7 = alloca %struct.oct_intrmod_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.octeon_device*, align 8
  store %struct.lio* %0, %struct.lio** %4, align 8
  store %struct.oct_intrmod_cfg* %1, %struct.oct_intrmod_cfg** %5, align 8
  %10 = load %struct.lio*, %struct.lio** %4, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 1
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %9, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %14 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %13, i32 8, i32 16, i32 0)
  %15 = inttoptr i64 %14 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %15, %struct.octeon_soft_command** %6, align 8
  %16 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %17 = icmp ne %struct.octeon_soft_command* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %2
  %22 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %23 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.oct_intrmod_cfg*
  store %struct.oct_intrmod_cfg* %25, %struct.oct_intrmod_cfg** %7, align 8
  %26 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %7, align 8
  %27 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %28 = call i32 @memcpy(%struct.oct_intrmod_cfg* %26, %struct.oct_intrmod_cfg* %27, i32 8)
  %29 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %7, align 8
  %30 = bitcast %struct.oct_intrmod_cfg* %29 to i32*
  %31 = call i32 @octeon_swap_8B_data(i32* %30, i32 1)
  %32 = load %struct.lio*, %struct.lio** %4, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %41 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %43 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %44 = load i32, i32* @OPCODE_NIC, align 4
  %45 = load i32, i32* @OPCODE_NIC_INTRMOD_CFG, align 4
  %46 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %42, %struct.octeon_soft_command* %43, i32 %44, i32 %45, i32 0, i32 0, i32 0)
  %47 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %48 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %47, i32 0, i32 2
  %49 = call i32 @init_completion(i32* %48)
  %50 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %51 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %52 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %54 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %55 = call i32 @octeon_send_soft_command(%struct.octeon_device* %53, %struct.octeon_soft_command* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @IQ_SEND_FAILED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %21
  %60 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %61 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %62 = call i32 @octeon_free_soft_command(%struct.octeon_device* %60, %struct.octeon_soft_command* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %108

65:                                               ; preds = %21
  %66 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %67 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %68 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %66, %struct.octeon_soft_command* %67, i32 0)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %108

73:                                               ; preds = %65
  %74 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %75 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %81 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %5, align 8
  %85 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %90 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %89)
  %91 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %92 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @WRITE_ONCE(i32 %93, i32 1)
  store i32 0, i32* %3, align 4
  br label %108

95:                                               ; preds = %73
  %96 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %97 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %103 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @WRITE_ONCE(i32 %104, i32 1)
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %95, %79, %71, %59, %18
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg*, i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
