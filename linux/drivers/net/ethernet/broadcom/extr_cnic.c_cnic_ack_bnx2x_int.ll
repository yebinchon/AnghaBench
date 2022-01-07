; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ack_bnx2x_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ack_bnx2x_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.bnx2x = type { i32 }
%struct.igu_ack_register = type { i32, i32 }

@HC_REG_COMMAND_REG = common dso_local global i64 0, align 8
@COMMAND_REG_INT_ACK = common dso_local global i64 0, align 8
@IGU_ACK_REGISTER_STATUS_BLOCK_ID_SHIFT = common dso_local global i32 0, align 4
@IGU_ACK_REGISTER_STORM_ID_SHIFT = common dso_local global i32 0, align 4
@IGU_ACK_REGISTER_UPDATE_INDEX_SHIFT = common dso_local global i32 0, align 4
@IGU_ACK_REGISTER_INTERRUPT_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, i32, i32, i32, i32)* @cnic_ack_bnx2x_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ack_bnx2x_int(%struct.cnic_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cnic_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bnx2x*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.igu_ack_register, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %17 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.bnx2x* @netdev_priv(i32 %18)
  store %struct.bnx2x* %19, %struct.bnx2x** %13, align 8
  %20 = load i64, i64* @HC_REG_COMMAND_REG, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  %22 = call i32 @BP_PORT(%struct.bnx2x* %21)
  %23 = mul nsw i32 %22, 32
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = load i64, i64* @COMMAND_REG_INT_ACK, align 8
  %27 = add nsw i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.igu_ack_register, %struct.igu_ack_register* %15, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @IGU_ACK_REGISTER_STATUS_BLOCK_ID_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @IGU_ACK_REGISTER_STORM_ID_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @IGU_ACK_REGISTER_UPDATE_INDEX_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @IGU_ACK_REGISTER_INTERRUPT_MODE_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = getelementptr inbounds %struct.igu_ack_register, %struct.igu_ack_register* %15, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %47 = load i64, i64* %14, align 8
  %48 = bitcast %struct.igu_ack_register* %15 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = call i32 @CNIC_WR(%struct.cnic_dev* %46, i64 %47, i64 %49)
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
