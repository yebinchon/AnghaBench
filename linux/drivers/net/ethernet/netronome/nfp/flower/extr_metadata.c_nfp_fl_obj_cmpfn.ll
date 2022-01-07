; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_fl_obj_cmpfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_fl_obj_cmpfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { %struct.nfp_fl_flow_table_cmp_arg* }
%struct.nfp_fl_flow_table_cmp_arg = type { i64, i64 }
%struct.nfp_fl_payload = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @nfp_fl_obj_cmpfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_obj_cmpfn(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable_compare_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfp_fl_flow_table_cmp_arg*, align 8
  %7 = alloca %struct.nfp_fl_payload*, align 8
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %4, align 8
  %9 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %8, i32 0, i32 0
  %10 = load %struct.nfp_fl_flow_table_cmp_arg*, %struct.nfp_fl_flow_table_cmp_arg** %9, align 8
  store %struct.nfp_fl_flow_table_cmp_arg* %10, %struct.nfp_fl_flow_table_cmp_arg** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.nfp_fl_payload*
  store %struct.nfp_fl_payload* %12, %struct.nfp_fl_payload** %7, align 8
  %13 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %14 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.nfp_fl_flow_table_cmp_arg*, %struct.nfp_fl_flow_table_cmp_arg** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, %struct.nfp_fl_flow_table_cmp_arg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %22 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nfp_fl_flow_table_cmp_arg*, %struct.nfp_fl_flow_table_cmp_arg** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_fl_flow_table_cmp_arg, %struct.nfp_fl_flow_table_cmp_arg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
