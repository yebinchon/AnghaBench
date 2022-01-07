; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_process_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_emad_process_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_reg_trans = type { i32, %struct.TYPE_2__*, i32 (%struct.mlxsw_core.0*, i32, i32, i32)*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_core.0 = type opaque
%struct.sk_buff = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_core*, %struct.mlxsw_reg_trans*, %struct.sk_buff*)* @mlxsw_emad_process_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_emad_process_response(%struct.mlxsw_core* %0, %struct.mlxsw_reg_trans* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.mlxsw_reg_trans*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.mlxsw_reg_trans* %1, %struct.mlxsw_reg_trans** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %9, i32 0, i32 4
  %11 = call i32 @atomic_dec_and_test(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %59

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %16, i32 0, i32 3
  %18 = call i32 @mlxsw_emad_process_status_skb(%struct.sk_buff* %15, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %25 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %26 = call i32 @mlxsw_emad_transmit_retry(%struct.mlxsw_core* %24, %struct.mlxsw_reg_trans* %25)
  br label %59

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i8* @mlxsw_emad_op_tlv(%struct.sk_buff* %31)
  store i8* %32, i8** %8, align 8
  %33 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %34 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %33, i32 0, i32 2
  %35 = load i32 (%struct.mlxsw_core.0*, i32, i32, i32)*, i32 (%struct.mlxsw_core.0*, i32, i32, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.mlxsw_core.0*, i32, i32, i32)* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %38, i32 0, i32 2
  %40 = load i32 (%struct.mlxsw_core.0*, i32, i32, i32)*, i32 (%struct.mlxsw_core.0*, i32, i32, i32)** %39, align 8
  %41 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %42 = bitcast %struct.mlxsw_core* %41 to %struct.mlxsw_core.0*
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @mlxsw_emad_reg_payload(i8* %43)
  %45 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %46 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %51 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %40(%struct.mlxsw_core.0* %42, i32 %44, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %37, %30
  br label %55

55:                                               ; preds = %54, %27
  %56 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mlxsw_emad_trans_finish(%struct.mlxsw_reg_trans* %56, i32 %57)
  br label %59

59:                                               ; preds = %13, %55, %23
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @mlxsw_emad_process_status_skb(%struct.sk_buff*, i32*) #1

declare dso_local i32 @mlxsw_emad_transmit_retry(%struct.mlxsw_core*, %struct.mlxsw_reg_trans*) #1

declare dso_local i8* @mlxsw_emad_op_tlv(%struct.sk_buff*) #1

declare dso_local i32 @mlxsw_emad_reg_payload(i8*) #1

declare dso_local i32 @mlxsw_emad_trans_finish(%struct.mlxsw_reg_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
