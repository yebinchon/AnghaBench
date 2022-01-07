; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.c_octnic_alloc_ctrl_pkt_sc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.c_octnic_alloc_ctrl_pkt_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_soft_command = type { i32, i32, i32, i64 }
%struct.octeon_device = type { i32 }
%struct.octnic_ctrl_pkt = type { i64, %struct.TYPE_4__*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OCTNET_CMD_SIZE = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_CMD = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.octeon_soft_command* (%struct.octeon_device*, %struct.octnic_ctrl_pkt*)* @octnic_alloc_ctrl_pkt_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.octeon_soft_command* @octnic_alloc_ctrl_pkt_sc(%struct.octeon_device* %0, %struct.octnic_ctrl_pkt* %1) #0 {
  %3 = alloca %struct.octeon_soft_command*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octnic_ctrl_pkt*, align 8
  %6 = alloca %struct.octeon_soft_command*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octnic_ctrl_pkt* %1, %struct.octnic_ctrl_pkt** %5, align 8
  store %struct.octeon_soft_command* null, %struct.octeon_soft_command** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.octnic_ctrl_pkt*, %struct.octnic_ctrl_pkt** %5, align 8
  %12 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  store i32 16, i32* %8, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %20, i32 %21, i32 %22, i32 0)
  %24 = inttoptr i64 %23 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %24, %struct.octeon_soft_command** %6, align 8
  %25 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %26 = icmp ne %struct.octeon_soft_command* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store %struct.octeon_soft_command* null, %struct.octeon_soft_command** %3, align 8
  br label %73

28:                                               ; preds = %2
  %29 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %30 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.octnic_ctrl_pkt*, %struct.octnic_ctrl_pkt** %5, align 8
  %35 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %34, i32 0, i32 2
  %36 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %37 = call i32 @memcpy(i32* %33, %struct.TYPE_4__* %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %40 = ashr i32 %39, 3
  %41 = call i32 @octeon_swap_8B_data(i32* %38, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %28
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @OCTNET_CMD_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.octnic_ctrl_pkt*, %struct.octnic_ctrl_pkt** %5, align 8
  %50 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @memcpy(i32* %48, %struct.TYPE_4__* %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %28
  %55 = load %struct.octnic_ctrl_pkt*, %struct.octnic_ctrl_pkt** %5, align 8
  %56 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %60 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %62 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %63 = load i32, i32* @OPCODE_NIC, align 4
  %64 = load i32, i32* @OPCODE_NIC_CMD, align 4
  %65 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %61, %struct.octeon_soft_command* %62, i32 %63, i32 %64, i32 0, i32 0, i32 0)
  %66 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %67 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %66, i32 0, i32 2
  %68 = call i32 @init_completion(i32* %67)
  %69 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %70 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  %71 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %6, align 8
  store %struct.octeon_soft_command* %72, %struct.octeon_soft_command** %3, align 8
  br label %73

73:                                               ; preds = %54, %27
  %74 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %3, align 8
  ret %struct.octeon_soft_command* %74
}

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
