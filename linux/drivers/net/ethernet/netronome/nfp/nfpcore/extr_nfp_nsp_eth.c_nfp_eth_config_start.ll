; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_config_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_config_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32 }
%struct.nfp_cpp = type { i32 }
%union.eth_table_entry = type { i32 }

@NSP_ETH_TABLE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reading port table failed %d\0A\00", align 1
@NSP_ETH_PORT_LANES_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"trying to set port state on disabled port %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_nsp* @nfp_eth_config_start(%struct.nfp_cpp* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_nsp*, align 8
  %4 = alloca %struct.nfp_cpp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.eth_table_entry*, align 8
  %7 = alloca %struct.nfp_nsp*, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @NSP_ETH_TABLE_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %union.eth_table_entry* @kzalloc(i32 %9, i32 %10)
  store %union.eth_table_entry* %11, %union.eth_table_entry** %6, align 8
  %12 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %13 = icmp ne %union.eth_table_entry* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.nfp_nsp* @ERR_PTR(i32 %16)
  store %struct.nfp_nsp* %17, %struct.nfp_nsp** %3, align 8
  br label %67

18:                                               ; preds = %2
  %19 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %20 = call %struct.nfp_nsp* @nfp_nsp_open(%struct.nfp_cpp* %19)
  store %struct.nfp_nsp* %20, %struct.nfp_nsp** %7, align 8
  %21 = load %struct.nfp_nsp*, %struct.nfp_nsp** %7, align 8
  %22 = call i64 @IS_ERR(%struct.nfp_nsp* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %26 = call i32 @kfree(%union.eth_table_entry* %25)
  %27 = load %struct.nfp_nsp*, %struct.nfp_nsp** %7, align 8
  store %struct.nfp_nsp* %27, %struct.nfp_nsp** %3, align 8
  br label %67

28:                                               ; preds = %18
  %29 = load %struct.nfp_nsp*, %struct.nfp_nsp** %7, align 8
  %30 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %31 = load i32, i32* @NSP_ETH_TABLE_SIZE, align 4
  %32 = call i32 @nfp_nsp_read_eth_table(%struct.nfp_nsp* %29, %union.eth_table_entry* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @nfp_err(%struct.nfp_cpp* %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %59

39:                                               ; preds = %28
  %40 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %union.eth_table_entry, %union.eth_table_entry* %40, i64 %42
  %44 = bitcast %union.eth_table_entry* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NSP_ETH_PORT_LANES_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = load %struct.nfp_cpp*, %struct.nfp_cpp** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @nfp_warn(%struct.nfp_cpp* %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %59

53:                                               ; preds = %39
  %54 = load %struct.nfp_nsp*, %struct.nfp_nsp** %7, align 8
  %55 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @nfp_nsp_config_set_state(%struct.nfp_nsp* %54, %union.eth_table_entry* %55, i32 %56)
  %58 = load %struct.nfp_nsp*, %struct.nfp_nsp** %7, align 8
  store %struct.nfp_nsp* %58, %struct.nfp_nsp** %3, align 8
  br label %67

59:                                               ; preds = %49, %35
  %60 = load %struct.nfp_nsp*, %struct.nfp_nsp** %7, align 8
  %61 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %60)
  %62 = load %union.eth_table_entry*, %union.eth_table_entry** %6, align 8
  %63 = call i32 @kfree(%union.eth_table_entry* %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.nfp_nsp* @ERR_PTR(i32 %65)
  store %struct.nfp_nsp* %66, %struct.nfp_nsp** %3, align 8
  br label %67

67:                                               ; preds = %59, %53, %24, %14
  %68 = load %struct.nfp_nsp*, %struct.nfp_nsp** %3, align 8
  ret %struct.nfp_nsp* %68
}

declare dso_local %union.eth_table_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.nfp_nsp* @ERR_PTR(i32) #1

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(%struct.nfp_cpp*) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @kfree(%union.eth_table_entry*) #1

declare dso_local i32 @nfp_nsp_read_eth_table(%struct.nfp_nsp*, %union.eth_table_entry*, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*, i32) #1

declare dso_local i32 @nfp_nsp_config_set_state(%struct.nfp_nsp*, %union.eth_table_entry*, i32) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
