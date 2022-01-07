; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_configure_arfs_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_configure_arfs_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, %struct.qed_eth_ops* }
%struct.qed_eth_ops = type { i32 (i32, %struct.qede_arfs_fltr_node*, %struct.qed_ntuple_filter_params*)* }
%struct.qed_ntuple_filter_params = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.qede_arfs_fltr_node = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i8*)* }

@QEDE_FILTER_PRINT_MAX_LEN = common dso_local global i32 0, align 4
@NETIF_MSG_RX_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s sw_id[0x%llx]: %s [vf %u queue %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Deleting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_arfs_fltr_node*, i32, i32)* @qede_configure_arfs_fltr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_configure_arfs_fltr(%struct.qede_dev* %0, %struct.qede_arfs_fltr_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qede_dev*, align 8
  %6 = alloca %struct.qede_arfs_fltr_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_eth_ops*, align 8
  %10 = alloca %struct.qed_ntuple_filter_params, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %5, align 8
  store %struct.qede_arfs_fltr_node* %1, %struct.qede_arfs_fltr_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %14 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %13, i32 0, i32 1
  %15 = load %struct.qed_eth_ops*, %struct.qed_eth_ops** %14, align 8
  store %struct.qed_eth_ops* %15, %struct.qed_eth_ops** %9, align 8
  %16 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %17 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %97

21:                                               ; preds = %4
  %22 = call i32 @memset(%struct.qed_ntuple_filter_params* %10, i32 0, i32 32)
  %23 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %24 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %10, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %28 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %10, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %10, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %36 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %10, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %40 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %10, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %46 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1
  %49 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %10, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %21
  %51 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %52 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_2__*, i8*)*, i32 (%struct.TYPE_2__*, i8*)** %53, align 8
  %55 = icmp ne i32 (%struct.TYPE_2__*, i8*)* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load i32, i32* @QEDE_FILTER_PRINT_MAX_LEN, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %11, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %12, align 8
  %61 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %62 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_2__*, i8*)*, i32 (%struct.TYPE_2__*, i8*)** %63, align 8
  %65 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %66 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %65, i32 0, i32 4
  %67 = call i32 %64(%struct.TYPE_2__* %66, i8* %60)
  %68 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %69 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %74 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %75 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %78 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @DP_VERBOSE(%struct.qede_dev* %68, i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %73, i32 %76, i8* %60, i64 %79, i32 %80)
  %82 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %82)
  br label %83

83:                                               ; preds = %56, %50
  %84 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %85 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %88 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.qed_eth_ops*, %struct.qed_eth_ops** %9, align 8
  %90 = getelementptr inbounds %struct.qed_eth_ops, %struct.qed_eth_ops* %89, i32 0, i32 0
  %91 = load i32 (i32, %struct.qede_arfs_fltr_node*, %struct.qed_ntuple_filter_params*)*, i32 (i32, %struct.qede_arfs_fltr_node*, %struct.qed_ntuple_filter_params*)** %90, align 8
  %92 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %93 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %96 = call i32 %91(i32 %94, %struct.qede_arfs_fltr_node* %95, %struct.qed_ntuple_filter_params* %10)
  br label %97

97:                                               ; preds = %83, %20
  ret void
}

declare dso_local i32 @memset(%struct.qed_ntuple_filter_params*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i8*, i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
