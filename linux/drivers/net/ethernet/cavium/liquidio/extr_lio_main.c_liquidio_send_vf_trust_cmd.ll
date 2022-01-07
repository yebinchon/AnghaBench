; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_send_vf_trust_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_send_vf_trust_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_6__, %struct.octeon_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.octeon_device = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_SET_TRUSTED_VF = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, i32, i32)* @liquidio_send_vf_trust_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_send_vf_trust_cmd(%struct.lio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca %struct.octeon_soft_command*, align 8
  %10 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lio*, %struct.lio** %5, align 8
  %12 = getelementptr inbounds %struct.lio, %struct.lio* %11, i32 0, i32 1
  %13 = load %struct.octeon_device*, %struct.octeon_device** %12, align 8
  store %struct.octeon_device* %13, %struct.octeon_device** %8, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %15 = call %struct.octeon_soft_command* @octeon_alloc_soft_command(%struct.octeon_device* %14, i32 0, i32 16, i32 0)
  store %struct.octeon_soft_command* %15, %struct.octeon_soft_command** %9, align 8
  %16 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %17 = icmp ne %struct.octeon_soft_command* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.lio*, %struct.lio** %5, align 8
  %23 = getelementptr inbounds %struct.lio, %struct.lio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %31 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %33 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %34 = load i32, i32* @OPCODE_NIC, align 4
  %35 = load i32, i32* @OPCODE_NIC_SET_TRUSTED_VF, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %32, %struct.octeon_soft_command* %33, i32 %34, i32 %35, i32 0, i32 %37, i32 %38)
  %40 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %41 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %40, i32 0, i32 2
  %42 = call i32 @init_completion(i32* %41)
  %43 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %44 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %45 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %47 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %48 = call i32 @octeon_send_soft_command(%struct.octeon_device* %46, %struct.octeon_soft_command* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @IQ_SEND_FAILED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %21
  %53 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %54 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %55 = call i32 @octeon_free_soft_command(%struct.octeon_device* %53, %struct.octeon_soft_command* %54)
  store i32 -1, i32* %10, align 4
  br label %69

56:                                               ; preds = %21
  %57 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %58 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %59 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %57, %struct.octeon_soft_command* %58, i32 0)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %71

64:                                               ; preds = %56
  %65 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %9, align 8
  %66 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @WRITE_ONCE(i32 %67, i32 1)
  br label %69

69:                                               ; preds = %64, %52
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %62, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.octeon_soft_command* @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
