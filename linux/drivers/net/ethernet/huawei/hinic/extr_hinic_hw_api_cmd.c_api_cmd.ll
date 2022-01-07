; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i64, i32, i32, %struct.hinic_api_cmd_cell_ctxt* }
%struct.hinic_api_cmd_cell_ctxt = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_api_cmd_chain*, i32, i32*, i32)* @api_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_cmd(%struct.hinic_api_cmd_chain* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_api_cmd_chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hinic_api_cmd_cell_ctxt*, align 8
  %11 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %13 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %12, i32 0, i32 1
  %14 = call i32 @down(i32* %13)
  %15 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %16 = call i64 @chain_busy(%struct.hinic_api_cmd_chain* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %20 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %19, i32 0, i32 1
  %21 = call i32 @up(i32* %20)
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %4
  %25 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @prepare_cell(%struct.hinic_api_cmd_chain* %25, i32 %26, i32* %27, i32 %28)
  %30 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %31 = call i32 @cmd_chain_prod_idx_inc(%struct.hinic_api_cmd_chain* %30)
  %32 = call i32 (...) @wmb()
  %33 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %34 = call i32 @set_prod_idx(%struct.hinic_api_cmd_chain* %33)
  %35 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %36 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %35, i32 0, i32 3
  %37 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %36, align 8
  %38 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %39 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %37, i64 %40
  store %struct.hinic_api_cmd_cell_ctxt* %41, %struct.hinic_api_cmd_cell_ctxt** %10, align 8
  %42 = load %struct.hinic_api_cmd_cell_ctxt*, %struct.hinic_api_cmd_cell_ctxt** %10, align 8
  %43 = getelementptr inbounds %struct.hinic_api_cmd_cell_ctxt, %struct.hinic_api_cmd_cell_ctxt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %46 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %48 = call i32 @wait_for_api_cmd_completion(%struct.hinic_api_cmd_chain* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %6, align 8
  %50 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %49, i32 0, i32 1
  %51 = call i32 @up(i32* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %24, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @chain_busy(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @prepare_cell(%struct.hinic_api_cmd_chain*, i32, i32*, i32) #1

declare dso_local i32 @cmd_chain_prod_idx_inc(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_prod_idx(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @wait_for_api_cmd_completion(%struct.hinic_api_cmd_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
