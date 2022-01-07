; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mcc_notify_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_mcc_notify_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.be_mcc_obj }
%struct.be_mcc_obj = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.be_mcc_wrb = type { i32, i32 }
%struct.be_cmd_resp_hdr = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@CQE_ADDL_STATUS_MASK = common dso_local global i32 0, align 4
@CQE_ADDL_STATUS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_mcc_notify_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_mcc_notify_wait(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_mcc_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_resp_hdr*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  store %struct.be_mcc_obj* %9, %struct.be_mcc_obj** %5, align 8
  %10 = load %struct.be_mcc_obj*, %struct.be_mcc_obj** %5, align 8
  %11 = getelementptr inbounds %struct.be_mcc_obj, %struct.be_mcc_obj* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.be_mcc_obj*, %struct.be_mcc_obj** %5, align 8
  %15 = getelementptr inbounds %struct.be_mcc_obj, %struct.be_mcc_obj* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @index_dec(i32* %6, i32 %17)
  %19 = load %struct.be_mcc_obj*, %struct.be_mcc_obj** %5, align 8
  %20 = getelementptr inbounds %struct.be_mcc_obj, %struct.be_mcc_obj* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.be_mcc_wrb* @queue_index_node(%struct.TYPE_2__* %20, i32 %21)
  store %struct.be_mcc_wrb* %22, %struct.be_mcc_wrb** %4, align 8
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %24 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %27 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.be_cmd_resp_hdr* @be_decode_resp_hdr(i32 %25, i32 %28)
  store %struct.be_cmd_resp_hdr* %29, %struct.be_cmd_resp_hdr** %7, align 8
  %30 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %31 = call i32 @be_mcc_notify(%struct.be_adapter* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %55

35:                                               ; preds = %1
  %36 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %37 = call i32 @be_mcc_wait_compl(%struct.be_adapter* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %55

43:                                               ; preds = %35
  %44 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %7, align 8
  %48 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CQE_ADDL_STATUS_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @CQE_ADDL_STATUS_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %46, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %43, %42, %34
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @index_dec(i32*, i32) #1

declare dso_local %struct.be_mcc_wrb* @queue_index_node(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.be_cmd_resp_hdr* @be_decode_resp_hdr(i32, i32) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @be_mcc_wait_compl(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
